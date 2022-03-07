import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  static values = { matchId: Number }
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
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
    this.formTarget.reset()
  }
}