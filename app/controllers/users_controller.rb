class UsersController < ApplicationController
  def index
  end

  def show
    current_user.hobbies << Hobby.find(params[:hobby_id]) if params[:hobby_id].present? && !current_user.hobbies.include?(Hobby.find(params[:hobby_id]))
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

  def destroy
    @hobby = Hobby.find(params[:hobby_id])
    @hobby.destroy
    redirect_to user_path(current_user, hobby_id: hobby.id), notice: "Your hobby was removed"
  end

  def match
    @user = User.find(params[:id])
    @user_hobby = UserHobby.where(user_id: params[:id])
    @match = current_user.all_matches.find_by("sender_id = ? OR receiver_id = ?", @user.id, @user.id)
    @match ||= Match.new
  end
  def next_match
    @user = User.find(params[:id])
    @user_hobby = UserHobby.where(user_id: params[:id])
    @match = current_user.all_matches.find_by("sender_id = ? OR receiver_id = ?", @user.id)
    @match ||= Match.new
  end
end
