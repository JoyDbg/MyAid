import { Controller } from "@hotwired/stimulus"
import Swal from 'sweetalert2'


// Connects to data-controller="alert-confirm-care"
export default class extends Controller {
  connect() {
    Swal.fire({
      position: 'top-end',
      icon: 'success',
      title: "Great! You've taken care of yourself!",
      showConfirmButton: false,
      timer: 2100
    })
  }
}
