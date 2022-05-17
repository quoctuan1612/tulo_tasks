# frozen_string_literal: true

module Tasks
  class GetTasksService
    include ActiveModel::Model

    attr_reader :results

    def initialize(auth_header)
      @auth_header = auth_header
    end

    def run!
      tasks = Task.all

      @results = tasks
    end
  end
end