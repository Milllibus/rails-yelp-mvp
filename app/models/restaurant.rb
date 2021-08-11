class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian].freeze
  has_many :reviews, dependent: :destroy
  validates_presence_of :name, :address, :phone_number, :category
  validates :category, inclusion: { in: CATEGORY }
end
