class Test < ApplicationRecord
  after_initialize :get_questions
  has_many :question_joins
  has_many :practice_questions , through: :question_joins
  has_many :exam_questions

  validates_presence_of :name
  validates :for_practice, inclusion: { in: [true, false] }


  def get_questions
    array = []
    if self.for_practice
      PracticeQuestion.sort_for_selection[0...5].each do |question|
      if self.practice_questions.length < 5
        self.practice_questions << question
      end  
      end
    elsif for_practice === false
      # grab 5 unused exam type questions
      ExamQuestion.unused[0...5].each do |question|
        puts "grabbing question #{question.title}"
        question.test = self
        question.use_question
        end
      end
    end

end
