class Lesson < ActiveRecord::Base
  validates :title, presence: true
  validates :lesson_number, presence: true
  validates :content, presence: true

  def next
    Lesson.find_by lesson_number: lesson_number + 1
  end
end
