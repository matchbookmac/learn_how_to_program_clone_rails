require 'rails_helper'

describe "The adding section path" do
  it "adds a section" do
    visit root_path
    click_on "Add Section"
    fill_in "Title", with: "Rails"
    click_on "Create Section"
    expect(page).to have_content "added"
  end

  it "will give a(n) error(s) when a title is not entered" do
    visit new_section_path
    click_on "Create Section"
    expect(page).to have_content 'errors'
  end
end
