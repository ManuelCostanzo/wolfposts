class UserMailer < ApplicationMailer
  
  def send_welcome_email(user)
    @user = user
    mail(to: @user.email, subject: "Welcome!")
  end
  
end