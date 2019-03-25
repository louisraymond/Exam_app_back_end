class PracticeQuestion < ApplicationRecord
  has_many :question_joins
  has_many :tests ,through: :question_join
  # after_initialize :set_defaults
  validates_presence_of :title, :question_text , :hint_text

  def self.sort_for_selection
    sorted_array=PracticeQuestion.all.sort_by {|question| question.times_used}
  end

  def set_defaults
    self.times_used = 0
  end

  def use_practice_question
    self.update(times_used: self.times_used + 1)
    puts "UPDATED #{self.times_used}"
    self.save
  end

  def set_defaults
    times_used=0
  end

  def use_question

end

end
