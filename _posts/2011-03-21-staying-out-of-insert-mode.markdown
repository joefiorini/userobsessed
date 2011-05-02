---
Date: March 21, 2011
source: http://cloudhead.io/2010/04/24/staying-the-hell-out-of-insert-mode/
title: Alexis Sellier on Vim's insert mode
layout: post
category: tips-and-tricks
---

> Insert mode is vi's weakest mode. In this mode, it's no better than any other
> editor, and you may as well be using any other editor. Vi's true power lies in
> its 'Normal mode'. Yes, inserting text is not normal in viland. The more time
> you spend in Normal mode, the more superpowers you will have. Trust me, it
> doesn't get any less normal than Normal mode.

The best way I've found to use Vim is to enter insert mode for short bursts of typing and quickly going back to normal mode. Not only is normal mode most powerful, but I also get a more finite (and predictable) undo history.

> There are two other ways to get out of insert mode:
> 
> Ctrl-\[
> 
> and
> 
> Ctrl-C

I use Ctrl-C to exit insert mode. One thing I discovered is that Ctrl-C cancels any pending edits. 90% of the time this is not a problem for me. However, for that last 10%, I've added this to my `.vimrc`:

{% highlight vim %}
    inoremap <C-c> <ESC>
{% endhighlight %}

