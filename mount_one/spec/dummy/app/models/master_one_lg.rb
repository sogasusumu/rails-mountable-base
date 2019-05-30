class MasterOneLg < ApplicationRecord
  has_many :master_one_mds, dependent: :destroy

  validates :name,
            presence: true,
            uniqueness: true
end
