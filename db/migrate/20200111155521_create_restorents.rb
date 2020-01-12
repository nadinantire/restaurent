class CreateRestorents < ActiveRecord::Migration[6.0]
  def change
    create_table :restorents do |t|
      t.string :name
      t.text :image
      t.string :website
      t.string :location
      t.string :onlineDelivery
      t.string :table_Booking
      t.string :cuisine
      t.string :currency
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
