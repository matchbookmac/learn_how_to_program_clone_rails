require 'rails_helper'

describe 'destroy lesson path' do
  it 'will destroy the lesson' do
    lesson = Lesson.create(title: 's', content:'s', lesson_number: 1)
    visit lesson_path(lesson)
    click_on 'Destroy Lesson'
    expect(page).to have_content('lessons')
  end
end
