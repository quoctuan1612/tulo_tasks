# frozen_string_literal: true

module Tasks
  class GetReportsService
    include ActiveModel::Model

    attr_reader :results

    def initialize(auth_header)
      @auth_header = auth_header
    end

    def run!
      reports = Report.all

      @results = reports
    end
  end
end