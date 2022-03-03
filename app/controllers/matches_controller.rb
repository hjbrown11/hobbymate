class MatchesController < ApplicationController
  def index
    @matches = Match.where("sender_id = #{current_user.id} OR receiver_id = #{current_user.id}")
  end

  def show
    @messages = Message.where("match_id = #{params[:id]}")
  end

  def destroy
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)
    @match.sender_id = current_user.id
    @user = User.find(params[:id])
    @match.receiver_id = @user.id
    @match.save
  end

  def update
    @match.update(match_params)
  end

  private

  def match_params
    params.require(:match).permit(:sender_id, :receiver_id, :match)
  end
end
