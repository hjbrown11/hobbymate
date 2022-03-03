class MatchesController < ApplicationController
  def index
    @matches = Match.where("sender_id = #{current_user.id} OR receiver_id = #{current_user.id}")
  end

  def show
  end

  def destroy
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)
  end

  private

  def match_params
    params.require(:match).permit(:sender_id, :receiver_id)
  end
end
