require 'rails_helper'

describe "showing entry" do
  it "shows entry" do
    Entry.create(title: "Muffins", body: "I love muffins.")
    visit entries_path
    click_on 'Muffins'
    expect(page).to have_content 'I love muffins.'
  end
end
