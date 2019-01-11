class TalkRoomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'talk_room_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak
    #ActionCable.server.broadcast 'talk_room_channel', message: data['message']
    TalkRoom.create! user_id: current_user.id, message: data['message']
  end
end
