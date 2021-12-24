class Product < ApplicationRecord
  validates :countryOrin, presence: true
  validates :color, inclusion: { in: %w[red orange yellow green blue indigo violet black white] }, presence: true
  validates :carBrand, presence: true
  validates :model, presence: true
  validates :availability, presence: true

end
