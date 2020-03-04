class CreateType < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.string :name
      t.integer :attack 
      t.integer :hit_percent
    end
  end
end
