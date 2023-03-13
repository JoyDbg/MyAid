import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {

  static targets = ["pills", "cares", "exercises"]

  connect() {
    console.log("test")
    // console.log(this.dropdownTarget)
  }

  reveal(event) {
    console.log(event.currentTarget.value.includes("Pills"))


    if (event.currentTarget.value === "💊Pills") {
      console.log("je suis dans pills")
      this.pillsTarget.classList.toggle("d-none")
      this.caresTarget.classList.add("d-none")
      this.exercisesTarget.classList.add("d-none")
    } else if (event.currentTarget.value === "❤️‍🩹Cares") {
      this.pillsTarget.classList.add("d-none")
      this.caresTarget.classList.toggle("d-none")
      this.exercisesTarget.classList.add("d-none")
    } else if (event.currentTarget.value === "🚴Exercises"){
      this.pillsTarget.classList.add("d-none")
      this.caresTarget.classList.add("d-none")
      this.exercisesTarget.classList.toggle("d-none")
    }

    console.log("hello")
  }



}
