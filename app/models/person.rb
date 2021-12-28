class Person < ApplicationRecord
  has_many :accounts
  validates :fullName, presence: true
  validates :passportSeries, presence: true, uniqueness: true
  validates :passportNum, presence: true, uniqueness: true
  validates :homeAdress, presence: true
  validates :phoneNum, presence: true #возможно стоит добавить numericality:{only_integer: true}
end
