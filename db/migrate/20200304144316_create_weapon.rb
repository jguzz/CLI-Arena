class CreateWeapon < ActiveRecord::Migration[6.0]
  def change
    create_table :weapons do |t|
      t.string :weapon_type
      t.integer :hit_percent
      t.integer :attack
    end
  end
end
