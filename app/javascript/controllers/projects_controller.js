import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="projects"
export default class extends Controller {

  static targets = ["card","searchField"]
  connect() {
  }

  initialize() {
    this.cardTargets.forEach((card,index)=>{
      if(index %2 == 0)
      card.classList.add("bg-violet-100")
    })
  }

  search(){
    let searchField = this.searchFieldTarget.value.toLowerCase()
    let backgroundColor = true
    this.cardTargets.forEach((card)=>{
      let name = card.firstElementChild.innerHTML.toLowerCase()
      card.classList.remove("bg-violet-100")
      if(name.includes(searchField)){
        card.classList.remove("hidden")
        if(backgroundColor){
          card.classList.add("bg-violet-100")
          backgroundColor = !backgroundColor
        } else {
          backgroundColor = !backgroundColor
        }
      }else{
        card.classList.add("hidden")
      }
    })
  }
}
