class Lesson < ActiveRecord::Base
  validates :title, presence: true
  validates :lesson_number, presence: true, uniqueness: true
  validates :content, presence: true
  belongs_to :section

  def next
    Lesson.find_by lesson_number: lesson_number + 1
  end

  def previous
    Lesson.find_by lesson_number: lesson_number - 1
  end
end
