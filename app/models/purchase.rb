class Purchase < ApplicationRecord
  belongs_to :account
  belongs_to :product
  validates :delivert, inclusion: {in: [true, false]}
  validates :typeOfPayment, presence: true


end
