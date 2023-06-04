import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="projects"
export default class extends Controller {

  static targets = ["card","searchField"]
  connect() {
  }
  search(){
    let searchField = this.searchFieldTarget.value.toLowerCase()
    this.cardTargets.forEach((card)=>{
      let name = card.firstElementChild.innerHTML.slice(5).toLowerCase()
      if(name.includes(searchField)){
        card.classList.remove("hidden")
      }else{
        card.classList.add("hidden")
      }
    })
  }
}
