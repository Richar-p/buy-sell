class CreateOffersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string        :name
      t.text          :description
      t.boolean       :validate?
      t.string        :email
      t.string        :phone_number
      t.integer       :price

      t.timestamps null: false
    end
  end
end
