# frozen_string_literal: true

module Tasks
  class ReportPresenter < PresenterBase
    def initialize(report)
      @report = report
    end

    def generate_response
      Tulo::Tasks::V1::ReportResponse.new(
        report: Tulo::Tasks::V1::Report.new(
          id: proto_int64(@report.id),
          document_incoming_id: proto_int64(@report.document_incoming_id),
          employee_id: proto_int64(@report.employee_id),
          role_name: proto_string(@report.role_name),
          message: proto_string(@report.message),
          created_at: proto_string(@report.created_at),
          updated_at:proto_string(@report.updated_at)
        )
      )
    end
  end
end