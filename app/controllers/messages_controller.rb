class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @match = Match.find(params[:match_id])
    @messages = @match.messages
    @user = current_user.id
    @message.user_id = @user
    @message.match_id = @match.id
    if @message.save
      MatchChannel.broadcast_to(
        @match,
        render_to_string(partial: "message", locals: { message: @message, image: current_user.photo, css_class: "sent-message" })
      )
      head :ok
    else
      render 'matches/show'
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
