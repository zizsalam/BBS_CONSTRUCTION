# Pin local modules
pin_all_from "app/javascript/controllers", under: "controllers"
pin_all_from "app/javascript/components", under: "components"

# Pin external libraries
# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
# config/importmap.rb
<<<<<<< HEAD
=======
pin "trix"
pin "@rails/actiontext", to: "actiontext.js"
>>>>>>> 1f4c43de2565a15b48feefa646368befaf4a5c08
