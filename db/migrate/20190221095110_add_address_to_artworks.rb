class AddAddressToArtworks < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :address, :string
  end
end
