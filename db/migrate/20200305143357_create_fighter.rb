class CreateFighter < ActiveRecord::Migration[6.0]
  def change
    create_table :fighters do |t|
      t.integer :weapon_id
      t.integer :type_id
      t.string :name
      t.integer :hp 
      t.integer :hit_percent
      t.integer :attack
    end
  end
end
