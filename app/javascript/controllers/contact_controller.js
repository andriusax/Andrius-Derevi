import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "success", "subForm", "subSuccess"]

  async submit(event) {
    event.preventDefault()
    const form = this.formTarget
    const data = new FormData(form)

    const response = await fetch("/contact", {
      method: "POST",
      headers: {
        "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]').content,
        "Accept": "application/json"
      },
      body: data
    })

    if (response.ok) {
      form.style.display = "none"
      this.successTarget.style.display = "flex"
    }
  }

  subscribe(event) {
    event.preventDefault()
    const email = this.subFormTarget.querySelector("input[type=email]").value
    window.open(`https://andriusdereviancenko.substack.com/subscribe?email=${encodeURIComponent(email)}`, "_blank")
  }
}
