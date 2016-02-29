---
layout: post
title: relative quantification of health and the myth of the streak                                 
---

Cupcake ipsum dolor. Sit amet I love bonbon* bear claw tootsie roll jelly.* I love chocolate ice cream* chupa chups I love. Gummi bears I love wafer marzipan jujubes sweet tootsie roll bear claw. Dessert gingerbread dragée sweet roll liquorice fruitcake marzipan donut. I love I love sugar plum marshmallow jujubes. Cotton candy jujubes oat cake chocolate cake chocolate cake marshmallow bear claw chocolate cake. Jelly cupcake gingerbread I love cupcake sesame snaps apple pie oat cake.

My [post on refusing streaks](/streaks-no-thank-you-happy-to-suck/) spawned a little [discussion on twitter](https://twitter.com/filtercake/status/698434199305515008), which made me read [Rocko's post on what his year of open source contribution has meant for his life](http://kowalski.gd/blog/what-happened-while-contributing-to-open-source-on-a-daily-basis-for-one-year). While his post took the streak of contributing 365 days in a row as the hook, my conclusion was that the streak itself had very little to do with the outcome (paraphrased):

> A streak like that is an effect, not the cause. The whole thing hit home by combining something that is *fun* with something that is also *successful*. Somebody might personally identify a streak as causation – from the outside I cannot distinguish it from correlation.

> What really made the impact, was

> - doing things regularly
> - planning and distributing them well
> - picking the right battles
> - choosing the right projects
> - finding good people
> - contributing useful work
> - and getting appreciated for it

After looking into a specific case of streak like that, I'm even more convinced than before that the streak as a binary quantification of success is not just nonsense, but *dangerous*. People are not binary.

On my long road of adopting my [Health First™](/health-first/) doctrine I am very much looking for quantifiable steps. Yes, I want to do something for my health *every day*. But again, I am not a computer, so one single binary value won't cut it.

In [Health first](/health-first/) I wrote this:

> observe if and how a health budget of 10% of waking time might work. That budget would be for both mental and physical health, so drawing and reading for example are part of it.

The observing turned out:

- Yes, it might work.
- That alone is not enough.
- And 10% is *a lot*. If I get to do 45 minutes on average, that would not be too bad already.

Another puzzle piece:

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Perhaps the most important startup equation? (Constant improvement trumps all)<br><br>As spotted at <a href="https://twitter.com/homebrew">@homebrew</a> HQ. <a href="https://t.co/PQcHdwossx">pic.twitter.com/PQcHdwossx</a></p>&mdash; Jed Christiansen (@jedc) <a href="https://twitter.com/jedc/status/667567495465689088">November 20, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

These numbers have not left me since I saw them last year. If you accept your current state in life as the result of a steady multiplication of what happened so far, these number make total sense on a personal level. (A good example is [`luck = preperation * opportunity`](https://encrypted.google.com/search?q=luck+%3D+preparation+*+opportunity&hl=en&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjMh4Sto5vLAhVoAZoKHbmbA6QQ_AUIBygB&biw=748&bih=801#hl=en&tbm=isch&q=luck+preparation+opportunity)).

Then again, 1% is a actually *a lot*. What happens if we take just 1/10 of it?

```
0.999 ^ 365 = 0.69
1.001 ^ 365 = 1.44 
```

Huh. So, without having a unit, let's say I could have some weird generic health index. If I up that index 0.1% per day, I would have grown it by 44% within a year. Sounds pretty awesome. And sounds *doable*, too. But 365 days a year are the streak I loathe so much, so let's adjust for the day off every week:

```
1.001 ^ 313 = 1.36
```

That is still more than a third of growth within a year, *plus* I removed the stress of having to maintain a streak.

Now I have something I can track and categorize. I've made up the following set of loose rules:

- A day where I do nothing for my health is a 0.999
- If I fulfill more than 30 minutes of my health budget, that adds   0.001 to the day. More than 60 minutes add 0.002 (making it a 1.001).
- Eating sugar or processed food removes 0.001
- having more than 2 large coffees or having coffee after 14h removes 0.001
- If I drink more than 3 litres of water, that adds 0.001 – if I drink less than 2 litres it removes 0.001

...and so forth. Also, a day cannot be over 1.001, to not get too fixated on the numbers instead of what they mean. (Not to mention that this is all complete BS from a scientific, rational point of view.)

I can now loosely track and incorporate all indicators which seem valuable to my health, and at the end of the day mark it either an 1.001 or an 0.999.

Now I have the benefit of a binary, *meaningful*, quantitative, longterm* indicator, combined with the qualitative analysis of *all* the components I deem relevant for my health.

*(In case you're wondering: maybe it's me, but if parenting has told me anything thing, it is to think in years, not weeks or months.)

I guess it is pretty clear what I have to do next: Learn all kinds of [JavaScript EE](https://medium.com/@rajaraodv/step-by-step-guide-to-building-react-redux-apps-using-mocks-48ca0f47f9a#.qhr854afy) and ruin a week's sleep by building a terrible dysfunct app prototype ¯\\\_(ツ)\_/¯