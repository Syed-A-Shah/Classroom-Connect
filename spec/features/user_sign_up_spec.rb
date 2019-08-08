require 'rails_helper'


RSpec.feature "User", type: :feature do
  scenario 'can sign up successfully' do
    visit "/"
    click_link "Sign Up"
    fill_in "Email", with: "testcanneverharm@gmail.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
    expect(page).to have_current_path('/')
    expect(page).to have_content('Classroom Connect')
  end
end
