class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian]

  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY, message: '%<value> is not valid.' }
  validates :address, presence: true
end
