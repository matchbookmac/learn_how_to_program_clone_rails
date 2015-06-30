require 'rails_helper'

describe "The lesson navigation path" do
  it "can go to previous lesson" do
    section = Section.create(title: "Rails")
    lesson = Lesson.create(title: 'lesson', content: 'things', lesson_number: 1, section_id: section.id)
    lesson2 = Lesson.create(title: 'lesson', content: 'other stuff', lesson_number: 2, section_id: section.id)
    visit lesson_path(lesson2)
    find("#previous").click
    expect(page).to have_content "things"
  end

  it "can go to previous lesson" do
    section = Section.create(title: "Rails")
    lesson = Lesson.create(title: 'lesson', content: 'things', lesson_number: 1, section_id: section.id)
    lesson2 = Lesson.create(title: 'lesson', content: 'other stuff', lesson_number: 2, section_id: section.id)
    visit lesson_path(lesson)
    find("#next").click
    expect(page).to have_content "other stuff"
  end
end
