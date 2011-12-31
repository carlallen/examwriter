class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.string :type, :limit => 50
      t.string :option_a
      t.string :option_b
      t.string :option_c
      t.string :option_d
      t.string :answer, :limit => 1
      t.boolean :verified
      t.timestamps
    end
    add_index :questions, :verified
    add_index :questions, :type
  end
end
