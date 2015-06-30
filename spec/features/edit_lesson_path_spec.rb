require 'rails_helper'

describe "The Edit lesson path" do
  it "edits a lesson" do
    section = Section.create(title: "Rails")
    lesson = Lesson.create(title: 'lesson', content: 'stuff', lesson_number: 1, section_id: section.id)
    visit lesson_path(lesson)
    click_on "Edit #{lesson.title}"
    fill_in 'Content', with: "more stuff"
    click_on "Update Lesson"
    expect(page).to have_content "Successfully"
  end

  it "gives error when no content is entered" do
    section = Section.create(title: "Rails")
    lesson = Lesson.create(title: 'lesson', content: 'stuff', lesson_number: 1, section_id: section.id)
    visit lesson_path(lesson)
    click_on "Edit #{lesson.title}"
    fill_in 'Content', with: ''
    click_on "Update Lesson"
    expect(page).to have_content "errors"

  end
end
