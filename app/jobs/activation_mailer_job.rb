class ActivationMailerJob < ActiveJob::Base 
  queue_as :default

  def perform(user_id)
    user = User.find(user_id)
    ActivationMailer.send_email(user).deliver_now
  end 
end