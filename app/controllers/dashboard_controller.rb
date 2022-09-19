class DashboardController < ApplicationController
  def index
    data = Applicant.includes(:job).group('status').count
    @labels ||= data.keys.map(&:humanize)
    @series ||= data.values
  end
end
