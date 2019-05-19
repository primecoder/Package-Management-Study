# Setup Carthage and CocoaPods

CocoaPods and Carthage are two of the most prominent package-management and dependency management software. They are very popular in Swift and Objective-C communities. I have been using Carthage heavily with my last client for the past 2 years and sort of "touch-and-go" with the Cocoapods. It's time to dissect and look at them closely.<br />

## Getting to Know Them

The first step - getting to know them. Here are the best places to get information about them.

### Carthage

1. [Carthage on Github]

    This is the best place to start learning about Carthage.

### CocoaPods

1. [Cocoapods on Github]

    CocoaPods also has Github page. This was the how they started and this was how I found and trust them. 

2. [Cocoapods Website]

    This is a hint of who is winning. CocoaPods is getting ahead and now has their own website.

Github Pages is a good starting point. That was how I found them and many of the **trust-able** pieces of software. I feel more comfortable with them when they bare all their source codes open for inspection. Plus, there are many sets of eyes helping with the inspection - thus the Check &amp; Bound Due Process at work.

## Installation

All these happened on must trusty MacBook with the following spec:

* Macbook 2016 with 8GM RAM
* Mac OS Mojave 10.14.4

### Installing &amp; Fixing Carthage

![][Carthage Logo]

Most of my Carthage work is on my mac at work. I haven't used it on my personal MacBook in a while. When I attempted to use it again, it complained that I had a version that was too old. So, now was a good time to upgraded it.

```
$ carthage version
Please update to the latest Carthage version: 0.33.0. You currently are on 0.28.0
0.28.0

$ brew upgrade carthage

```

Output:
```
Updating Homebrew...
==> Auto-updated Homebrew!
Updated 2 taps (homebrew/core and homebrew/cask).
==> New Formulae
allureofthestars    cfn-lint            cubelib             itk                 leela-zero          scws
boringtun           cpp-gsl             cypher-shell        ktlint              otf2
==> Updated Formulae
ammonite-repl            erlang                   gtranslator              meson                    restic
ansifilter               erlang@20                hebcal                   mingw-w64                rke
apache-geode             ethereum                 hugo                     minio                    ruby-build
.
.
.

Error: carthage not installed

```

Doh! Nothing is going to be easy, ever!
Now, I remembered, the last time I installed Carthage was with using the .pkg file that I downloaded. This way was quick but wasn't cool. The better way is:

```
$ brew install carthage

```
Toward the end of installation, I got this error!

```
...
Error: The `brew link` step did not complete successfully
The formula built, but is not symlinked into /usr/local
Could not symlink bin/carthage
Target /usr/local/bin/carthage
already exists. You may want to remove it:
  rm '/usr/local/bin/carthage'

To force the link and overwrite all conflicting files:
  brew link --overwrite carthage

To list all files that would be deleted:
  brew link --overwrite --dry-run carthage

Possible conflicting files are:
/usr/local/bin/carthage
==> Caveats

```

Ok, let's fix this. I deleted `/usr/local/bin/carthage` and re-link carthage again.

```
$ brew link carthage
Linking /usr/local/Cellar/carthage/0.33.0... 4 symlinks created

$ carthage version
0.33.0

```

Yeh! 

Phew! Next is the pods.

### Installing Cocoapods

![][Cocoapods Logo]

First, Check my Pods.

```
$ pod
-bash: pod: command not found

```

Again, I could quickly install a package for Mac - but this wasn't cool. A better way, is via a command-line. Cocoapods uses RubyGem `gem`, a package management in Ruby. Let's check it.

```
$ gem --version
2.5.2.3

```

That's cool. Let's start the installation.

```
$ gem install cocoapods
Fetching: cocoapods-1.6.1.gem (100%)
ERROR:  While executing gem ... (Gem::FilePermissionError)
    You don't have write permissions for the /Library/Ruby/Gems/2.3.0 directory.

```

Oh! Cocoapods installation actually modifies files outside the log-in user's home directory. You will need root access to install it.

```
$ sudo gem install cocoapods

Password:
Fetching: ruby-macho-1.4.0.gem (100%)
Successfully installed ruby-macho-1.4.0
Fetching: nap-1.1.0.gem (100%)
Successfully installed nap-1.1.0
Fetching: gh_inspector-1.1.3.gem (100%)
Successfully installed gh_inspector-1.1.3
...
Done installing documentation for ruby-macho, nap, gh_inspector, fourflusher, escape, colored2, concurrent-ruby, i18n, thread_safe, tzinfo, activesupport, atomos, CFPropertyList, claide, nanaimo, xcodeproj, molinillo, cocoapods-try, netrc, cocoapods-trunk, cocoapods-stats, cocoapods-search, cocoapods-plugins, cocoapods-downloader, cocoapods-deintegrate, fuzzy_match, cocoapods-core, cocoapods after 44 seconds
28 gems installed

```

That was smooth! Depends on your internet speed, It took mine about 3-4 minutes. Checking the installation.

```
$ pod --version
1.6.1

```

Yes! Yes! Now we are ready to play with them.


[Carthage on Github]: https://github.com/Carthage/Carthage "Carthage on Github"
[Cocoapods on Github]: https://github.com/CocoaPods/CocoaPods "Cocoapods on Github"
[Cocoapods Website]: https://cocoapods.org/ "Cocoapods Website"
[Carthage Logo]: https://3.bp.blogspot.com/-LkEQ90efbJ8/XMUl-moP7VI/AAAAAAAAZII/bHNnJ3ROJusSO9hPTo4m8ymBZU3-cl9iQCLcBGAs/s1600/carthage-logo-small.png
[Cocoapods Logo]: https://4.bp.blogspot.com/-2H1Rir2BsWY/XMUmeX7rNmI/AAAAAAAAZIQ/5cufO2IfFbE2Tz6VsiDJPJhtP9jpJqWugCLcBGAs/s320/cocoapods-logo-small.png

