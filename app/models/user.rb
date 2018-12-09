class User < ApplicationRecord
  has_secure_password
  has_many :bookmarks
  has_many :company_addresses, through: :bookmarks
end
