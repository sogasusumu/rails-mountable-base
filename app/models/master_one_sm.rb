class MasterOneSm < ApplicationRecord
  belongs_to :master_one_md

  validates :name,
            presence: true,
            uniqueness: { scope: %i(master_one_md_id name) }
end
