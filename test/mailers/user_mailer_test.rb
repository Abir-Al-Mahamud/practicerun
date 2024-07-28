require "test_helper"

class UserMailerTest < ActionMailer::TestCase
    def welcome_email(user)
      @user = user
      mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end
end
