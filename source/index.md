---
title: Welcome
type: page
priority: 1
---

Welcome
=======

This is a simple Middleman-powered Markdown application for writing documentation, books, or really anything. It uses [GitHub's Markdown syntax](https://guides.github.com/features/mastering-markdown/), which is really awesome, and I recommend you try it out.

Creating a Page
---------------

To create a page, first create a new Markdown file in the `source` directory (e.g. `source/new-page.md`). The coolest part is that page will automatically generate in the sidebar!

Next, you need to add some [Middleman Frontmatter](http://middlemanapp.com/basics/frontmatter/) to the top of the Markdown file:

```yaml
---
title: Welcome # the page title
type: page # classify it as a page
priority: 1 # the numbered priority to order the sidebar
---
```

Donezo!
-------

That's all there is to it! Check out the [example page](/example/) to see how all the various formatting looks. It uses all of the same content that is shown on [GitHub's Markdown syntax](https://guides.github.com/features/mastering-markdown/) guide.

