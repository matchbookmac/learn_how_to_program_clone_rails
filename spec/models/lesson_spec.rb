require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :title }

  context '#next' do
    it "returns the lesson with the next highest number" do
      current_lesson = Lesson.create(title: 'lesson1', content: "stuff", lesson_number: 1)
      next_lesson = Lesson.create(title: 'lesson2', content: "stuff", lesson_number: 2)
      expect(current_lesson.next).to eq next_lesson
    end
  end

  context '#previous' do
    it "returns the lesson with the next lowest number" do
      previous_lesson = Lesson.create(title: 'lesson1', content: "stuff", lesson_number: 1)
      current_lesson = Lesson.create(title: 'lesson2', content: "stuff", lesson_number: 2)
      expect(current_lesson.previous).to eq previous_lesson
    end
  end
end
