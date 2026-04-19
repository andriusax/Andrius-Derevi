import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["sidebar", "toggle"]

  toggle() {
    this.sidebarTarget.classList.toggle("is-open")
    this.toggleTarget.classList.toggle("is-open")
  }

  close(event) {
    if (!this.element.contains(event.target)) {
      this.sidebarTarget.classList.remove("is-open")
      this.toggleTarget.classList.remove("is-open")
    }
  }
}
