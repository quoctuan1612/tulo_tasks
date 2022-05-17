# frozen_string_literal: true

module Tasks
  class ReportsController < ::Gruf::Controllers::Base
    bind ::Tulo::Tasks::V1::ReportService::Service

    def get_reports
      service = Tasks::GetReportsService.new(nil)
      service.run!
      presenter = Tasks::ReportsPresenter.new(service.results)
      presenter.generate_response
    end

    def upsert_report
      request_params = Tasks::UpsertReportRequestParams.new(request.message)
      request_params.validate!
      service = Tasks::UpsertReportService.new(request_params, nil)
      service.run!
      presenter = Tasks::UpsertReportPresenter.new(service.result)
      presenter.generate_response
    end

    def get_report_by_id
      request_params = Tasks::ReportIdRequestParams.new(request.message)
      request_params.validate!
      service = Tasks::GetReportByIdService.new(request_params, nil)
      service.run!
      presenter = Tasks::ReportPresenter.new(service.result)
      presenter.generate_response
    end

    def get_report_by_document_incoming_id
      request_params = Tasks::DocumentIncomingIdRequestParams.new(request.message)
      request_params.validate!
      service = Tasks::GetReportByDocumentIncomingIdService.new(request_params, nil)
      service.run!
      presenter = Tasks::ReportsPresenter.new(service.result)
      presenter.generate_response
    end

    def delete_report_by_id
      request_params = Tasks::ReportIdRequestParams.new(request.message)
      request_params.validate!
      service = Tasks::DeleteReportService.new(request_params, nil)
      service.run!
      presenter = Tasks::DeleteReportPresenter.new(service.result)
      presenter.generate_response
    end
  end
end