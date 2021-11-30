import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "title" ]

  connect() {
    console.log("hello")
  }

  scrollToTop() {
    console.log("ok")
    this.titleTarget.scrollIntoView(true);
  }
}
