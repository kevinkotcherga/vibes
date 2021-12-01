class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @matching = @chatroom.matching
    @user = User.find(@matching.to_user_id)
  end
end
