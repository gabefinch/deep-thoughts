require 'rails_helper'

describe "deleting entry" do
  it "deletes entry" do
    test_entry = Entry.create(title: "Muffins", body: "I love muffins.")
    visit entries_path()
    click_on 'Delete'
    expect(page).to have_no_content 'Muffins'
  end
end
