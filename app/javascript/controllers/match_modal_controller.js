import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  connect() {
    const myModal = new bootstrap.Modal(this.element)
    myModal.show()
  }
}
