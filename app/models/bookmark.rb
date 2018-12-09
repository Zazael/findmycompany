class Bookmark < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :company_address, optional: true
end
