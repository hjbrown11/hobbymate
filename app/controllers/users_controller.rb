class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_hobby = UserHobby.where(user_id: params[:id])
    @match = Match.where("sender_id = #{current_user.id} and receiver_id = #{params[:id]}")
  end
end
