class AddPictureToMarkets < ActiveRecord::Migration
  def change
    add_column :markets, :picture, :string
  end
end
