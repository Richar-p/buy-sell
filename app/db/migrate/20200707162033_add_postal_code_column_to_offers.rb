class AddPostalCodeColumnToOffers < ActiveRecord::Migration[6.0]
  def change
  	add_column :offers, :postal_code, :string
  end
end
