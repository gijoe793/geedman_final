class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :bread
      t.string :cheese
      t.string :meat
      t.string :veg
      t.integer :userid

      t.timestamps
    end
  end
end
