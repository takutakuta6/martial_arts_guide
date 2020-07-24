require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

require("bootstrap/dist/js/bootstrap")
require("@fortawesome/fontawesome-free/js/all")

document.addEventListener("turbolinks:load", () => {
  $('.drawer').drawer();
})