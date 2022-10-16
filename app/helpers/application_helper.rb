module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
      link_to "Sign out", destroy_user_session_path, data: { turbo_method: :delete }
    else
      (link_to "Register", new_user_registration_path) +
        '<br>'.html_safe +
        (link_to "Login", new_user_session_path)
    end
  end

  def source_helper
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]}"
      content_tag(:h5, greeting, class: "source-greeting")
    end
  end
end
