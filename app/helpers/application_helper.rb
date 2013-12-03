module ApplicationHelper
  # Returns the name of the application.
  def app_name
    "DSO"
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    if page_title.empty?
      app_name
    else
      "#{page_title} | #{app_name}"
    end
  end

  # Returns current if path the current path
  def cp(path)
    "current" if current_page?(path)
  end

  def about_path
    '/about'
  end

  def staff_path
    '/staff'
  end

  def news_path
    '/news'
  end

  def members_path
    '/members'
  end
end