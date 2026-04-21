import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["slide", "dot"]

  connect() {
    this.index = 0
    this.timer = setInterval(() => this.advance(), 7000)
  }

  disconnect() {
    clearInterval(this.timer)
  }

  advance() {
    this.show((this.index + 1) % this.slideTargets.length)
  }

  goTo(event) {
    this.show(parseInt(event.currentTarget.dataset.index, 10))
  }

  show(idx) {
    this.index = idx
    this.slideTargets.forEach((slide, i) => slide.classList.toggle("is-active", i === idx))
    this.dotTargets.forEach((dot, i) => dot.classList.toggle("is-active", i === idx))
  }
}
