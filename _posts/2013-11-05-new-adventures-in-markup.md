---
layout: post
title: "New adventures in markup"
published: false
tags:
comments: false
image:
caption:
quote:
summary:
link:
---

So I recently stumbled over [Simple Naming for Modular CSS Class Names](http://www.hagenburger.net/BLOG/Modular-CSS-Class-Names.html) by Nico Hagenburger.

If I had to rephrase the way I implement it, this is what it would sound like:

- no cascading
- no styling of elements (classes only)
- long, meaningful, verboose, semantic classnames (of course all lower case and dashed)
- double-dashes for modular namespacing
- heavy use of SASS extends, even for single attributes

Especially styling elements directly as cascades of on-the-fly-classes has been a huge pain in past and present projects. When you haven't built the markup yourself, such code is incredibly hard to read because you  have to constantly compare the markup-structure with the CSS.

It also invites to just overwrite styles with lots of context specific rules, adding margins and whatever else crosses your way without any maintainable pattern.

As Henrik Joreteg writes in [Human Javascript](http://humanjavascript.com/):

> Code is much more read than written.

Okay, he might [not be the first one to write that](http://stackoverflow.com/questions/3455488/code-is-read-more-than-it-is-written). It still got me thinking again how useful classnames like `.btn-bg` or `.l-bl` really are when I haven't looked at them for two weeks.

Additionally, even when you know that the abbrevations mean, they use up cognitive capacity. Your brain constantly needs to decode that. It's exhausting.

Writing a classname like `.country-selection--country-list--flag` might feel verbose and inefficient at first. But if you put it in actual numbers, that is of course total nonsense. How much more time do you *really* put up? It's measurable in dozens of seconds.

When you come back to that code two weeks later, everything still makes sense. Whenver I *didn't* understand something at first reading, I actually found an inconsistency in my naming pattern.

This combines perfectly with SASS extends:

    %flags
      display: inline-block
      width: 1.33em
      height: 1em
    %highligt
      font-style: italic
      color: lighten($color--main-copy)
    %padding--main-module
      padding: 0.5em

    .country-selection
      @extend %padding--main-module
    .country-selection--country-flag
      @extend %flags
    .country-selection--country-name
      @extend %highlight

Btw: these extends pay off *the second time they are used*. Not directly by using them. But when it comes to making changes, you now change one single place. More on that "changes in one place" pattern in another post, though.

## Exceptions

I found exceptions to the "never style elements" rule occuring whenever code is generated in some way.

For example you may want to directly render a type from the data as a class. There may be thirty categories of something you want to reflect in styling.

Or to stay with the example from above: render the enabled countries as classnames.

Another thing are abstraction sets like Markdown or Textile, where you cannot write classes. In that case, there is no other way than to style elements. However, generated content should always be contained by a definite container and styled as such, so there is as little cascading as possible. Extends are your friend here, too.

## Recommendation

Really try it out. If you find it not practicable, ten minutes of search-and-replace will do it. On the other hand you might get really really readable code.