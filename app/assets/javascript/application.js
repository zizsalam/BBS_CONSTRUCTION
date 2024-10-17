import "@hotwired/turbo-rails";  // Keep this only if you're using Turbo, else remove it
import "controllers";  // Ensure this is not causing issues
import "@popperjs/core";  // Only if needed
import "bootstrap";  // Only if needed
import "trix";  // Ensure Trix is imported
<<<<<<< HEAD
=======
import "@rails/actiontext";  // Ensure ActionText is imported
>>>>>>> 1f4c43de2565a15b48feefa646368befaf4a5c08


import tinymce from 'tinymce/tinymce';
import 'tinymce/themes/silver';
import 'tinymce/icons/default';

<<<<<<< HEAD

=======
>>>>>>> 1f4c43de2565a15b48feefa646368befaf4a5c08
document.addEventListener('turbolinks:load', function() {
  tinymce.init({
    selector: '.tinymce',
    plugins: 'lists link image code',
    toolbar: 'undo redo | formatselect | bold italic backcolor | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | removeformat | code'
  });
});
