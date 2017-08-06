require 'rails_helper'
require 'support/factory_girl'

feature 'Login' do
  context 'when email and password are valid' do
    scenario 'logs user in' do
      user = create(:user)
      visit new_user_session_path
      within 'form#new_user' do
        fill_in 'email', with: user.email
        fill_in 'password', with: user.password
        click_button 'Log in'
      end
      expect(page).not_to have_content 'Enter Email'
      expect(page).not_to have_content 'Password'
      expect(page).not_to have_button 'Log in'
      expect(page).to have_text 'Signed in successfully'
    end
  end

  context 'when email or password are invalid' do
    scenario "doesn't log user in" do
      user = create(:user)
      visit new_user_session_path
      within 'form#new_user' do
        fill_in 'email', with: user.email
        fill_in 'password', with: (user.password + '1')
        click_button 'Log in'
      end
      expect(page).to have_content 'Invalid Email or password'
      expect(page).to have_content 'Enter Email'
      expect(page).to have_content 'Password'
      expect(page).to have_button 'Log in'
      expect(page).not_to have_text 'Signed in successfully'
    end
  end
end
