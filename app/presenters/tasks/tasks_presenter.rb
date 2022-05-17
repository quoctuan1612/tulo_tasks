# frozen_string_literal: true

module Tasks
  class TasksPresenter < PresenterBase
    def initialize(tasks)
      @tasks = tasks
    end

    def generate_response
      Tulo::Tasks::V1::TasksResponse.new(
        tasks: @tasks.each_with_object([]) do |task, arr|
          arr << Tulo::Tasks::V1::Task.new(
            id: proto_int64(task.id),
            document_incoming_id: proto_int64(task.document_incoming_id),
            department_id: proto_int64(task.department_id),
            employee_id: proto_int64(task.employee_id),
            start_date: proto_string(task.start_date),
            end_date: proto_string(task.end_date),
            is_approved_by_staff: proto_bool(task.is_approved_by_staff),
            is_approved_by_leader: proto_bool(task.is_approved_by_leader),
            is_approved_by_manger: proto_bool(task.is_approved_by_manger),
            created_at: proto_string(task.created_at),
            updated_at:proto_string(task.updated_at)
          )
        end
      )
    end
  end
end