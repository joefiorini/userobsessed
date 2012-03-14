---
date: 2012-03-14 01:09 AM
title: Why I Love Rails 3.1 Built In Asset Packaging
source: 
layout: post
category: master-your-tools
---

For far too long, Rails' `application.js` has been a junk drawer for Javascript. Having less files is ideal, after all it's much faster to [download one large file than 10 small ones][downloads]. The problem is, a huge file with lots of code is very difficult to maintain. It would be much easier to break that up into a number of small files, just like we do with with our Ruby code.

There are a number of libraries, called "asset packagers", that combine multiple Javascript and/or CSS files into one large file for use in production. [Sprockets, from 37signals][sprockets] is one such library. With Sprockets we get the best of both worlds: lots of small files for developing, but only one file for the user to download. In Rails 3.1 and up, Sprockets is part of the framework so we get this helpful behavior out of the box.

In Rails 3.1 and up, `application.js` serves a new purpose. Instead of a junk drawer of spaghetti Javascript, it's now a container of well organized client code (see [Ryan Bigg's Asset Pipeline guide][guide] for more on how this works). This organization will make it much easier to find problems in static files (make sure you [set debug: true][tips]). You no longer have an excuse for disorganized client-side code.

[downloads]: http://www.stevesouders.com/blog/2008/03/20/roundup-on-parallel-connections/
[sprockets]: http://getsprockets.org/
[tips]: http://dev.af83.com/rails/2-require-tips-rails-31-assets-bundling-sprockets/2011/06/14
[guide]: http://guides.rubyonrails.org/asset_pipeline.html
