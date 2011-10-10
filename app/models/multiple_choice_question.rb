class MultipleChoiceQuestion < Question
  validates_inclusion_of :answer, :in => %w( A B C D ), :message => "must be A B C or D for Multiple Choice Questions."
  validates_presence_of :option_a
  validates_presence_of :option_b
  validates_presence_of :option_c
  validates_presence_of :option_d

  before_validation :capitalize_options
  def capitalize_options
    self.option_a = self.option_a.to_s.capitalize
    self.option_b = self.option_b.to_s.capitalize
    self.option_c = self.option_c.to_s.capitalize
    self.option_d = self.option_d.to_s.capitalize
  end

  def type_s
    "Multi Choice"
  end
  def multi_choice?
    true
  end
end
