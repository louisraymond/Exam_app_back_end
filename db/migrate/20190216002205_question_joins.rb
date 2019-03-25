class QuestionJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :question_joins do |t|

      t.integer :practice_question_id
      t.integer :test_id

      t.timestamps
    end
  end
end
