class Role < ApplicationRecord
  has_many :users

	validates :name, format: { 
					    with: /\A[a-zA-Z0-9\p{Cyrillic}\p{Latin} ]+\z/,
					    message: "only allows letters and numbers" },
					  length: { in: 2..15 }, presence: true
	validates_uniqueness_of :name
end
