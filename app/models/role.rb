class Role < ApplicationRecord

	# Associations
  has_many :users
  has_many :permissions_roles, dependent: :destroy
  has_many :permissions, through: :permissions_roles

	validates :name, format: { 
					    with: /\A[a-zA-Z0-9\p{Cyrillic}\p{Latin} ]+\z/,
					    message: "only allows letters and numbers" },
					  length: { in: 2..15 }, presence: true
					  
	validates_uniqueness_of :name
end
