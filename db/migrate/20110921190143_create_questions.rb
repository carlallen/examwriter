class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string :question
      t.string :type
      t.string :option_a
      t.string :option_b
      t.string :option_c
      t.string :option_d
      t.string :answer

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
