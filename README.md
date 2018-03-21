# hugo-smorg

This is a responsive mobile-first [Bulma][]-powered, reasonably minimalistic
[Hugo](https://gohugo.io/) theme suitable for an individual or small
organization to adapt as need be.

This theme will keep pace with current Hugo features and is under active
development (March 2018). An ongoing work in progress, I'm using it as a base
for other projects.

Current release: v0.5, March 19 2018 - see [CHANGELOG](CHANGELOG.md).

[**Demo site**](https://solutionroute.github.io/hugo-smorg/exampleSite/).

## Features

Hugo-smorg is:

* Easy to understand.
* Mobile first, thanks [Bulma][]!
* Themable itself via [Bulmaswatch][].
* Minimalistic in nature, easily made more, or less, complicated.
* Simple "Subsection" pages easily implemented
* Breadcrumb-menu available for subsection layout, others.
* Produces Atom syndication format with option to disable RSS.
* Category and Tag taxonomies.
* Themed pagination.
* Includes syntax highlighting with a choice of themes.
* By default uses zero-wait modern system font stacks; integration with
  a webfont easily done.

## Screenshot

<img src="https://raw.githubusercontent.com/solutionroute/hugo-smorg/master/images/tn.png" width="900" height="600" style="border: 1px solid grey">

## Installation

1. Clone the repo:

	git clone --recursive https://github.com/solutionroute/hugo-smorg.git

2. To view the theme:

	cd exampleSite
	hugo server

3. (Optionally) install development dependencies:

To adapt the provided SASS produced CSS you'll need to install SASS and Bulma
at the very least; the least painful way to go about this is via Nodejs and
npm; Once those tools are installed, in the hugo-smorg theme directory:

	npm install

This will install the dependencies listed in _package.json_ including Bulma and
node-sass. You'll also find some handy run scripts including `npm run dev`
which will build your site and SCSS/CSS files and reload automatically.


[Bulma]: https://bulma.io/ 
[Bulmaswatch]: https://jenil.github.io/bulmaswatch/
