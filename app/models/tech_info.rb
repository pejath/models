class TechInfo < ApplicationRecord
  belongs_to :product
  validates :bodyType, presence: true
  validates :doorsNum, numericality:{only_integer: true, greater_than: 0}, presence: true
  validates :seatsNum, numericality:{only_integer: true, greater_than: 0}, presence: true
  validates :engineType, presence: true
  validates :engineDispl,numericality: {greater_than_or_equal_to: 0}, presence: true
end
