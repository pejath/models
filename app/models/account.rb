class Account < ApplicationRecord
  has_many :purchases
  has_many :products, through: :purchase
  has_and_belongs_to_many :person

  validates_format_of :email, with: /\A\w+@\w+/
  validates :password, length: {minimum: 8}, presence: true
  validates :nickname, presence: true, uniqueness: true, length: {minimum: 4}
  scope :has_more_than, ->(num){Account.joins(:purchases).group(:account_id).having("count('account_id')>=?", num)}
end

