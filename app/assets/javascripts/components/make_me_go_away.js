;(function () {
  "use strict"

  Vue.component("vue-make-me-go-away", {

    template: "#make-me-go-away-template",

    data: function () {
      return {
        isVisible: true
      }
    },

    methods: {

      makeGoAway: function () {
        var self = this
        self.isVisible = !self.isVisible
      }
    }
  })
})();
