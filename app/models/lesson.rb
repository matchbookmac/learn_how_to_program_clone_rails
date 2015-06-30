class Lesson < ActiveRecord::Base
  validates :title, presence: true
  validates :lesson_number, presence: true
  validates :content, presence: true
end
