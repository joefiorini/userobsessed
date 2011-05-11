---
date: 2011-05-10 00:12 AM
title: Pasting in terminal Vim
layout: post
category: tips-and-tricks
tweet: Make pasting text in command line Vim suck less.
---

{% inserted 2011-05-10 01:59 PM %}
UPDATE: There is great discussion going on about pasting in Vim on Hacker News. [Join the conversation][hn] if you have questions or thoughts.
{% endinserted %}

I like using Vim {% deleted 2011-05-10 10:32 AM %}on the command line{% enddeleted %} {% inserted 2011-05-10 10:32 AM %}in a terminal emulator{% endinserted %}[^1] rather than through a GUI. I'm a fairly distracted person, and I've found that a strong single-tasking workflow helps me stay focused. Most of my day is spent in one terminal window with one browser window open.

### The problem

Unfortunately, pasting in {% deleted 2011-05-10 10:32 AM %}command-line{% enddeleted %} {% inserted 2011-05-10 10:32 AM %}terminal{% endinserted %} Vim sucks. When I paste a nicely formatted block of Ruby code I end up with something like this:

{% highlight ruby %}

    add_task_address=<YOUR TODO APP EMAIL ADDRESS>
    task=$*

    if [ $task ]; then
      # Send email with task as subject
      echo "" | mail -s $task $add_task_address
        if [ $? ]; then
            echo "Successfully added task \"$task\""
              fi
              else
                mail -s "Inbox" $import_tasks_address
                fi

{% endhighlight %}

Vim can't determine the difference between normal keystrokes and pasted text. Therefore, certain character combinations could execute commands instead of showing up as text (GUI Vim implementations such as MacVim understand the difference). The solution is easy: tell Vim that you're about to paste, paste, then tell Vim you're done.

{% highlight vim %}
    <ESC>
    :set paste
    i <D-V> " Command + v
    <ESC>
    :set nopaste
    i
{% endhighlight %}

### The solution

This works, but if you do much pasting it gets old fast. To automate this, I created a command to do it all for me:

{% highlight vim %}
    <C-O>:set paste<CR><C-r>*<C-O>:set nopaste<CR>
{% endhighlight %}

And then mapped it to `<Leader>v` in insert mode:

{% highlight vim %}
    imap <Leader>v  <C-O>:set paste<CR><C-r>*<C-O>:set nopaste<CR>
{% endhighlight %}

N.B. this command only works in Vim 7.3 or later. It's written for insert mode, but it shouldn't be hard to create a normal mode command that works in a similar manner.

### Want to know how it works?

That should give you a good excuse to get familiar with Vim's [`:help`][help] command or [practice Googling][google]. Everything in this command is native, documented Vim. Have fun!

[help]: http://vimdoc.sourceforge.net/htmldoc/help.html
[google]: http://bit.ly/lnA8oD
[hn]: http://news.ycombinator.com/item?id=2532350

*[N.B.]: Note well

[^1]: Updated to clarify what I mean by "command-line" Vim
