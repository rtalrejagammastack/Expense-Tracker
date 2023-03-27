module ApplicationHelper
  def user_categories
    if user_signed_in?
      current_user.categories
    else 
      nil
    end
  end
end
