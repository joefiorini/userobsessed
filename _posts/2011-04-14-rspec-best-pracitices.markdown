---
date: April 14, 2011
title: RSpec Best Practices
source: http://www.methodsandtools.com/tools/tools.php?rspec
layout: post
category: testing
---

> RSpec is a great tool in the behavior driven design process of writing human readable specifictions that direct and validate the development of your application.

[Jared Carroll](http://blog.carbonfive.com/) gives us [a list of practices he follows](http://www.methodsandtools.com/tools/tools.php?rspec) when writing tests in RSpec. One of the major advantages of RSpec over Test/Unit is the amount of work they've put into generating friendly documentation from your specs. Good documentation stems from understanding your code, which ultimately leads to increased trust and easier maintenance.  The practices in this post give you a starting point for being able to document your app's behavior with specs. Just make sure you run your specs with `--format documentation` (or add it to the .rspec file in the root of your project to make it the default).

