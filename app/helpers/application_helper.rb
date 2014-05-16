module ApplicationHelper

	def login_or_logout_link
		if admin_signed_in?
			link_to "Log Out", destroy_admin_session_path, method: :delete
		else
			link_to "Log In", new_admin_session_path
		end
	end

	def admin_link
		if admin_signed_in?
			link_to "Modify Website Content", admins_pages_path, method: :get
		end
	end
end
