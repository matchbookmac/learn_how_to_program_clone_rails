class Lesson < ActiveRecord::Base
  validates :title, presence: true
  validates :section_id, presence: true
  validates :lesson_number, presence: true, uniqueness: true
  validates :content, presence: true
  belongs_to :section

  default_scope { order(section_id: :desc, lesson_number: :asc)}


  def next
    Lesson.find_by lesson_number: lesson_number + 1
  end

  def previous
    Lesson.find_by lesson_number: lesson_number - 1
  end
end
