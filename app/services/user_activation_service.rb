class UserActivationService

  def send_email(user_id)
    ActivationMailerJob.perform(user_id) 
  end
end