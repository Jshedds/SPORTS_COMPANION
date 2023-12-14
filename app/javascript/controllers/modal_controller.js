import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["first", "input", "second", "athlete", "loader"]
  connect() {

    this.first_modal = new bootstrap.Modal(this.firstTarget)
  }
  find() {
    this.loaderTarget.classList.remove('d-none')
    const url = `/athletes/find_or_create?name=${this.inputTarget.value}`
    fetch(url, {
      method: "GET",
      headers: {
        "Accept": "text/plain",
        "Content-Type": "text/plain",
        "X-CSRF-Token": document.getElementsByName('csrf-token')[0].content
       }

    })
    .then(response => response.text())
      .then((data) => {
        this.first_modal.hide()
        this.athleteTarget.innerHTML = data
        const modal = new bootstrap.Modal(this.secondTarget)
        modal.show()
      })
  }
}
