class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|

      t.string :subject
      t.string :grade_level
      t.string :teacher_name
      t.integer :teacher_id
      t.string :question
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :answer4
      t.string :correct_answer

      t.timestamps
    end
  end
end
