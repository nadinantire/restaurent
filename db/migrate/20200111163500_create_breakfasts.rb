class CreateBreakfasts < ActiveRecord::Migration[6.0]
  def change
    create_table :breakfasts do |t|
      t.string :name
      t.integer :price
      t.references :restorent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
