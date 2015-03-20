require 'rails_helper'

describe "editing entry" do
  it "edits entry title" do
    test_entry = Entry.create(title: "Muffins", body: "I love muffins.")
    visit edit_entry_path(test_entry)
    fill_in 'Title', with: 'Donuts'
    click_button 'Store'
    expect(page).to have_content 'Donuts'
  end
  it "edits entry body" do
    test_entry = Entry.create(title: "Muffins", body: "I love muffins.")
    visit edit_entry_path(test_entry)
    fill_in 'Body', with: 'I love donuts.'
    click_button 'Store'
    visit entry_path(test_entry)
    expect(page).to have_content('I love donuts.')
  end
end
