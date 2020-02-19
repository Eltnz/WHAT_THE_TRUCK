require("turbolinks").start()
require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import flatpickr from "flatpickr"
import 'flatpickr/dist/flatpickr.css'
import { setFlatpickr } from '../plugins/flatpickr.js'

  // Call your JS functions here
  console.log("turbo loaded")
  setFlatpickr();
