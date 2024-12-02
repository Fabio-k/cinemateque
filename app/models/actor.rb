class Actor < ApplicationRecord
  validates :name, :nacionality, :birth_date, presence: :true
  has_many :roles
  has_many :movies, through: :roles
end
