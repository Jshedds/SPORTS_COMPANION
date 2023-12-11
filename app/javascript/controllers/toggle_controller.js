import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement"]

  connect() {
  }

  // fire() {
  //   this.togglableElementTarget.classList.toggle("d-none");
  //   window.scrollTo(0, document.body.scrollHeight);
  // }
  fire() {
    this.togglableElementTarget.classList.toggle("d-none");

    // Scroll to the top of the togglable element
    const targetElement = this.togglableElementTarget;
    if (targetElement) {
      const targetOffset = targetElement.offsetTop - 80;
      // Scroll to the top of the togglable element
      window.scrollTo({
        top: targetOffset,
        behavior: "smooth" // Optional: Adds smooth scrolling behavior
      });
    }
  }
}

// fire() {
//   this.togglableElementTarget.classList.toggle("d-none");

//   // Scroll to the top of the togglable element
//   const targetElement = this.togglableElementTarget;
//   if (targetElement) {
//     let targetOffset = targetElement.offsetTop
//     if (targetElement.offsetTop >= 305) {
//       targetOffset = targetOffset - 60;
//     // Scroll to the top of the togglable element

//     }

//     window.scrollTo({
//       top: targetOffset,
//       behavior: "smooth" // Optional: Adds smooth scrolling behavior
//     });
//   }
// }
