class UserMailer < ActionMailer::Base
  default from: "jazzy@jazzrnb.com"

  def signup_confirmation(user)
    @user = user

    mail to: user.email, subject: "Signup Confirmation"
  end
end
