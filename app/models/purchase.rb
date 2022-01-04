class Purchase < ApplicationRecord
  belongs_to :account
  belongs_to :product
  validates :delivert, inclusion: {in: [true, false]}
  validates :typeOfPayment, presence: true

  # Purchase.group(:account_id).having("count('id')>=2").select(:account_id)

end
