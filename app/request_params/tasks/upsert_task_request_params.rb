# frozen_string_literal: true

module Tasks
  class UpsertTaskRequestParams < TuloCommon::RequestParamsBase
    attribute :id, :integer
    attribute :document_incoming_id, :integer
    attribute :department_id, :integer
    attribute :employee_id, :integer
    attribute :start_date, :string
    attribute :end_date, :string

    def initialize(params)
      super(
        id: params.task.id&.value,
        document_incoming_id: params.task.document_incoming_id&.value,
        department_id: params.task.department_id&.value,
        employee_id: params.task.employee_id&.value,
        start_date: params.task.start_date&.value,
        end_date: params.task.end_date&.value,
      )
    end
  end
end
