class MatchesController < ApplicationController
  before_action :set_match, only: [:destroy, :update, :show]
  def index
    @matches = policy_scope(Match).all
  end

  def show
    @messages = @match.messages
    @message = Message.new
  end

  def destroy
  end

  def new
    @match = Match.new
    authorize(@match)
  end

  def create
    @match = Match.new(match_params)
    @match.sender_id = current_user.id
    @match.save
    redirect_to new_match_path(status: @match.status, old_match_id: @match.id)
    authorize(@match)
  end

  def update
    @match.update(match_params)
    redirect_to new_match_path(status: @match.status, old_match_id: @match.id)
  end

  def new_match
    if params[:old_match_id]
      @old_match = Match.find(params[:old_match_id])
    end
    @user = current_user.next_match_user
    if @user.nil?
      redirect_to user_path(current_user)
      authorize(Match.new)
    else
      @user_hobby = UserHobby.where(user_id: @user.id)
      @match = current_user.all_matches.find_by("sender_id = ? OR receiver_id = ?", @user.id, @user.id)
      @match ||= Match.new
      authorize(@match)
    end
  end

  private

  def match_params
    params.require(:match).permit(:receiver_id, :status)
  end

  def set_match
    @match = Match.find(params[:id])
    authorize(@match)
  end
end
