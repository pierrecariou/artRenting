class AddPriceToArtworks < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :price, :integer
  end
end
