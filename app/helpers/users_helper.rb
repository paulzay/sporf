module UsersHelper
  def admin_btn(_user)
    link_to 'Create category', new_category_path if current_user.admin?
  end
end
