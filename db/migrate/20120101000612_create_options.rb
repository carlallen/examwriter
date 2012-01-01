class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :key
      t.string :value
      t.integer :model_id
      t.string :model_type
      t.timestamps
    end
    
    add_index :options, [:model_id, :model_type]
    add_index :options, :key
    add_index :options, [:key, :model_id, :model_type], :unique => true
  end
end
