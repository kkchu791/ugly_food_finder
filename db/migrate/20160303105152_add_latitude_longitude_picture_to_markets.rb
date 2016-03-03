class AddLatitudeLongitudePictureToMarkets < ActiveRecord::Migration
  def change
    add_column :markets, :latitude, :float
    add_column :markets, :longitude, :float
    add_column :markets, :picture, :string
  end
end
