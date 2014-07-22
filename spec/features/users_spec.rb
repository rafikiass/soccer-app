require 'rails_helper'

describe "users", :type => :feature do


it "will make sure a new user can sign up" do
  visit new_user_registration_path
  fill_in('user_email', :with => "example@example.com")
  fill_in("user_password", :with => "password")
  fill_in("user_password_confirmation", :with => "password")
  
  click_on("sign-up")

  user = User.last

  expect(user.email).to eq("example@example.com")
  
end



end