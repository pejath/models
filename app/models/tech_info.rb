class TechInfo < ApplicationRecord
  belongs_to :product

  validates :body_type, presence: true
  validates :doors_num, numericality:{only_integer: true, greater_than: 0}, presence: true
  validates :seats_num, numericality:{only_integer: true, greater_than: 0}, presence: true
  validates :engine_type, presence: true
  validates :engine_displ,numericality: {greater_than_or_equal_to: 0}, presence: true
end
