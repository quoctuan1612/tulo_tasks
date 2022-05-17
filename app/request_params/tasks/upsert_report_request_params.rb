# frozen_string_literal: true

module Tasks
  class UpsertReportRequestParams < TuloCommon::RequestParamsBase
    attribute :id, :integer
    attribute :document_incoming_id, :integer
    attribute :employee_id, :integer
    attribute :role_name, :string
    attribute :message, :string

    def initialize(params)
      super(
        id: params.report.id&.value,
        document_incoming_id: params.report.document_incoming_id&.value,
        employee_id: params.report.employee_id&.value,
        role_name: params.report.role_name&.value,
        message: params.report.message&.value,
      )
    end
  end
end
