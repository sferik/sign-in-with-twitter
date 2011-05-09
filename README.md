Sign in with Twitter
====================
Sign in with Twitter is a very basic Rails 3 application that demonstrates how
to use the [Sign in with Twitter][siwt] workflow using version 1 of the
[twitter gem][twitter] (which has removed built-in OAuth support) and the
[omniauth gem][omniauth].

[siwt]: http://dev.twitter.com/pages/sign_in_with_twitter
[twitter]: https://github.com/jnunemaker/twitter
[omniauth]: https://github.com/intridea/omniauth

Continuous Integration
----------------------
[![Build Status](http://travis-ci.org/sferik/sign-in-with-twitter.png)](http://travis-ci.org/sferik/sign-in-with-twitter)

Demo
----
You can see a running version of the application at
<http://sign-in-with-twitter.heroku.com/>.

Installation
------------
    git clone git://github.com/sferik/sign-in-with-twitter.git
    cd sign-in-with-twitter
    bundle install

Usage
-----
Sign in with Twitter requires you to [register an app with Twitter][apps] to
obtain OAuth credentials. Once you obtain credentials, substitute your consumer
key and secret into the command below.

[apps]: http://dev.twitter.com/apps

    CONSUMER_KEY=abc CONSUMER_SECRET=123 rails server

Contributing
------------
In the spirit of [free software][free-sw], **everyone** is encouraged to help improve this project.

[free-sw]: http://www.fsf.org/licensing/essays/free-sw.html

Here are some ways *you* can contribute:

* by using alpha, beta, and prerelease versions
* by reporting bugs
* by suggesting new features
* by writing or editing documentation
* by writing specifications
* by writing code (**no patch is too small**: fix typos, add comments, clean up inconsistent whitespace)
* by refactoring code
* by closing [issues][issues]
* by reviewing patches

[issues]: https://github.com/sferik/sign-in-with-twitter/issues

Submitting an Issue
-------------------
We use the [GitHub issue tracker][issues] to track bugs and features. Before
submitting a bug report or feature request, check to make sure it hasn't
already been submitted. You can indicate support for an existing issuse by
voting it up. When submitting a bug report, please include a [Gist][gist] that
includes a stack trace and any details that may be necessary to reproduce the
bug, including your gem version, Ruby version, and operating system. Ideally, a
bug report should include a pull request with failing specs.

[gist]: https://gist.github.com/
