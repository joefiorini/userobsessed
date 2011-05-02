---
title: Shopify Developer Tools
date: 2011-01-19
category: tips-and-tricks
layout: post
---

I have done a bit of [Shopify](http://www.shopify.com) development since starting [densitypop](http://blog.densitypop.com). When I build Ruby on Rails apps, I can run the site locally to test my work before I commit it. Since Shopify is a hosted service, this is much more difficult. In the past I used [Vision](http://vision.shopify.com/), a tool that emulates the Shopify backend through data fixtures and a server written in Ruby. It worked great until Shopify stopped updating it. Now, [according to the wiki](http://wiki.shopify.com/Vision#Vision_Troubleshooting), Vision lacks a lot of features that help make development and maintainance much easier. As far as I'm concerned, it's dead.

After that I started using "select all/copy & paste" instead. Huge pain. What I really wanted was the ability to save a file and have it automatically uploaded to my store. With the new [Shopify API](http://www.shopify.com/developers) and [Watchr](https://github.com/mynyml/watchr) this was just a small Ruby script away.

{% highlight ruby %}
    require 'shopify_api'

    watch('(?:templates|layout|assets)/.*\.liquid') do |match|
      puts "Updating %s..." % [match[0].inspect]
      upload_template(match.to_s)
    end

    def upload_template(file)
      ShopifyAPI::Base.site =
        "http://{key}:{secret}@{domain}.myshopify.com/admin/"
      asset = ShopifyAPI::Asset.find(file)
      asset.value = File.read(file)
      asset.save
    end
{% endhighlight %}

(See <https://gist.github.com/787359> for the latest version of this script).

### Usage

1. Create a new directory for your Shopify app.
2. Create a directory called templates to store your Liquid templates.
3. Install watchr via `gem install watchr`.
4. Create a file called `watch.rb` in the root of your Shopify app.
5. Paste the above code into `watch.rb`. Make sure you add your API key and password.
6. Run `watchr watch.rb`; change a template and save it.

Voila! You can now enjoy rapid Shopify development. I may be adding some more features soon, so be sure to check back.

### Caveats

This process is a very bad idea for team development. I do not recommend it if you have multiple developers working on Shopify sites. This is equally bad if you are upgrading an existing site that needs to stay public; in that case, look into setting up a test store and do the work in there. However, if you're the sole coder this is a great way to work.

