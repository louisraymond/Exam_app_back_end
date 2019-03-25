class CreatePracticeQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :practice_questions do |t|
      t.string :title
      t.string :question_text
      t.string :hint_text
      t.integer :times_used , default: 0

      t.timestamps
    end
  end
end
