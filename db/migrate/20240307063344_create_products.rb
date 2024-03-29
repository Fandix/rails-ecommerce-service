class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.references :cart, null: false, foreign_key: true
      t.text :desc

      t.timestamps
    end
  end
end
