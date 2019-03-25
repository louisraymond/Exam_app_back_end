class ExamQuestion < ApplicationRecord
  belongs_to :test, optional: true
  after_initialize :set_defaults

  validates_presence_of :title, :question_text , :explanation_text


  def set_defaults
    self.used =false
    self.test_id = nil
  end

  def use_question
    self.update(used:true)
  end

  def self.unused
     ExamQuestion.all.select {|question| question.used === false}
  end
end
