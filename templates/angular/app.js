'use strict';

var app = window.angular.module('app', [])
    .controller('controller', ['$scope', require('./app.controller.js')])
    .controller('about', ['$scope', require('./app.about.js')]);