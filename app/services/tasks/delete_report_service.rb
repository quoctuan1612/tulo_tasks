# frozen_string_literal: true

module Tasks
  class DeleteReportService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      report = Report.find_by(id: @request_params.id)

      raise TuloCommon::RequestParamsBase::InvalidRequestParams, 
        OpenStruct.new(messages: { id: [I18n.t('errors.messages.report.record_not_found', id: @request_params.id)] }) if report.blank?
        
      report.destroy

      @result = true
    end
  end
end
