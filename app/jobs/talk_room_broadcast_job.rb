class TalkRoomBroadcastJob < ApplicationJob
  queue_as :default

  def perform(talk_room) #job呼び出しの際に引数で渡されたselfのデータを受け取る
    #元のbroadcast処理と同じ
    ActionCable.server.broadcast 'talk_room_channel', user_id: talk_room.user_id, message: talk_room.message
  end
end

