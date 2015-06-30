require 'rails_helper'

describe "The adding lesson path" do
  it "adds a lesson" do
    visit lessons_path
    click_on "Add Lesson"
    fill_in "Title", with: "Lesson"
    fill_in "Content", with: "Stuff"
    fill_in "Lesson number", with: "1"
    click_on "Create Lesson"
    expect(page).to have_content "lessons"
  end

  it "will give a(n) error(s) when a title is not entered" do
    visit new_lesson_path
    click_on "Create Lesson"
    expect(page).to have_content 'errors'
  end
end

describe "The viewing lesson path" do
  it "views a lesson" do
    visit lessons_path
  end
end
