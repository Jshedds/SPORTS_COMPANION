class ChatroomsController < ApplicationController
  def show
    @sport = Sport.find(params[:sport_id])
    @chatroom = Chatroom.find_by(sport_id: @sport.id)
    @message = Message.new
    authorize @chatroom
  end
end
