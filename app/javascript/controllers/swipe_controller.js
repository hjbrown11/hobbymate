import { Controller } from "stimulus"
import Hammer from "hammerjs"

export default class extends Controller {
  static targets = ["card", "accept", "reject"]

  connect() {
    console.log(this.acceptTarget)

    // Create a manager to manager the element
    this.manager = new Hammer.Manager(this.cardTarget);

    // Create a recognizer
    this.swipe = new Hammer.Swipe();

    // Add the recognizer to the manager
    this.manager.add(this.swipe);

    // Declare global variables to swiped correct distance
    let deltaX = 0;

    // Subscribe to a desired event
    this.manager.on('swipe', (e) => {
      deltaX = deltaX + e.deltaX;
      const direction = e.offsetDirection;
      const translate3d = 'translate3d(' + deltaX + 'px, 0, 0)';

      if (direction === 4 || direction === 2) {
        this.cardTarget.style.transform = translate3d;
      }

      if (deltaX>200) {
        this.acceptTarget.click()
      }

      if (deltaX<-200) {
        this.rejectTarget.click()
      }
    });
  }
}
