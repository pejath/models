class Product < ApplicationRecord
  has_one :purchase
  has_one :tech_info

  validates :color, inclusion: { in: %w[red orange yellow green blue indigo violet black white] }, presence: true
  validates :carBrand, presence: true
  validates_format_of :wos, with: /\A\d{0,4}.\d{0,2}.\d{0,2}\z/

  scope :long_on_sale, -> { where('wos < ? ', Date.current - 183) }
  scope :new_auto, -> { where('wos >= ?', '2022-01-01') }
  scope :brand, ->(brand) { where('carBrand == ?', brand) }
end