class CreateExamQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :exam_questions do |t|
      t.string :title
      t.string :question_text
      t.string :explanation_text
      t.boolean :used
      t.integer :test_id

      t.timestamps
    end
  end
end
