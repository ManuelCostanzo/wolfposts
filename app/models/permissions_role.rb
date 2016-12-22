class PermissionsRole < ActiveRecord::Base
  
  # Associations
  belongs_to :permission
  belongs_to :role
end