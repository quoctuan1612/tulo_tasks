# frozen_string_literal: true

module Tasks
  class UpsertTaskService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      task = Task.find_or_initialize_by(document_incoming_id: @request_params.document_incoming_id)
      
      task.document_incoming_id = @request_params.document_incoming_id
      task.department_id = @request_params.department_id
      task.employee_id = @request_params.employee_id
      task.start_date = @request_params.start_date
      task.end_date = task.start_date + get_end_date(@request_params.document_incoming_id)

      task.save
      @result = task
    end

    private

      def get_end_date document_incoming_id
        document_incoming = TuloCommon::GrpcService.call_grpc(
          nil,
          Settings.documents.host,
          Tulo::Documents::V1::DocumentIncomingService,
          :GetDocumentIncomingById,
          Tulo::Documents::V1::DocumentIncomingIdRequest.new(
            id: Google::Protobuf::Int64Value.new(value: document_incoming_id)
          ).to_h
        ).message

        response = TuloCommon::GrpcService.call_grpc(
          nil,
          Settings.documents.host,
          Tulo::Documents::V1::DocumentProcessingTimeService,
          :GetProcessingTime,
          Tulo::Documents::V1::RequestParams.new(
            document_type_id: Google::Protobuf::Int64Value.new(value: document_incoming.document_incoming.document_type_id&.value),
            document_destination_id: Google::Protobuf::Int64Value.new(value: document_incoming.document_incoming.document_destination_id&.value)
          ).to_h
        ).message

        response.processing_time&.value.days
      end
  end
end