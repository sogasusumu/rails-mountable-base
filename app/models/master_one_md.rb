class MasterOneMd < ApplicationRecord
  belongs_to :master_one_lg
  has_many :master_one_sms, dependent: :destroy

  validates :name,
            presence: true,
            uniqueness: { scope: %i(master_one_lg_id name) }
end
