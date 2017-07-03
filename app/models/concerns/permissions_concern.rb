module PermissionsConcern
	extend ActiveSupport::Concern
	def is_normal?
		self.permission_level == 2
	end

	def is_admin?
		self.permission_level == 1
	end
end