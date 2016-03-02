class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :store
      t.string :address
      t.text :description
      t.boolean :delivery

      t.timestamps null: false
    end
  end
end
