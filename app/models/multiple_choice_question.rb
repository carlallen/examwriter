class MultipleChoiceQuestion < Question
  validates_inclusion_of :answer, :in => %w( A B C D ), :message => "must be A B C or D for Multiple Choice Questions."
  def type_s
    "Multi Choice"
  end
  def multi_choice?
    true
  end
end
