import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["first", "input", "second", "athlete"]
  connect() {
    // const modal = new bootstrap.Modal(this.secondTarget)
    // modal.show()
    this.first_modal = new bootstrap.Modal(this.firstTarget)
  }
  find() {
    const url = "/athletes/find_or_create"
    fetch(url, {
      method: "POST",
      headers: {
        "Accept": "text/plain",
        "Content-Type": "text/plain",
        "X-CSRF-Token": document.getElementsByName('csrf-token')[0].content
       },
      body: JSON.stringify({name: this.inputTarget.value})
    })
    .then(response => response.text())
      .then((data) => {
        // this.firstTarget.classList.remove("show")
        // const first_modal = new bootstrap.Modal(this.firstTarget)
        this.first_modal.hide()
        this.athleteTarget.innerHTML = data
        console.log(data)
        // this.secondTarget.classList.add("show")
        const modal = new bootstrap.Modal(this.secondTarget)
        modal.show()
        // $('#athleteShow').modal('show')
      })
  }
}
