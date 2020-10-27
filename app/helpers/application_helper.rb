module ApplicationHelper
  def check_for_signeduser
    if user_signed_in?
      "<a href='/users/edit'>Edit profile</a>".html_safe
      link_to('Logout', destroy_user_session_path, method: :delete).to_s.html_safe

    else
      "<a href='/users/sign_up'>Sign up</a>".html_safe
      "<a href='/users/sign_in'>Login</a>".html_safe
    end
  end
end
