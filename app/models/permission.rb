class Permission < ApplicationRecord

  # Associations
  has_many :permissions_roles
  has_many :roles, through: :permissions_roles
  
end
