class CreateMatchingOptions < ActiveRecord::Migration
  def change
    create_table :matching_options do |t|
      t.integer :question_id
      t.string :left_value
      t.string :right_value
      t.timestamps
    end
  end
end
