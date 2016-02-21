'use strict';

var googleAnalytics = require('./ga.js');

var controller = require('./app.controller.js');
var about = require('./app.about.js');

var app = window.angular.module('app', [])
    .controller('controller', ['$scope', controller])
    .controller('about', ['$scope', ]);
