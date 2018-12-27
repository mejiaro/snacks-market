class ActivationMailer < ApplicationMailer
  default from: 'no-reply@snacks.io'
  
  def send_email(user)
    @user = user
    mail(to: "#{@user.email}", subject: "Your Snacks.io account")
  end
end
