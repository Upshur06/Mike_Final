class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|

      t.string :result
      t.integer :student_id
      t.integer :test_id

      t.timestamps
    end
  end
end
