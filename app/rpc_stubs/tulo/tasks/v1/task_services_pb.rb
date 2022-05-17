# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: tulo/tasks/v1/task.proto for package 'tulo.tasks.v1'

require 'grpc'
require 'tulo/tasks/v1/task_pb'

module Tulo
  module Tasks
    module V1
      module TaskService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'tulo.tasks.v1.TaskService'

          rpc :GetTasks, ::Google::Protobuf::Empty, ::Tulo::Tasks::V1::TasksResponse
          rpc :UpsertTask, ::Tulo::Tasks::V1::UpsertTaskRequest, ::Tulo::Tasks::V1::UpsertTaskResponse
          rpc :GetTaskById, ::Tulo::Tasks::V1::TaskIdRequest, ::Tulo::Tasks::V1::TaskResponse
          rpc :DeleteTaskById, ::Tulo::Tasks::V1::TaskIdRequest, ::Tulo::Common::V1::CommonDeleteResponse
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
