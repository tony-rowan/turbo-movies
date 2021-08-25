import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['content', 'loading'];

  displayLoading(event) {
    this.loadingTarget.classList.remove('hidden');
    this.contentTarget.classList.add('hidden');
  }

  displayContent() {
    this.loadingTarget.classList.add('hidden');
    this.contentTarget.classList.remove('hidden');
  }
}
