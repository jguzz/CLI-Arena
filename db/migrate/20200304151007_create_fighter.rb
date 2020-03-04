class CreateFighter < ActiveRecord::Migration[6.0]
  #Migration for fighter
  def change
    create_table :fighters do |t|
      t.string :name
      t.integer :type_id
      t.integer :weapon_id
    end
  end
end
