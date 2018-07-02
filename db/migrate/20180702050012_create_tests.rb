class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|

      t.string :subject
      t.string :grade_level
      t.integer :teacher_id

      t.timestamps
    end
  end
end
