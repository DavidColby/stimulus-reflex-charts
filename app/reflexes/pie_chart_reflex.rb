class PieChartReflex < ApplicationReflex
  def update
    data = retrieve_data(params[:job_id])
    @labels, @series = [data.keys.map(&:humanize).to_json, data.values.to_json]
  end

  def retrieve_data(job_id)
    Applicant.includes(:job).for_job(job_id).group('status').count
  end
end
