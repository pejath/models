class Purchase < ApplicationRecord
  belongs_to :account
  belongs_to :product
  validates :delivery, inclusion: {in: [true, false]}
  validates :type_of_payment, presence: true
end
