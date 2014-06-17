Leo
===

Leo is a Markdown, Middleman-powered writing environment. It allows you to quickly create Markdown files, and it automatically generates the sidebar sections for you. For example, just create `source/index.md`, and then add the following [Frontmatter](http://middlemanapp.com/basics/frontmatter/) at the top of the document.

**Note**: Middleman will use the `source/index.md` file as the root file, so make sure that's what you first page is named. You can change the title to be whatever you'd like, though.

```yaml
---
title: Introduction # The page title
type: page # Classify this document as a page
priority: 1 # The priority number for proper sorting in the sidebar
---
```

Nested Pages
------------

If you want nested pages:

- Add a new subdirectory
- Name the root page `subdirectory/index.md`

In that root page, add some more Frontmatter to the top of the page:

```yaml
---
title: Parent Page # The page title
type: page # Classify this document as a page
priority: 2 # The priority number for proper sorting in the sidebar
children: true # Tells Leo that this page has nested child pages
---
```

Next, add your nested pages in that sub-directory, and add the following Frontmatter to those nested pages:

```yaml
---
title: Introduction # The page title
type: page # Classify this document as a page
priority: 3 # The priority number for proper sorting in the sidebar
nested: true # Tells Leo this is a nested page
parent: Parent Page # The parent page title that this is nested under
---
```

That's it! Now you'll have a nicely formatted book, with sections, that you can use to write your content.

*Leo uses GitHub's Markdown parser, so you can follow the [Mastering Markdown](https://guides.github.com/features/mastering-markdown/) document on the GitHub guides.*

Standard Sidebar
---------------

If you don't want a collapsed sidebar with a hamburger menu, then add the following to `source/assets/stylesheets/_config.sass`:

```sass
$sidebar-collapsible: false
```

Setup
-----

Now that you know the basics, you need to get everything set up to start writing.

```shell
gem install bundler
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
