class CreateCompanyAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :company_addresses do |t|
      t.string :siret, unique: true
      t.string :address_name
      t.integer :street_number
      t.string :street_indicator
      t.string :street_type
      t.string :street_label
      t.string :latitude
      t.string :longitude
      t.string :zip_code
      t.string :city
      t.references :company

      t.timestamps
    end
  end
end
