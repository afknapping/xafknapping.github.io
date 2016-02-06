---
layout: post
title: "Syntax for humans"
published: true
tags:
comments: false
poster:
postercredit: 
image:
caption:
quote:
summary:
link:
---

TODO: get to point, outline, poster with codegram

Syntax

I hate XML syntax. Always have. The first time I wrote HTML somewhat a decade ago, my brain went "UGH! :("

I hate C syntax. Always have. The first time I wrote CSS somewhat a decade ago, my brain went "UGH! :("

C and XML syntax are not made for humans to read or write. They are made for machines to read. So of course I consider all abstraction languages that remove the machine-speak from speaking a blessing.

Furthermore, as most designers, I kind of consider *all* whitespace as "significant". So of course, as most designers, i have a weak spot for languages which give line endings and indentation meaning. Trying out some Python was fun. When it makes sense I will certainly switch to CoffeeScript. And I just don't get how people can write SCSS or LESS, when there is the SASS syntax.

So I thought I write up some quick comparisons and collect some strengths and weaknesses.

## HTML vs HAML

In HTML, it doesn't have any meaning where you put line breaks. Tags have to be closed by closing tags.

    <h1 class="title">Whitespaaaaace</h1>
    <p id="introduction">Hello World!</p>

Is the same as 
    
    Dfkjsdlf

Haml removes the clutter and ambiguity and marries writing CSS selectors to, well, actual CSS syntax:

    %h1.title Whitespaaaaace
    %p#introduction Hello World!

or
    
        %h1.title
          Whitespaaaaace
        %p#introduction
          Hello World!

The standard element in haml is the `div`. So writing

  .header
    .navigation
      .menu
      #avatar

produces 

    <div class="header">
      <div class="navigation">
        <div class="menu">  </div>
        <div id="avatar"> </div>
      </div>
    </div>

Personally I think, on this point already, with XML syntax you're fucked.

Of course you can *manually* keep track of correct closing tags. But is that something I want to occupy my brain with? Nope. Do I recognize "wrong" indentation by the produced behaviour? Nope.

So it makes sense to *manually* mark functionally correct structure:

    <div class="header">
      <div class="navigation">
        <div class="menu">  </div>
        <div class="avatar">  </div>
      </div> <!-- .navigation -->
    </div> <!-- .header -->

But is that something I want to occupy my brain with? Nope. Do I recognize "wrong" marking by the produced behaviour? Nope.

Besides faster to read and write, Haml takes care of all of those problems:

- there are no closing tags, so there is nothing to mark
- changing the indentation changes output
- indentation has very strict rules (and Haml will tell you instantly if you're abusing them)
- it renders to vanilla HTML and back

Thanks. I am sold. But there is more.

It is super easy to do some basic logic with Ruby and render some data from variables (given they somehow get into the system, more on that later):

    \- users each |user|
      .user--title
        = user.name

If your users are Alice, Bob and Zuul, the output will be

    <div class="user--title">
      Alice
    </div>
    <div class="user--title">
      Bob
    </div>
    <div class="user--title">
      Zuul
    </div>

Did I mention I am sold?

## CSS vs. SASS

Let's style our first example:

    .title { 
      font-size: 2em;
      }
    #introduction {
      padding: 1em;
      background-color: #ddd;
      }

Yuck. What is it with all the curly braces and semicolons?! Ah, right. The machine needs that. Here is the same in SASS:

    .title
      font-size: 2em
    #introduction
      padding: 1em
      background-color: #ddd

A breeze, isn't it? Cascading works analog to Haml:

    .title
      font-size: 2em
      #introduction
        padding: 1em
        background-color: #ddd

produces a different output because of the indentation:

    .title { 
      font-size: 2em;
      }
    .title #introduction {
      padding: 1em;
      background-color: #ddd;
      }

Yup, I am sold already. But there is more.

While Ruby can be used to generate stuff, I don't think this is what one should normally do. But there are variables, mixins and extends. Let's have a look.

    $light-grey: #ddd

    @mixin grey-background
      background-color: $light-grey

(continue...)

    

---

Also, since working at Jimdo I have some serious contact with PHP. I don't know how much of all the bad things you read about PHP are "true". But I know that 