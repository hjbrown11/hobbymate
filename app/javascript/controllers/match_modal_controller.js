import { Controller } from "@hotwired/stimulus"
import bootstrap from "bootstrap/dist/js/bootstrap"

export default class extends Controller {

  connect() {
    const myModal = new bootstrap.Modal(this.element)
    myModal.show()
  }
}
