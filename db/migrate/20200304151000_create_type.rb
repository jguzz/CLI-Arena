class CreateType < ActiveRecord::Migration[6.0]
  #migration for Type
  def change
    create_table :types do |t|
      t.string :name
      t.integer :attack 
      t.integer :hit_percent
      t.integer :hp
    end
  end
end