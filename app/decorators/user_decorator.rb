class UserDecorator < Draper::Base
  decorates :user

  def signed_in?
    !user.new_record?
  end

  def session_control
    if signed_in?
      h.link_to 'Sign Out', h.destroy_user_session_path, method: :delete
    else
      h.link_to 'Sign In', h.new_user_session_path
    end
  end
end
