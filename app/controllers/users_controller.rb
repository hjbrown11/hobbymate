class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show, :match]

  def index
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def show
    @userhobbies = current_user.user_hobbies
    @categories = Category.all
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

  #def next_match
  #  @user = User.find(params[:id])
  #  @user_hobby = UserHobby.where(user_id: params[:id])
  #  @match = current_user.all_matches.find_by("sender_id = ? OR receiver_id = ?", @user.id)
  #  @match ||= Match.new
  #end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :photo)
  end

  def set_user
    @user = User.find(params[:id])
    authorize(@user)
  end
end
