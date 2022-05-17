# frozen_string_literal: true

module Tasks
  class DeleteTaskService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      task = Task.find_by(id: @request_params.id)

      raise TuloCommon::RequestParamsBase::InvalidRequestParams, 
        OpenStruct.new(messages: { id: [I18n.t('errors.messages.task.record_not_found', id: @request_params.id)] }) if task.blank?
        
      task.destroy

      @result = true
    end
  end
end
