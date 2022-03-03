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

  def user_profile
    @user = current_user
    @hobbies = @user.hobbies
    @all_hobbies = Hobby.all
    if params[:hobbies]
      ids = params[:hobbies].keys.select do |id|
        params[:hobbies][id] == "1"
      end
      @hobbies = Hobby.where(id: ids)
    end

    if params[:address]
      current_user.address = params[:address]
      current_user.save
    end
    # how do I code it so they can add more hobbies/location? need to add an as to the route
    # delete user hobby route needs to be made - new route, but will be a link to
  end
end
