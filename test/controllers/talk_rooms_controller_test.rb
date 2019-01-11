require 'test_helper'

class TalkRoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get talk_rooms_index_url
    assert_response :success
  end

end
