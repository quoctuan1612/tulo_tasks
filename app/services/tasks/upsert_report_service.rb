# frozen_string_literal: true

module Tasks
  class UpsertReportService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      report = Report.find_or_initialize_by(id: @request_params.id)
      
      report.document_incoming_id = @request_params.document_incoming_id
      report.employee_id = @request_params.employee_id
      report.role_name = @request_params.role_name
      report.message = @request_params.message

      report.save
      @result = report
    end
  end
end