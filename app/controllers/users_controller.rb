class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_hobby = UserHobby.where(user_id: params[:id])
    @match = Match.where("sender_id = #{current_user.id} and receiver_id = #{params[:id]}")
  end

  def user_profile
    @user = current_user
    @hobbies_current = @user.hobbies
    @all_hobbies = Hobby.all
    if params[:hobbies]
      ids = params[:hobbies].keys.select do |id|
        params[:hobbies][id] == "1"
      end
      @hobbies_current = Hobby.where(id: ids)
    end

    if params[:address]
      current_user.address = params[:address]
      current_user.save
    end
    # how do I code it so they can add more hobbies/location? need to add an as to the route
    # delete user hobby route needs to be made - new route, but will be a link to
  end
end
