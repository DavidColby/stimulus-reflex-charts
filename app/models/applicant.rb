class Applicant < ApplicationRecord
  belongs_to :job

  enum status: {
    active: 'active',
    inactive: 'inactive'
  }
end
