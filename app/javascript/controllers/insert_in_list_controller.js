import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-list"
export default class extends Controller {
  static targets = ['form', 'items']

  connect() {
    console.log(this.formTarget, this.itemsTarget);
  }

  send(event) {
    event.preventDefault();
    fetch(this.formTarget.action, {
      method: 'POST',
      headers: { Accept: 'application/json' },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        // trocar o form velho pelo form novo
        this.formTarget.outerHTML = data.form
        if (data.inserted_item) {
          this.itemsTarget.insertAdjacentHTML('beforeend', data.inserted_item)
        }
      })
  }
}
