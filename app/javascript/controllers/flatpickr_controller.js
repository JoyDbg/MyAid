import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ 'startDateInput']
   // Mettre endDateInput en static target si j'ai une date de fin


  connect() {
    flatpickr(this.startDateInputTarget, {
    inline: true // calendrier apparent 
})
  }
}
