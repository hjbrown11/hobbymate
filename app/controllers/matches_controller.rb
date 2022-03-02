class MatchesController < ApplicationController
  def index
    @matches = Match.where("sender_id = #{current_user.id} OR receiver_id = #{current_user.id}")
  end

  def show
  end

  def destroy
  end
end
