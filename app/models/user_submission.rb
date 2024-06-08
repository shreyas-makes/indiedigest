class UserSubmission < ApplicationRecord
  PLAN = ['free','pro']

  validates_presence_of :first_name, :last_name, :email, :website, :job_role, :text
  validates :plan, inclusion: { in: PLAN }

  after_update :send_mailer

  def send_mailer
    puts "sending mailer.."
    UserSubmission.reject(self.email).deliver if status == 'Reject'
    UserSubmission.accept(self.email).deliver if status == 'Accept'
  end
  handle_asynchronously :send_mailer

end
