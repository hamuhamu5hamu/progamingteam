// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

// import Rails from "@rails/ujs"
// import Turbolinks from "turbolinks"
// import * as ActiveStorage from "@rails/activestorage"
// import "channels"
// import 'calendar'

// $(function () {
//     $(document).on('turbolinks:load', function () {
//         function eventCalendar() {
//             return $('#calendar').fullCalendar({});
//         };
//         function clearCalendar() {
//             $('#calendar').html('');
//         };
//         $(document).on('turbolinks:load', function () {
//           eventCalendar();
//         });
//         $(document).on('turbolinks:before-cache', clearCalendar);
//     });
// });

// Rails.start()
// Turbolinks.start()
// ActiveStorage.start()

//= require jquery
//= require moment
//= require fullcalendar

//= require jquery
//= require jquery_ujs

// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";
import "calendar";
import "humbargeer";

Rails.start();
Turbolinks.start();
ActiveStorage.start();
