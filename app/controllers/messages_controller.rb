class MessagesController < ApplicationController
  def create # rubocop:disable Metrics/MethodLength
    @sport = Sport.find(params[:sport_id])
    @chatroom = Chatroom.find_by(name: "#{@sport.name} chatroom")
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    @username = @message.user.username
    authorize @message
    @message.save

    ChatroomChannel.broadcast_to(
      @chatroom,
      render_to_string(partial: "messages/message", locals: { message: @message })
    )
    head :ok
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
