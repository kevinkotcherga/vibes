class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user

    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        {
          html: render_to_string(partial: "message", locals: { message: @message, first_user: @chatroom.messages.first.user.id }),
          user_id: @message.user.id
        }
      )
    else
      render "chatrooms/show"
    end
  end

  def message_params
    params.require(:message).permit(:content)
  end
end


# anchor: "message-#{message.id}"
