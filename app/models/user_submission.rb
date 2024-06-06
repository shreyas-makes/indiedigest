class UserSubmission < ApplicationRecord
  PLAN = ['free','pro']

  validates_presence_of :first_name, :last_name, :email, :website, :job_role, :text
  validates :plan, inclusion: { in: PLAN }

end
