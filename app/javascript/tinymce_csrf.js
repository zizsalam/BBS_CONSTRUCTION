document.addEventListener("turbo:load", function() {
  var token = document.querySelector('meta[name="csrf-token"]')?.getAttribute('content');
  if (token) {
    tinymce.util.XHR.on('beforeSend', function(e) {
      e.xhr.setRequestHeader('X-CSRF-Token', token);
    });
  }
});
