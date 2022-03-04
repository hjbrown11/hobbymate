class UsersController < ApplicationController
  def index
  end

  def show
    current_user.hobbies << Hobby.find(params[:hobby_id]) if params[:hobby_id].present?
    @hobbies = current_user.hobbies

    @user = User.find(params[:id])
    @categories = Category.all
    @user_hobbies = UserHobby.new
    if params[:categories]
      ids = params[:categories].keys.select do |id|
        params[:categories][id] == "1"
      end
      @categories = Category.where(id: ids)
    end

    if params[:address]
      current_user.address = params[:address]
      current_user.save
    end

    if current_user.address.blank?
      redirect_to root_path, alert: "Please enter a location to continue"
    end
  end

end
