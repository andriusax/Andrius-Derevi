import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "success", "subForm", "subSuccess"]

  submit(event) {
    event.preventDefault()
    this.formTarget.style.display = "none"
    this.successTarget.style.display = "flex"
  }

  subscribe(event) {
    event.preventDefault()
    this.subFormTarget.style.display = "none"
    this.subSuccessTarget.style.display = "block"
  }
}
