---
date: April 18, 2010
title: HTML5 Video on the iPhone
category: tips-and-tricks
layout: post
---

I said I'd update when I made my HTML5 video demo play on my iPhone. Well, today is a sweet day. Thanks to the good people at [PandaStream](http://www.pandastream.com), I was able to get it working. The key is twofold:

The video must not only be encoded H.264, but it needs a QuickTime supported container type. This works fine with FlowPlayer (the Flash player we're using).
The video's extension must be mp4 or mov. Even with the correct encoding and container, it cannot be flv.
One interesting thing to note: on the iPhone HTML5 videos do not play in-browser, but open up QuickTime instead. They do play in-browser on the iPad.

If you happen to be using PandaStream for encoding (which I highly recommend), or if you encode videos with ffmpeg and libavcodec, check [Panda's documentation](http://www.pandastream.com/docs/) for the [encoder settings](http://www.pandastream.com/docs/) you need.

Oh happy day!
