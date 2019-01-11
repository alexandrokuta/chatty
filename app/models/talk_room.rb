class TalkRoom < ApplicationRecord
  after_create_commit { TalkRoomBroadcastJob.perform_later self }
  belongs_to :user
end
