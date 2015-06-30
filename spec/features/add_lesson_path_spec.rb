require 'rails_helper'

describe "The adding lesson path" do
  it "adds a lesson to a section" do
    Section.create(title: "Rails")
    visit root_path
    click_on "Add Lesson"
    fill_in "Title", with: "Lesson"
    fill_in "Content", with: "Stuff"
    fill_in "Lesson number", with: "1"
    select "Rails", from: "Section"
    click_on "Create Lesson"
    expect(page).to have_content "added"
  end

  it "will give a(n) error(s) when a title is not entered" do
    Section.create(title: "Rails")
    visit new_lesson_path
    click_on "Create Lesson"
    expect(page).to have_content 'errors'
  end
end
