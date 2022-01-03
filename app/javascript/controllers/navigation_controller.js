import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['content', 'loading', 'link'];
  static classes = [ 'selected' ];

  displayLoading(event) {
    this.loadingTarget.classList.remove('hidden');
    this.contentTarget.classList.add('hidden');

    let value = event.detail.url;

    this.updateLinks(value);
  }

  displayContent() {
    this.loadingTarget.classList.add('hidden');
    this.contentTarget.classList.remove('hidden');
  }

  updateLinks(value) {
    this.linkTargets.forEach((link) => {

      link.classList.remove(this.selectedClass);
      if (link.href === value) {
        link.classList.add(this.selectedClass);
      }
    })
  }
}
