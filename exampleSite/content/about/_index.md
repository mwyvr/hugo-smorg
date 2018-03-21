---
title: "About- Demo of Subsection Layout"
description: "Demonstration of Hugo content management approach for subsection
pages and associated breadcrumb menu."
date: 2018-03-07T02:16:58-08:00
draft: false
layout: subsection
slug: about
---

This example "about" page illustrates two features included in Hugo-Smorg:

* subsection.html
* breadcrumbs

If you find a need for a layout like:

	/about/
	/about/board-of-directors
	/about/legal

Or:

	/about/
	/about/kady-the-wonderdog

Then `_default/subsection.html` and `partials/section-crumbs.html` may be just
what you need. To use simply add the following to your front-matter in all
content below, for example, "about" including its `_index.html`:

	---
	layout: subsection
	---

By default the link title is the Page's title (.Name); long titles won't work
well; you can supply `slug` in font-matter to override:

	---
	slug: board
	---

**Note**: `slug` will affect your Page's URL. Oftentimes this may be in line
with what you want for a breadcrumb-appropriate menu.

Get the theme here: https://github.com/solutionroute/hugo-smorg.

