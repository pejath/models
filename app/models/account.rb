class Account < ApplicationRecord
  has_many :purchase
  belongs_to :person
  validates_format_of :email, with: /\A\w+@\w+/
  validates :password, length: {minimum: 8}, presence: true
  validates :nickName, presence: true, uniqueness: true, length: {minimum: 4}
  scope :has_more_than, ->(num) {where(id: Purchase.group(:account_id).having("count('account_id')>=?", num).pluck(:account_id))}

end
