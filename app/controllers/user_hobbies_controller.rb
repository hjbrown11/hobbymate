class UserHobbiesController < ApplicationController
  def create_many
    @user = current_user
    if params[:hobbies]
      ids = params[:hobbies].keys.select do |id|
        params[:hobbies][id] == "1"
      end
      @hobbies = Hobby.where(id: ids)
      @hobbies.each do |hobby|
        UserHobby.create(user_id: @user.id, hobby_id: hobby.id)
      end
    end
    redirect_to new_match_path
  end

  def destroy
    @userhobby = UserHobby.find(params[:id])
    @userhobby.destroy
    redirect_to user_path(current_user, hobby_id: @userhobby.hobby.id), notice: "Your hobby was removed"
    authorize(@userhobby)
  end
end
