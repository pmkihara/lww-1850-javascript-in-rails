class Monument < ApplicationRecord
  validates :name, :address, :opening_date, presence: true
end
