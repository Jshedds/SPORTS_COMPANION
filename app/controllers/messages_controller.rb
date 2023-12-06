class MessagesController < ApplicationController
  def create
    @sport = Sport.find(params[:sport_id])
    @chatroom = Chatroom.find_by(name: "#{@sport.name} chatroom")
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
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