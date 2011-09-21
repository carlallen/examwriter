class ChangeQuestionFromStringToText < ActiveRecord::Migration
  def self.up
    change_column :questions, :question, :text
  end

  def self.down
    change_column :questions, :question, :string
  end
end