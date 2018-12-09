class CompanyAddress < ApplicationRecord
  belongs_to :company, optional: true
  has_many :users, through: :bookmarks
end
