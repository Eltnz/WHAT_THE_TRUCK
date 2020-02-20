require("turbolinks").start()
require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import flatpickr from "flatpickr"
import { setFlatpickr } from '../plugins/flatpickr.js'
import { initMapbox } from '../plugins/init_mapbox';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';



  // Call your JS functions here
  console.log("turbo loaded")


document.addEventListener('turbolinks:load', () => {
  setFlatpickr();
  initMapbox();
})
