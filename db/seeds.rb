# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# creating  company
cpn1 = Company.create(company_name: "company_1", company_size: "455" ,category: "PME")
cpn2 = Company.create(company_name: "company_2", company_size: "455" ,category: "ETI")
cpn3 = Company.create(company_name: "company_3", company_size: "455" ,category: "N/A")

ca1=CompanyAddress.create!(siret: "1234567", address_name: "adr_name_1", street_number: "22", street_indicator: "B",
                          street_type: "AV", street_label: "some street", latitude: "41.40338", longitude: " 2.17403",
                           zip_code: "75001", city: "paris", company_id: cpn1.id)
ca2=CompanyAddress.create(siret: "1234568", address_name: "adr_name_2", street_number: "22", street_indicator: "B",
                          street_type: "AV", street_label: "some street", latitude: "41.40338", longitude: " 2.17403",
                          zip_code: "75001", city: "paris", company_id: cpn2.id)
ca3=CompanyAddress.create(siret: "1234569", address_name: "adr_name_3", street_number: "22", street_indicator: "B",
                          street_type: "AV", street_label: "some street", latitude: "41.40338", longitude: " 2.17403",
                          zip_code: "75001", city: "paris", company_id: cpn3.id)

ca4=CompanyAddress.create(siret: "1234556", address_name: "adr_name_4", street_number: "22", street_indicator: "B",
                          street_type: "AV", street_label: "some street", latitude: "41.40338", longitude: " 2.17403",
                          zip_code: "75001", city: "paris", company_id: cpn3.id)

usr1 =User.create(email: "admin@domain.com", password_digest: "admin@domain.com")


