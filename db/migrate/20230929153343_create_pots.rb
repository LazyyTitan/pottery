class CreatePots < ActiveRecord::Migration[7.0]
  def change
    create_table :pots do |t|
      t.string :class
      t.boolean :booked
      t.string :class_type
      t.string :user_name
      t.integer :user_id

      t.timestamps
    end
    add_index :pots, :user_id
  end
end
