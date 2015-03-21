require 'rails_helper'

describe "editing comment" do
  it "edits comment" do
    test_entry = Entry.create(title: "Muffins", body: "I love muffins.")
    test_comment = Comment.create(body: "Me too!", entry_id: test_entry.id)
    visit entry_path(test_entry)
    click_on 'Modify comment'
    fill_in 'Body', with: 'I prefer donuts'
    click_on 'Store comment'
    visit entry_path(test_entry)
    expect(page).to have_content 'I prefer donuts'
  end
end
