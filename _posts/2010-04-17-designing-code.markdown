---
date: April 17, 2010
source: http://www.slideshare.net/orderedlist/designing-code
title: Designing Code
layout: post
category: user-experience
---

[Steve Smith](http://www.orderedlist.com/) gave a great talk at [Great Lakes Ruby Bash](http://www.greatlakesrubybash.com/) on designing code. Not MVC vs. MVP vs. insert your architecture here, but applying visual design techniques to your code. This was very poignant for me with my recent interest in learning visual design. I try to make my code as easy to look at as possible. Steve gave some extremely useful advice such as:

- Clean up other team member's code when you have trouble following it
- Name variables and methods positively
- Avoid words like "inactive", "not", or "disallow"
- Always consider the user experience of your code

In my experience, the most useful technique Steve mentioned was something I like to call "code by wishful thinking". When I start writing new code I

- Write the code as I think it should be implemented
- Stare at it for a minute or so
- Modify until the API I've created would make sense to someone coming in to this view the first time
- Implement the methods called from my view in models, presenters, or controller

I'm not perfect at this, but it's a practice I try to follow when writing new code. Check out the [slides from Steve's](http://www.slideshare.net/orderedlist/designing-code) talk and start improving the design of your code today!
