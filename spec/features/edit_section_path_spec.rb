require 'rails_helper'

describe "The Edit section path" do
  it "edits a section" do
    section = Section.create(title: "Rails")
    visit section_path(section)
    click_on "Edit #{section.title}"
    fill_in 'Title', with: "Railss"
    click_on "Update Section"
    expect(page).to have_content "updated"
  end

  it "gives error when no content is entered" do
    section = Section.create(title: "Rails")
    visit section_path(section)
    click_on "Edit #{section.title}"
    fill_in 'Title', with: ""
    click_on "Update Section"
    expect(page).to have_content "errors"

  end
end
