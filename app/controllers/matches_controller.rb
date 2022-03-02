class MatchesController < ApplicationController
  def index
    @matches = Match.where("sender_id = #{current_user.id} OR receiver_id = #{current_user.id}")
  end

  def show
    @messages = Message.where("match_id = #{params[:id]}")
  end

  def destroy
  end
end
