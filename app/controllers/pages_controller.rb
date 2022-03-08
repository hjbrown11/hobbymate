class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    if current_user.address.present?
      redirect_to new_match_path
    else
      @categories = Category.all
      @user = current_user
    end
  end
end
