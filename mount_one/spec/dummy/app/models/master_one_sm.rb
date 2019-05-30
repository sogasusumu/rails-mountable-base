class MasterOneSm < ApplicationRecord
  belongs_to :master_one_md
  has_many :mount_one_accounts, class_name: 'MountOne::Account'

  validates :name,
            presence: true,
            uniqueness: { scope: %i(master_one_md_id name) }
end
