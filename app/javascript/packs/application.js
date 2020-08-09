/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import 'core-js/stable'
import 'regenerator-runtime/runtime'

import Rails from '@rails/ujs'
Rails.start()

import Turbolinks from 'turbolinks'
Turbolinks.start()

require('jquery')
require('bootstrap')
require('raty-js')

import 'src/books/read_more'
import 'src/books/sorting'
import 'src/line_items/decrement_quantity'
import 'src/line_items/increment_quantity'
import 'src/line_items/update_quantity'
import 'src/orders/checkout/use_billing_address'
import 'src/orders/orders/filter'
import 'src/reviews/raty'
import 'src/settings/remove_account'

require('trix')
require('@rails/actiontext')
