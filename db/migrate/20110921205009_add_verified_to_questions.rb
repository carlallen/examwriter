class AddVerifiedToQuestions < ActiveRecord::Migration
  def self.up
    add_column :questions, :verified, :boolean
  end

  def self.down
    remove_column :questions, :verified
  end
end