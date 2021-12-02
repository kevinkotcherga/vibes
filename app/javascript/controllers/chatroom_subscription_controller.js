import { Controller } from "stimulus";
import consumer from "../channels/consumer";

export default class extends Controller {
  static values = { chatroomId: Number, userId: Number };

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: (data) => this._insertMessage(data) }
    );
  }

  disconnect() {
    console.log("Unsubscribe to the chatroom");
    this.channel.unsubscribe();
  }

  _insertMessage(data) {
    this.element.insertAdjacentHTML('beforeend', data.html)
    document.querySelector("#message_content").value = ""
    document.querySelector(".message:last-child").scrollIntoView()
    if (this.userIdValue !== data.user_id ) {
      document.querySelector(".message:last-child").classList.remove("current_user")
    }
  }
}

// this.userIdValue // client user id
// data.user_id // message user
