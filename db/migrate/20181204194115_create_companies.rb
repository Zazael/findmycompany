class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_name, unique: true
      t.integer :company_size
      t.string :category

      t.timestamps
    end
  end
end
