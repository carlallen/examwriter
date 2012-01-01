class Option < ActiveRecord::Base
  belongs_to :model, :polymorphic => true
  scope :system, lambda { {:conditions => ["model_id IS NULL AND model_type IS NULL"]} }
  validates_uniqueness_of :key
  
  def self.get(the_key)
    key_value = self.system.where(:key => the_key).limit(1).first and key_value.value
  end
  
  def self.set(the_key, the_value)
    option = self.system.find_or_initialize_by_key(the_key)
    option.value = the_value
    option.save
  end
end
