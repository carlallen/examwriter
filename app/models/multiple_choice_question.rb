class MultipleChoiceQuestion < Question
  validates_inclusion_of :answer, :in => %w( A B C D ), :message => "must be A B C or D for Multiple Choice Questions."
  validates_presence_of :option_a
  validates_presence_of :option_b
  validates_presence_of :option_c
  validates_presence_of :option_d
  def type_s
    "Multi Choice"
  end
  def multi_choice?
    true
  end
end
