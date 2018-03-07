# hugo-smorg

This is a responsive mobile-first [Bulma][]-powered, reasonably minimalistic [Hugo](https://gohugo.io/) theme suitable for an individual or small organization to adapt as need be.

This theme will keep pace with current Hugo features.

## Motivation

I started this project to document how to use and customize Hugo as much for my own
benefit as for anyone else, and I wanted to produce something that could be
easily adapted (fonts, colours) or be extended. I have a growing collection of Hugo powered sites out there all at various states of keeping-up-to-date-edness and was driven to create a base I understood that keept up to date with Hugo.

<img src="https://raw.githubusercontent.com/solutionroute/hugo-smorg/master/images/tn.png" width="900" height="600" style="border: 1px solid grey">

## Features

Hugo-smorg is buzzword compliant and more:

* Easy to understand
* Mobile first, thanks [Bulma][]!
* Easy to apply a new colour "swatch" with [Bulmaswatch][]
* Minimalistic in nature, easily made more, or less, complicated
* Produces Atom syndication format with option to disable RSS; [details
here](https://github.com/comfusion/after-dark/issues/32#issuecomment-312515542).
* An ongoing work in progress, I'm using it as a base for other projects and am
  motivated to keep this theme up with current Hugo features.

## Installation

TODO: Complete installation note

Quick start: Read this README plus the README in `exampleSite`.

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
* [Bulma][]: https://bulma.io/ and, optionally but included as an example,
* [Bulmaswatch][]: https://jenil.github.io/bulmaswatch/

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


## TODO

... a bunch of things; pagination next up.


[Bulma]: https://bulma.io/ 
[Bulmaswatch]: https://jenil.github.io/bulmaswatch/
