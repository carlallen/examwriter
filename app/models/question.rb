class Question < ActiveRecord::Base
  validates_inclusion_of :type, :in => %w( MultipleChoiceQuestion TrueFalseQuestion ), :message => "is not a valid question type."
  validates_presence_of :answer
  
  def multi_choice?
    false
  end
  def true_false?
    false
  end
end
