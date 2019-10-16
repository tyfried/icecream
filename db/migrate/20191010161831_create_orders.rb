class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :cone
      t.string :flavor
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
