class Ability
  include CanCan::Ability

	def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.new_record?
    else
		  user.permissions_roles.each do |permissions_roles|
        if permissions_roles.permission.subject_class.to_sym == :all
          can permissions_roles.permission.action.to_sym, :all
        else
	      	can permissions_roles.permission.action.to_sym, permissions_roles.permission.subject_class.constantize
	      end
	    end
		end
	end
end