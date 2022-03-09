import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  static values = { matchId: Number, currentUserId: Number }
  static targets = ["messages", "form"]

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "MatchChannel", id: this.matchIdValue },
      { received: data => this.#insertMessageScrollDownAndResetForm(data) }
    )
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  #insertMessageScrollDownAndResetForm(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    const message = this.messagesTarget.lastChild.previousSibling
    const senderId = parseInt(message.dataset.senderId)
    console.log(senderId)
    console.log(this.currentUserIdValue)
    if (senderId === this.currentUserIdValue) {
      message.classList.add('sent-message')
      message.classList.remove('received-message')
    } else {
      message.classList.add('received-message')
      message.classList.remove('sent-message')
    }
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
    this.formTarget.reset()
  }
}
