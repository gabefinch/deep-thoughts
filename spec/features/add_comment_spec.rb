require 'rails_helper'

describe "adding comment" do
  it "adds comment" do
    test_entry = Entry.create(title: "Muffins", body: "I love muffins.")
    visit entry_path(test_entry)
    click_on 'Add comment'
    fill_in 'Body', with: 'I prefer donuts'
    click_on 'Store comment'
    visit entry_path(test_entry)
    expect(page).to have_content 'I prefer donuts'
  end
end
