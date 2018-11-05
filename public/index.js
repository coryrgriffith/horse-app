/* global Vue, VueRouter, axios */

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      message: "Welcome to Race Dat Horse!",
      horses: []
    };
  },
  created: function() {
    axios.get('/api/horses').then(function(response) {
      this.horses = response.data;
    }.bind(this));
  },
  methods: {},
  computed: {}
};

var AllHorsesPage = {
  template: "#all-horses-page",
  data: function() {
    return {
      message: "Welcome to Vue.js!",
      horses: []
    };
  },
  created: function() {
    axios.get('/api/horses').then(function(response) {
      this.horses = response.data;
    }.bind(this));
  },
  methods: {},
  computed: {}
};

var router = new VueRouter({
  routes: [
    { path: "/", component: HomePage },
    { path: "/horses", component: AllHorsesPage }
  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router
});