# hugo-smorg
Responsive, mobile-first Hugo theme for an individual or small organization


## Installation

## Customization

### Adapting Hugo

Content goes:

	├── content
	│   ├── about
	│   │   └── _index.md
	│   │   └── resume.md
	│   ├── contact
	│   │   └── _index.md
	│   └── posts
	│       └── my-first-post.md
	│       └── i-have-more-to-say.md
	│       └── trip-to-the-zoo.md
	└── _index.md

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
- Bulma: https://bulma.io/ and, optionally but included as an example,
- Bulmaswatch: https://jenil.github.io/bulmaswatch/

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


# TODO 

-[] Detect production and link to minified CSS
