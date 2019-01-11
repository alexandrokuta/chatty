App.talk_room = App.cable.subscriptions.create "TalkRoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    #$('#talk_rooms').append '<div>' + data['message'] + '</div>'
    $('#talk_rooms').append '<div>' + data['user_id'] + ' : ' + data['message'] + '</div>'

  speak: (message) ->
    @perform 'speak', message: message #引数にmessageを追加

  $(document).on 'keypress', '[data-behavior~=speak_talk_rooms]', (event) ->
    if event.keyCode is 13
     App.talk_room.speak event.target.value
     event.target.value = ""
     event.preventDefault()
