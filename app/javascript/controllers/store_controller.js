import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { modalId: String }

  open(event) {
    const modal = document.getElementById(this.modalIdValue)
    if (modal && modal.hidden) modal.hidden = false
  }

  close(event) {
    event.stopPropagation()
    const modal = document.getElementById(this.modalIdValue)
    if (modal) modal.hidden = true
  }
}
