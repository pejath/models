class Account < ApplicationRecord
  has_many :purchase
  belongs_to :person
  validates_format_of :email, with: /\A\w+@\w+/
  validates :password, length: {minimum: 8}, presence: true
end
