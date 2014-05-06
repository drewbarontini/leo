Leo
===

Leo is a Markdown, Middleman-powered writing environment. It allows you to quickly create Markdown files, and it automatically generates the sidebar sections for you. For example, just create `source/index.md`, and then add the following [Frontmatter]() at the top of the document.

**Note**: Middleman will use the `source/index.md` file as the root file, so make sure that's what you first page is named. You can change the title to be whatever you'd like, though.

```yaml
---
title: Introduction # The page title
type: page # Classify this document as a page
priority: 1 # The priority number for proper sorting in the sidebar
---
```

That's it! Now you'll have a nicely formatted book, with sections, that you can use to write your content.

*Leo uses GitHub's Markdown parser, so you can follow the [Mastering Markdown](https://guides.github.com/features/mastering-markdown/) document on the GitHub guides.*

Now that you know the basics, you need to get everything set up to start writing.

Installing Middleman
--------------------

```shell
gem install middleman
```

Then run:

```shell
bundle install
```

Running the Application
-----------------------

You run the application by starting the Middleman server:

```shell
middleman s
```

If you're using Rbenv with binstubs:

```shell
./bin/middleman s
```

Building the Static Files
-------------------------

To build the static files:

```shell
middleman build
```

Or, if you're using Rbenv:

```shell
./bin/middleman build
```

Deploying
---------

If you'd like to deploy the site, add a `Rakefile` and take a look at the [Baseman](https://github.com/drewbarontini/baseman#deploying) deploy documentation.

**Note**: Be sure to remove the `Rakefile` from the `.gitignore`!
