class MatchingQuestion < Question
  has_many :matching_options
  validates_length_of :matching_options, :within => 2..20
  
  def self.type_s
    "Matching Question"
  end
  def multi_choice?
    true
  end
end