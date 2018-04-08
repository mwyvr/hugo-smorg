---
title: "About"
description: "Demonstration of Hugo content management approach for subsection
pages and associated breadcrumb menu."
date: 2018-03-07T02:16:58-08:00
draft: false
layout: subsection
slug: about
---


This example "about" page, and other pages associated with the "About" section,
illustrate two features provided by Hugo-Smorg:

* **layout**: subsection
* **partial**: breadcrumbs (included in subsection layout by default)

If you find a need for a layout like:

	/about/
	/about/contact/
	/about/contact-my-dog/
	/about/legal/

Then `_default/subsection.html` layout and `partials/section-crumbs.html` may be just
what you need. To use simply add the following variable to your front-matter in all
content found within the "about" section, including its `_index.html`:

	---
	layout: subsection
	---

By default the link title is the Page's title (.Name); long titles won't work
well; you can supply `slug` in font-matter to override this for breadcrumbs:

	---
	slug: board
	---

**Note**: Use of `slug` will also affect your Page's URL. Oftentimes this may
be in line with what you want for a breadcrumb-appropriate menu. You can
optionally maintain an alias to the former or any prior URI using [Hugo's alias
feature](https://gohugo.io/content-management/urls/#how-hugo-aliases-work) in
page frontmatter:

	aliases: [/posts/my-old-url/]


Get the theme here: https://github.com/solutionroute/hugo-smorg.

