class MatchesController < ApplicationController
  before_action :set_match, only: [:destroy, :update, :show]
  before_action :my_matches, only: :index

  def index
    @accepted_matches = []
    my_matches.each do |match|
      unless match.nil?
        @accepted_matches << match
      end
    end
    @markers = @accepted_matches.map do |match|
      if match.present?
        {
          lat: match.latitude,
          lng: match.longitude,
          info_window: render_to_string(partial: "info_window", locals: { match: match }),
          image_url: helpers.image_url(match.photo.url)
        }
      end
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
    authorize(@match)
    @match.save
    redirect_to new_match_path(status: @match.status, old_match_id: @match.id)
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
    @matches = Match.where(sender_id: current_user.id).or(Match.where(receiver_id: current_user.id))
    @my_matches = @matches.map do |match|
      if match.status == "accepted"
        if match.sender_id == current_user.id
          user = match.receiver_id
        else
          user = match.sender_id
        end
        User.find(user)
      end
    end

  end
end
