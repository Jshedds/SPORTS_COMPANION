import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement", "searchBar"]

  connect() {
  }


  fire() {
    this.togglableElementTarget.classList.toggle("d-none");

    const targetElement = this.togglableElementTarget;
    if (targetElement) {
      const targetOffset = targetElement.offsetTop - 80;
      window.scrollTo({
        top: targetOffset,
        behavior: "smooth"
      });
    }
  }
  toggleSearchBar() {
    const searchBar = this.element.nextElementSibling;
    searchBar.classList.toggle("d-none");
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
