import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="disclosure"
export default class extends Controller {
  static targets = ["content", "icon"]
  
  toggle() {
    this.contentTarget.classList.toggle("hidden")
    
    // Поворот иконки
    if (this.contentTarget.classList.contains("hidden")) {
      this.iconTarget.classList.remove("transform", "rotate-180")
    } else {
      this.iconTarget.classList.add("transform", "rotate-180")
    }
  }
} 