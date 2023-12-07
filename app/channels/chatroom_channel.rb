class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    p params[:name]
    chatroom = Chatroom.find_by(name: params[:name])
    stream_for chatroom
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
