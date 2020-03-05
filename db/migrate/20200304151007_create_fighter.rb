class CreateFighter < ActiveRecord::Migration[6.0]
  #Migration for fighter
  def change
    create_table :fighters do |t|
      t.string :name
      t.integer :type_id
      t.integer :weapon_id
      t.integer :hp 
      t.integer :hit_percent
      t.integer :attack
      t.integer :max_hp
    end
  end
end
