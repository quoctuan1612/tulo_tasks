# frozen_string_literal: true

module Tasks
  class GetReportByDocumentIncomingIdService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      report = Report.where(document_incoming_id: @request_params.id)

      @result = report
    end
  end
end
