class RemoveChatroomIdColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :matchings, :chatroom_id
  end
end
