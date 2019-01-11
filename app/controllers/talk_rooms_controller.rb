class TalkRoomsController < ApplicationController
    before_action :authenticate_user!
  def index
    @talk_rooms = TalkRoom.all
  end
end
