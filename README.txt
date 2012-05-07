NOTE:

To ease the addition of new memes, use this handy bookmarklet:

http://bookmarklets.heroku.com/bookmarklets/1814

= meme_generator

* http://github.com/drbrain/meme
* http://docs.seattlerb.org/meme_generator

== DESCRIPTION:

Generate meme images using http://memegenerator.net!  Save yourself some time!

== FEATURES/PROBLEMS:

* Features many popular meme pictures
* No tests

== SYNOPSIS:

Generate a Y U NO meme:

  $ meme Y_U_NO 'write tests?'

Generate a Y U NO meme url only, no clipboard or pulling of the image data:

  $ meme --text Y_U_NO 'write tests?'

See a list of available generators

  $ meme --list

You can also drive it like an API.

== REQUIREMENTS:

* nokogiri
* internet connection

== INSTALL:

  gem install meme_generator

== DEVELOPERS:

After checking out the source, run:

  $ rake newb

This task will install any missing dependencies, run the tests/specs,
and generate the RDoc.

== LICENSE:

