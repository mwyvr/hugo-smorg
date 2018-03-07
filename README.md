# hugo-smorg
Responsive, minimalistic [Hugo](https://gohugo.io/) theme suitable for an individual or small organization.

**Note**: May 2, 2018 - This is a work in progress; in the next day or so for
a minimally working theme will be checked in; once functional I'll be adding
capabilities over time.

## Motivation

I've started this project to document how to use and customize Hugo as much for my own
benefit, as well as provide a relatively easy to work with base to use as is or
extend for new projects. This theme will keep pace with current Hugo features.

## Features

TODO: Complete feature list

Minimal design backed by capable CSS framework makes this easy to alter for
your site.

Outputs Atom syndication format with option to disable RSS; [details
here](https://github.com/comfusion/after-dark/issues/32#issuecomment-312515542).


## Installation

TODO: Complete installation note

### Adapting Hugo

Content goes:

	├── content
	│   ├── post
	│   │    └── my-first-post.md
	│   │    └── i-have-more-to-say.md
	│   │    └── trip-to-the-zoo.md
	│   └── project
	│        └── building-a-tree-fort.md
	│        └── xyz-1000.md
	│
 	├── _index.md
	├── about.md
	└── contact.md

TODO - adjust the above (and below) to match reality


Customizations are in themes/hugo-smorg/layouts:

	├── _default
	│   ├── baseof.html
	│   ├── list.html
	│   └── single.html
	└── partials
	│   └── various components...
	└── section
	│   └── section.html
	└── 404.html
	└── index.html

If for example you'd like to create a new section called "projects" simply
create the subdirectory under `content/projects` and create or copy one of the
other section `_index.md` files into it. You can create specific section
overrides by naming them for the section type, e.g. `project.html.html` - yes,
the double extension is intended. See [Hugo Lookup
Order](https://gohugo.io/templates/lookup-order/) for the details.

### CSS 

hugo-smorg style relies upon:
* Bulma: https://bulma.io/ and, optionally but included as an example,
* Bulmaswatch: https://jenil.github.io/bulmaswatch/

To modify the css introduce your own or override existing CSS classes within
`scss/smorg.scss`.

Tools needed to regenerate CSS output from SASS:

	NodeJS, npm, node-sass

Run the compiler:

	# while developing produce uncompressed 
	npm run scss-watch
	# for uncompressed distribution
	npm run scss
	# produce production minified css
	npm run scss-min
