class UsersController < ApplicationController
  def show
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
