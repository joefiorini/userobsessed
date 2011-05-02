---
date: April 15, 2011
title: Running RSpec Rails Tests - Without Rails
source: http://www.adomokos.com/2011/04/running-rails-rspec-tests-without-rails.html
layout: post
category: productivity
---

> The application was a little light on tests, so I asked the other developers why they are not writing more specs? The answer was all too familiar: "it just takes forever to run them". Yup, Rails had to load up, schema needed to be verified, the entire universe had to be included and 30 seconds later our specs were executed.

One of the largest pains when testing in Rails is the amount of time it takes to run tests. To be able to get a good flow going, test suites should run in _no more than 2 seconds_. However, when including Rails in your tests there's an automatic 7 second overhead while Rails loads. A few months ago [Attila Domokos](http://www.adomokos.com) and I started finding some practices to be able to run RSpec tests without Rails. He has taken that further and [now runs 128 tests (including controllers and models) in less than 2 seconds](http://www.adomokos.com/2011/04/running-rails-rspec-tests-without-rails.html). Nice work Attila!

