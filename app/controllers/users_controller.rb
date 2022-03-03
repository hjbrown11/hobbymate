class UsersController < ApplicationController
  def index
  end

  def show
    current_user.hobbies << Hobby.find(params[:hobby_id]) if params[:hobby_id].present?
    @hobbies = current_user.hobbies
  end

  def match
    @user = User.find(params[:id])
    @user_hobby = UserHobby.where(user_id: params[:id])
    @match = Match.where("sender_id = #{current_user.id} and receiver_id = #{params[:id]}")
  end
end
