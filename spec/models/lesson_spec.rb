require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :title }
  it { should validate_presence_of :section_id }
  it { should belong_to :section }
  it { should validate_uniqueness_of :lesson_number }

  context '#next' do
    it "returns the lesson with the next highest number" do
      section = Section.create(title: "Rails")
      current_lesson = Lesson.create(title: 'lesson1', content: "stuff", lesson_number: 1, section_id: section.id)
      next_lesson = Lesson.create(title: 'lesson2', content: "stuff", lesson_number: 2, section_id: section.id)
      expect(current_lesson.next).to eq next_lesson
    end
  end

  context '#previous' do
    it "returns the lesson with the next lowest number" do
      section = Section.create(title: "Rails")
      previous_lesson = Lesson.create(title: 'lesson1', content: "stuff", lesson_number: 1, section_id: section.id)
      current_lesson = Lesson.create(title: 'lesson2', content: "stuff", lesson_number: 2, section_id: section.id)
      expect(current_lesson.previous).to eq previous_lesson
    end
  end
end
