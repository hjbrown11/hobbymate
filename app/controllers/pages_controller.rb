class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if current_user.address.nil? == false
      redirect_to new_match_path
    else
      @categories = Category.all
      @user = current_user
    end
  end
end
