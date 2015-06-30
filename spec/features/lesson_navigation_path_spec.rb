require 'rails_helper'

describe "The lesson navigation path" do
  it "can go to previous lesson" do
    lesson = Lesson.create(title: 'lesson', content: 'things', lesson_number: 1)
    lesson2 = Lesson.create(title: 'lesson', content: 'other stuff', lesson_number: 2)
    visit lesson_path(lesson2)
    find("#previous").click
    expect(page).to have_content "things"
  end

  it "can go to previous lesson" do
    lesson = Lesson.create(title: 'lesson', content: 'things', lesson_number: 1)
    lesson2 = Lesson.create(title: 'lesson', content: 'other stuff', lesson_number: 2)
    visit lesson_path(lesson)
    find("#next").click
    expect(page).to have_content "other stuff"
  end
end
