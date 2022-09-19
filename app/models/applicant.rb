class Applicant < ApplicationRecord
  belongs_to :job

  scope :for_job, ->(job_id) { job_id.present? ? where(job_id: job_id) : all }
end
