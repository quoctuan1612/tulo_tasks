# frozen_string_literal: true

module Tasks
  class ReportsPresenter < PresenterBase
    def initialize(reports)
      @reports = reports
    end

    def generate_response
      Tulo::Tasks::V1::ReportsResponse.new(
        reports: @reports.each_with_object([]) do |report, arr|
          arr << Tulo::Tasks::V1::Report.new(
            id: proto_int64(report.id),
            document_incoming_id: proto_int64(report.document_incoming_id),
            employee_id: proto_int64(report.employee_id),
            role_name: proto_string(report.role_name),
            message: proto_string(report.message),
            created_at: proto_string(report.created_at),
            updated_at:proto_string(report.updated_at)
          )
        end
      )
    end
  end
end