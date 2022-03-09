class MatchesController < ApplicationController
  before_action :set_match, only: [:destroy, :update, :show]
  before_action :my_matches, only: :index

  def index
    @markers = @my_matches.map do |match|
      {
        lat: match.latitude,
        lng: match.longitude,
        info_window: render_to_string(partial: "info_window", locals: { match: match }),
        image_url: helpers.image_url(match.photo.url)
      }
    end
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
      redirect_to no_match_path
      authorize(Match.new)
    else
      @user_hobby = UserHobby.where(user_id: @user.id)
      @match = current_user.all_matches.find_by("sender_id = ? OR receiver_id = ?", @user.id, @user.id)
      @match ||= Match.new
      authorize(@match)
    end
  end

  def no_match
  end

  private

  def match_params
    params.require(:match).permit(:receiver_id, :status)
  end

  def set_match
    @match = Match.find(params[:id])
    authorize(@match)
  end

  def my_matches
    @matches = policy_scope(Match).all
    matches = @matches.map do |match|
      if match.sender_id == current_user.id
        match.receiver_id
      else
        match.sender_id
      end
    end
    @my_matches = matches.map { |match| User.find(match) }
  end
end
