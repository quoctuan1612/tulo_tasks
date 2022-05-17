# frozen_string_literal: true

module Tasks
  class TasksController < ::Gruf::Controllers::Base
    bind ::Tulo::Tasks::V1::TaskService::Service

    def get_tasks
      service = Tasks::GetTasksService.new(nil)
      service.run!
      presenter = Tasks::TasksPresenter.new(service.results)
      presenter.generate_response
    end

    def upsert_task
      request_params = Tasks::UpsertTaskRequestParams.new(request.message)
      request_params.validate!
      service = Tasks::UpsertTaskService.new(request_params, nil)
      service.run!
      presenter = Tasks::UpsertTaskPresenter.new(service.result)
      presenter.generate_response
    end

    def get_task_by_id
      request_params = Tasks::TaskIdRequestParams.new(request.message)
      request_params.validate!
      service = Tasks::GetTaskByIdService.new(request_params, nil)
      service.run!
      presenter = Tasks::TaskPresenter.new(service.result)
      presenter.generate_response
    end

    def delete_task_by_id
      request_params = Tasks::TaskIdRequestParams.new(request.message)
      request_params.validate!
      service = Tasks::DeleteTaskService.new(request_params, nil)
      service.run!
      presenter = Tasks::DeleteTaskPresenter.new(service.result)
      presenter.generate_response
    end
  end
end