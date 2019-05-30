class Email < ApplicationRecord
  belongs_to :account

  validates :name,
            presence: true,
            uniqueness: { scope: %i(account_id name) }
end
