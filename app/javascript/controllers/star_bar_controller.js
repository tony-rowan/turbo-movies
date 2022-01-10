import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["star"];
  static classes = ["hover"];

  enter(event) {
    this._fillToStar(event.params.starIndex);
  }

  leave() {
    this._fillToStar(-1);
  }

  _fillToStar(star) {
    this.starTargets.forEach((target, index) => {
      if (index <= star) {
        target.classList.add(this.hoverClass);
      } else {
        target.classList.remove(this.hoverClass);
      }
    });
  }
}
