# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: tulo/common/v1/user.proto

require 'google/protobuf'

require 'google/protobuf/empty_pb'
require 'google/protobuf/wrappers_pb'
require 'tulo/common/v1/response_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("tulo/common/v1/user.proto", :syntax => :proto3) do
    add_message "tulo.common.v1.UsersResponse" do
      repeated :users, :message, 1, "tulo.common.v1.User"
    end
    add_message "tulo.common.v1.UpsertUserRequest" do
      optional :user, :message, 1, "tulo.common.v1.User"
    end
    add_message "tulo.common.v1.UpsertUserResponse" do
      optional :user, :message, 1, "tulo.common.v1.User"
    end
    add_message "tulo.common.v1.LoginInfoRequest" do
      optional :user_info, :message, 1, "google.protobuf.StringValue"
    end
    add_message "tulo.common.v1.UserResponse" do
      optional :user, :message, 1, "tulo.common.v1.User"
    end
    add_message "tulo.common.v1.UserIdRequest" do
      optional :id, :message, 1, "google.protobuf.Int64Value"
    end
    add_message "tulo.common.v1.UserInfoResponse" do
      optional :employee_id, :message, 1, "google.protobuf.Int64Value"
      optional :user_name, :message, 2, "google.protobuf.StringValue"
      optional :encrypted_password, :message, 3, "google.protobuf.StringValue"
      optional :employee_name, :message, 4, "google.protobuf.StringValue"
      optional :email, :message, 5, "google.protobuf.StringValue"
      optional :phone, :message, 6, "google.protobuf.StringValue"
      optional :role_id, :message, 7, "google.protobuf.StringValue"
      optional :department_id, :message, 8, "google.protobuf.Int64Value"
      repeated :right_to_do, :message, 9, "tulo.common.v1.RightToDo"
    end
    add_message "tulo.common.v1.User" do
      optional :id, :message, 1, "google.protobuf.Int64Value"
      optional :employee_id, :message, 2, "google.protobuf.Int64Value"
      optional :user_name, :message, 3, "google.protobuf.StringValue"
      optional :encrypted_password, :message, 4, "google.protobuf.StringValue"
      optional :created_at, :message, 5, "google.protobuf.StringValue"
      optional :updated_at, :message, 6, "google.protobuf.StringValue"
    end
    add_message "tulo.common.v1.RightToDo" do
      optional :permission_name, :message, 1, "google.protobuf.StringValue"
      optional :permission, :message, 2, "google.protobuf.StringValue"
      optional :is_active, :message, 3, "google.protobuf.BoolValue"
    end
  end
end

module Tulo
  module Common
    module V1
      UsersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tulo.common.v1.UsersResponse").msgclass
      UpsertUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tulo.common.v1.UpsertUserRequest").msgclass
      UpsertUserResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tulo.common.v1.UpsertUserResponse").msgclass
      LoginInfoRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tulo.common.v1.LoginInfoRequest").msgclass
      UserResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tulo.common.v1.UserResponse").msgclass
      UserIdRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tulo.common.v1.UserIdRequest").msgclass
      UserInfoResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tulo.common.v1.UserInfoResponse").msgclass
      User = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tulo.common.v1.User").msgclass
      RightToDo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tulo.common.v1.RightToDo").msgclass
    end
  end
end
