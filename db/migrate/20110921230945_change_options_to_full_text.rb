class ChangeOptionsToFullText < ActiveRecord::Migration
  def self.up
    change_column :questions, :option_a, :text
    change_column :questions, :option_b, :text
    change_column :questions, :option_c, :text
    change_column :questions, :option_d, :text
  end

  def self.down
    change_column :questions, :option_a, :string
    change_column :questions, :option_b, :string
    change_column :questions, :option_c, :string
    change_column :questions, :option_d, :string
  end
end
