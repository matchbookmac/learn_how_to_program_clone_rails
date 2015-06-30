class CreateSections < ActiveRecord::Migration
  def change
    add_column :lessons, :section_id, :integer
    create_table :sections do |t|
      t.column :title, :string
      t.timestamps
    end
  end
end
