import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["app"]

  connect() {
    const saved = localStorage.getItem("ad-theme")
    if (saved) document.documentElement.setAttribute("data-theme", saved)
  }

  toggle() {
    const current = document.documentElement.getAttribute("data-theme")
    const next = current === "dark" ? "light" : "dark"
    document.documentElement.setAttribute("data-theme", next)
    localStorage.setItem("ad-theme", next)
  }
}
