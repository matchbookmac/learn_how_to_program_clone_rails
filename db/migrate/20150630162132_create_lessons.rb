class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.column :title, :string
      t.column :lesson_number, :integer
      t.column :content, :string

      t.timestamps
    end
  end
end
