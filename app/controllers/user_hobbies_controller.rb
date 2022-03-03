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
      redirect_to user_path(@user)
    end
  end
end
