import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="chatroom-subscription"
export default class extends Controller {
  static targets = ["messages", "submit"]
  static values = {
    chatroomName: String
  }

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", name: this.chatroomNameValue },
      { received: (data) => { this.#insertMessage(data) } }
    )
  }

  disconnect() {
    console.log()
    this.channel.unsubscribe()
  }

  resetForm(event) {
    const form = event.target
    form.reset()
  }

  #insertMessage(data) {
    this.messagesTarget.insertAdjacentHTML('beforeend', data)
    // this.submitTarget.scrollTo(-10, this.submitTarget.scrollHeight)
    window.scrollTo(0, document.body.scrollHeight);
  }
}
