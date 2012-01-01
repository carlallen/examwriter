class Question < ActiveRecord::Base
  validates_inclusion_of :type, :in => %w( MultipleChoiceQuestion TrueFalseQuestion ), :message => "is not a valid question type."
  validates_presence_of :answer
  validates_presence_of :question
  
  scope :verified, lambda { 
    {:conditions => ["verified = ?", true]}
  }
  class << self
    def inherited(child)
      child.instance_eval do
        def model_name
          Question.model_name
        end
      end
      super
    end
  
    def new_with_inheriting(attributes = nil, options = {})
      if attributes.is_a?(Hash)
        
        if attributes = HashWithIndifferentAccess.new(attributes) and attributes[:type].present? and klass = attributes[:type].constantize and klass.ancestors.include?(Question)
        obj = klass.new(attributes, options)
        else
          obj = self.new(attributes = nil, options = {})
        end
      else
        obj = self.new(attributes = nil, options = {})
      end
    end
  end
  
  
  def multi_choice?
    false
  end
  def true_false?
    false
  end
  
  def verified=(value)
  end
  
  def verify!
    write_attribute(:verified, true)
    save(:validate => false)
  end
end
