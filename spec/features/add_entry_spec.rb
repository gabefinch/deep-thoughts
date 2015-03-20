require 'rails_helper'

describe "adding entry" do
  it "adds entry" do
    visit new_entry_path()
    fill_in 'Title', with: 'Donuts'
    fill_in 'Body', with: 'I love donuts'
    click_button 'Store'
    expect(page).to have_content 'Donuts'
  end
end
describe "add button" do
  it "loads add form" do
    visit entries_path()
    click_on 'Add'
    expect(page).to have_content 'Add a thought'
  end
end
