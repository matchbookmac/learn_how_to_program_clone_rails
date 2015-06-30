require 'rails_helper'

describe 'destroy lesson path' do
  it 'will destroy the lesson' do
    section = Section.create(title: "Rails")
    lesson = Lesson.create(title: 'lesson', content: 'stuff', lesson_number: 1, section_id: section.id)
    visit lesson_path(lesson)
    click_on 'Destroy Lesson'
    expect(page).to have_content('lessons')
  end
end
