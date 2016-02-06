---
layout: post
title: "Guardian Device"
published: true
tags:
comments: false
image:
caption:
quote:
summary:
link:
---

I've been following [The Guardian Project](https://twitter.com/guardianproject) for a long time. They are...

> ...building an open-source secure smartphone-based on Android for the good of all mankind.

And since [Robin]() lend me his spare Galaxy Nexus a couple weeks ago, I thought this is the perfect way to finally test Guardian.

I've had very nice experiences with just hitting people on twitter instead of wading through websites, so I gave that a shot and got instant answer (after a couple of questions):

<blockquote class="twitter-tweet"><p><a href="https://twitter.com/filtercake">@filtercake</a> Here is our latest full-paranoid setup guide efforts: <a href="https://t.co/phTRpJcTHr">https://t.co/phTRpJcTHr</a></p>&mdash; The Guardian Project (@guardianproject) <a href="https://twitter.com/guardianproject/statuses/400664909702529024">November 13, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

So here is the log of my from-scratch experience, including all the wonderous inner monologue:

## Step 1

I open [How To Build Your Own Libro](https://dev.guardianproject.info/projects/libro/wiki/How_To_Build_Your_Own_Libro).

![]({{site.baseurl}}/images/How-To-Build-Your-Own-Libro.png)

What the hell is "Libro"? Later. I read something about Nexus 7 and Kindle Fire and worry if this the right link. The headline "From 0 to Firmware" sounds promising though, and right there it says "Test secure GuardianROM on Nexus 4 or Galaxy Nexus". Awesome. Time to check [what "Libro" is](https://dev.guardianproject.info/projects/libro):

> LiBro aka the FreeBook aka the Little Brother

> The Libro is an affordable, low-cost companion device, designed to defend the privacy of its user. It has no camera or microphone, and so cannot be used as an unwitting surveillance tool. It utilizes a streamlined, locked-down version of Android, that includes no closed-source applications or links to Google, Amazon or other corporate account. It utilizes full-disk encryption, built-in firewalls, and other secure by design features. Finally, it comes stock with the full suite of Guardian Project applications and add-ons, for secure communications and information access, including support for Tor, Off-the-Record Encryption, and a full Debian OS subsystem. The Libro can be used on traditional internet-enabled wifi access points, as well as mesh network settings, where the network is not trusted or available.

That sounds awesome. So back to the build page

## Step 2

I open [Devices — Guardian Rom](http://shadowdcatconsulting.com/devices/) on the somewhat suspicious-sounding domain *shadowdcatconsulting.com* [sic!]:

![]({{site.baseurl}}/images/Devices-Guardian-Rom.png)

Now, this is A+. Brillant. I follow my device...

![]({{site.baseurl}}/images/Galaxy-Nexus-Guardian-Rom.png)

...am somewhat disappointed about a "coming soon" message (don't really care *what* is coming soon... it is equivalent to "abandoned webproject") and see "Linux installer". Jesus. Do I need to install Linux to flash the phone? Well, just follow the white rabbit:

![]({{site.baseurl}}/images/Galaxy-Nexus-Installer.png)

Mmm-kay. I hit download and the package is roughly 170 MB in size.

## Step 3

There is for info for verifying downloads and stuff, but I skip that for now – I just want to see it running.

A link *Guardian Rom Manual* seems to be what I am looking for. It opens this page: 

![]({{site.baseurl}}/images/Documentation-Guardian-Rom.png)

ODF? PDF? Okay, bring on the PDF:

![]({{site.baseurl}}/images/guardian-rom-Documentation-pdf.png)

The install section features the "easy way" and the "manual way". The easy way uses a Windows installer. Neither do I have a Windows system, nor was a windows installer acutally available (see Step 2). So it looks like the manual way is the only option for me. It could be worse, since I am familiar with the terminal. Still I stumble at...

> reboot into bootloader mode “adb reboot bootloader”

## Step 4

[Turns out](http://www.addictivetips.com/mobile/what-is-adb-and-how-to-install-it-android/), "adb" is part of the Android SDK, which I of course [download](http://developer.android.com/sdk/index.html#download) (about 500MB).

I find the folder `platform-tools` in which `adb` and `fastboot` are located. I copy them to the install folder with the rom image and do

    $ ./adb

which brings up the usual help stuff, so looks like I can contin– ah, I guess I should finally connect the device to the computer, right? Okay, done.

    $ ./adb reboot bootloader

prints:

    * daemon not running. starting it now on port 5037 *
    * daemon started successfully *
    error: device unauthorized. Please check the confirmation dialog on your device.

And yes, after unlocking the phone there is a confirmation dialogue to allow this computer to debug. Nothing fancy I guess, just have never befire used this stuff. So let's do it again:

    $ ./adb reboot bootloader

No feedback on the terminal, but the device lights up:

(IMAGE)

    $ ./fastboot oem unlock

which responds:

    ...
    FAILED (remote: Already Unlocked)
    finished. total time: 0.006s

The image on the phone changes accordingly with a pixel-sixed blue message on the bottom.

I continue as told by the PDF with 

    $ ./fastboot flash boot boot.img

which responds with

    sending 'boot' (4484 KB)...
    OKAY [  0.567s]
    writing 'boot'...
    OKAY [  1.223s]
    finished. total time: 1.790s

So I do 

    $ ./fastboot flash system system.img

and it says:

    erasing 'system'...
    OKAY [  0.055s]
    sending 'system' (253296 KB)...
    OKAY [ 27.897s]
    writing 'system'...
    OKAY [ 29.256s]
    finished. total time: 57.208s

Last step of installation coming up?

    $ ./fastboot continue

Yeah, I wish!

    resuming boot...
    FAILED (remote: Invalid Command)
    finished. total time: 0.006s

Oh great. I do a little reading and actually *understanding* what I just did and... well... since I have flashed a new system image to the device I probably just need to start a boot process.

The Android logotype with the moving reflection appears. I give it ten minutes. I pull out the battery and reboot. The Android logotype with the moving reflection appears.

End of story.

I manage to [flash an image of 4.3 with the help of the internet](http://www.androidauthority.com/howto-flash-android-4-3-on-your-nexus-4-nexus-7-nexus-10-and-galaxy-nexus-248358/) and the phone boots up to the welcome screen. At least I didn't brick it :)

Since I have another hour, I join IRC and ping guardianproject on twitter again. I get answer and help.


<!-- ![]({{site.baseurl}}/images/XXXXXXXXX) -->