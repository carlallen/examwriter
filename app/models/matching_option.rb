class MatchingOption < ActiveRecord::Base
  belongs_to :question
  validates_presence_of :left_value
  validates_presence_of :right_value
end
