class HobbiesController < ApplicationController
  before_action :set_hobby, only: [:show]

  def index
    @hobbies = Hobby.all
  end

  def show
  end

  private

  def set_hobby
    @hobby = Hobby.find(params[:hobby_id])
    authorize(@hobby)
  end
end
