class TrueFalseQuestion < Question
  validates_inclusion_of :answer, :in => %w( T F ), :message => "must be T/F for True/False Questions."
  def self.type_s
    "True/False"
  end
  def true_false?
    true
  end
end
