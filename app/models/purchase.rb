class Purchase < ApplicationRecord
  # belongs_to :client
  validates :customerCode, presence: true
  validates_format_of :purchaseDate, with: /\A\d{0,4}.\d{0,2}.\d{0,2}\z/
  validates :delivert, inclusion:{in: [true, false]}
  validates :typeOfPayment, presence: true

end
