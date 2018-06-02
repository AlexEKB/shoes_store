class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.boolean :subscribe

      t.timestamps
    end
  end
end
