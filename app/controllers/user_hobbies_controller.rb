class UserHobbiesController < ApplicationController

  def create
    @user_hobbies = Hobby.new(user_id: current_user.id)
    @user = current_user.id
    @pet.user_id = @user
    authorize @pet
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

end
