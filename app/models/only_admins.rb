class OnlyAdmins < ActiveAdmin::AuthorizationAdapter

  def authorized?(action, subject = nil)
    user.role_cd == 4
  end

end