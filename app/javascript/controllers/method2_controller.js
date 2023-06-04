import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="method2"
export default class extends Controller {
  search(){
    this.element.requestSubmit()
  }
}
