// Get a reference to an element
const square = document.querySelector('.square');

// Create a manager to manager the element
const manager = new Hammer.Manager(square);

// Create a recognizer
const Swipe = new Hammer.Swipe();

// Add the recognizer to the manager
manager.add(Swipe);

// Declare global variables to swiped correct distance
const deltaX = 0;
const deltaY = 0;

// Subscribe to a desired event
manager.on('swipe', function (e) {
  deltaX = deltaX + e.deltaX;
  const direction = e.offsetDirection;
  const translate3d = 'translate3d(' + deltaX + 'px, 0, 0)';

  if (direction === 4 || direction === 2) {
    e.target.innerText = deltaX;
    e.target.style.transform = translate3d;
  }
});
