class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    if current_user.nil?
      @categories = Category.all
      @user = current_user
    else
      if current_user.address.present?
        redirect_to new_match_path
      end
    end
  end
end
