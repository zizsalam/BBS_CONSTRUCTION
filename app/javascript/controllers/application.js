import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

document.addEventListener('turbo:load', function() {
  const userMenuButton = document.getElementById('user-menu-button');
  const userMenu = document.getElementById('user-menu');

  if (userMenuButton && userMenu) {
    // Toggle user menu on button click
    userMenuButton.addEventListener('click', function(event) {
      userMenu.classList.toggle('hidden');
      const expanded = userMenu.classList.contains('hidden') ? 'false' : 'true';
      userMenuButton.setAttribute('aria-expanded', expanded);
      event.stopPropagation(); // Stop click event from bubbling up
    });

    // Close the menu when clicking outside
    document.addEventListener('click', function(event) {
      if (!userMenuButton.contains(event.target) && !userMenu.contains(event.target)) {
        userMenu.classList.add('hidden');
        userMenuButton.setAttribute('aria-expanded', 'false');
      }
    });

    // Prevent closing when clicking inside the menu
    userMenu.addEventListener('click', function(event) {
      event.stopPropagation();
    });
  }
});
