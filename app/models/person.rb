class Person < ApplicationRecord
  has_and_belongs_to_many :accounts
  has_many :pictures, as: :imageble

  validates :full_name, presence: true
  validates :passport_series, presence: true, uniqueness: true
  validates :passport_num, presence: true, uniqueness: true
  validates :home_adress, presence: true
  validates :phone_num, presence: true, numericality: {only_integer: true}
end
