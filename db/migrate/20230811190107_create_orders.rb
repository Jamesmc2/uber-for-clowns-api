class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :clown_id
      t.integer :user_id
      t.integer :rating

      t.timestamps
    end
  end
end
