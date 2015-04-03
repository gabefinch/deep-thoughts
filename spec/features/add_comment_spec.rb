require 'rails_helper'

describe "adding comment" do
  it "adds comment" do
    user = FactoryGirl.create(:user)
    test_entry = FactoryGirl.create(:entry)
    test_entry.user = user
    visit '/'
    click_on 'Login'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Login'
    visit entry_path(test_entry)
    save_and_open_page
    click_on 'Add comment'
    fill_in 'Body', with: 'I prefer donuts'
    click_on 'Store comment'
    visit entry_path(test_entry)
    expect(page).to have_content 'I prefer donuts'
  end
end
