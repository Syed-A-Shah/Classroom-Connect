def sign_up
  visit "/"
  click_link "Sign Up"
  fill_in "Email", with: "testcanneverharm@gmail.com"
  fill_in "Password", with: "password"
  fill_in "Password confirmation", with: "password"
  click_button "Submit"
end
