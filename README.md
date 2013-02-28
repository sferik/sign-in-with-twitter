# Sign in with Twitter

[![Build Status](https://secure.travis-ci.org/sferik/sign-in-with-twitter.png?branch=master)][travis]
[![Dependency Status](https://gemnasium.com/sferik/sign-in-with-twitter.png?travis)][gemnasium]
[![Coverage Status](https://coveralls.io/repos/sferik/sign-in-with-twitter/badge.png?branch=master)][coveralls]

[travis]: http://travis-ci.org/sferik/sign-in-with-twitter
[gemnasium]: https://gemnasium.com/sferik/sign-in-with-twitter
[coveralls]: https://coveralls.io/r/sferik/sign-in-with-twitter

A [Ruby on Rails][ror] application that demonstrates how to use the [Sign in
with Twitter][siwt] workflow using the [twitter gem][twitter] and [OmniAuth][].

![Sign in with Twitter](https://github.com/sferik/sign-in-with-twitter/raw/master/screenshot.png "Sign in with Twitter")

[ror]: http://rubyonrails.org/
[siwt]: https://dev.twitter.com/docs/auth/sign-twitter
[twitter]: https://rubygems.org/gems/twitter
[omniauth]: https://rubygems.org/gems/omniauth

## Demo
You can see a running version of the application at
[http://sign-in-with-twitter.herokuapp.com/][demo].

[demo]: http://sign-in-with-twitter.herokuapp.com/

## Installation
    git clone git://github.com/sferik/sign-in-with-twitter.git
    cd sign-in-with-twitter
    bundle install

## Usage
Sign in with Twitter requires you to [register an app with Twitter][apps] to
obtain OAuth credentials. Once you obtain credentials, substitute your consumer
key and secret into the command below.

[apps]: http://dev.twitter.com/apps

    CONSUMER_KEY=abc CONSUMER_SECRET=123 rails server

## Contributing
In the spirit of [free software][free-sw], **everyone** is encouraged to help
improve this project.

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

## Submitting an Issue
We use the [GitHub issue tracker][issues] to track bugs and features. Before
submitting a bug report or feature request, check to make sure it hasn't
already been submitted. When submitting a bug report, please include a [Gist][]
that includes a stack trace and any details that may be necessary to reproduce
the bug, including your gem version, Ruby version, and operating system.
Ideally, a bug report should include a pull request with failing specs.

[gist]: https://gist.github.com/

## Submitting a Pull Request
1. [Fork the repository.][fork]
2. [Create a topic branch.][branch]
3. Add specs for your unimplemented feature or bug fix.
4. Run `bundle exec rake test`. If your specs pass, return to step 3.
5. Implement your feature or bug fix.
6. Run `bundle exec rake test`. If your specs fail, return to step 5.
7. Run `open coverage/index.html`. If your changes are not completely covered
   by your tests, return to step 3.
8. Add, commit, and push your changes.
9. [Submit a pull request.][pr]

[fork]: http://help.github.com/fork-a-repo/
[branch]: http://learn.github.com/p/branching.html
[pr]: http://help.github.com/send-pull-requests/

## Supported Ruby Version
This library aims to support and is [tested against][travis] Ruby version 1.9.3.

If something doesn't work on this version, it should be considered a bug.

This library may inadvertently work (or seem to work) on other Ruby
implementations, however support will only be provided for the version above.

If you would like this library to support another Ruby version, you may
volunteer to be a maintainer. Being a maintainer entails making sure all tests
run and pass on that implementation. When something breaks on your
implementation, you will be personally responsible for providing patches in a
timely fashion. If critical issues for a particular implementation exist at the
time of a major release, support for that Ruby version may be dropped.

## Copyright
Copyright (c) 2011 Erik Michaels-Ober. See [LICENSE][] for details.

[license]: https://github.com/sferik/sign-in-with-twitter/blob/master/LICENSE.md
