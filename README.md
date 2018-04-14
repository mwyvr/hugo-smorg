# hugo-smorg 

* Demo site: https://solutionroute.github.io/demo/hugo-smorg/
* Author's Site: [https://mikewatkins.ca/](https://mikewatkins.ca/)

Hugo-smorg (small-org? smorgasbord?) is a responsive mobile-first
[Bulma][]-powered, reasonably minimalistic [Hugo][] (https://gohugo.io/) theme
for an individual blogger or a small organization to adapt as need be.

**Current release**: v0.7, April 4 2018 - see [CHANGELOG](./CHANGELOG.md); this
project is being updated daily at present - following HEAD is best. If you are
using the theme and spot issues or areas for improvement please let me know by
opening an issue or submitting a PR.

An ongoing work in progress, I'm using Hugo-Smorg as a base for other projects. 

## Objectives

* Remain easy to understand while also being easy to extend.
* Keep pace with current [Hugo][] features and practicies.
* Avoid relying on config.yaml for too much customization.
* Keep HTML customizability effort low using template blocks and partials and
  CSS customizability options open via SASS / CSS.
* Produce output that will validate and load quickly by default.

## Features

Hugo-smorg is:

* Mobile first thanks to [Bulma][], a SASS CSS framework alternative to
  Bootstrap.
* Themable itself via [Bulmaswatch][].
* Minimalistic in nature. 

And offers:

* Responsive site-wide drop-down capable navigation menu
* Simple "Subsection" pages possible with layout:subsection in front-matter.
* Breadcrumb-menu in subsection layout, available to others.
* Produces Atom syndication format with option to disable RSS.
* JSON-LD microdata
* Category and Tag taxonomies (partial page-meta)
* Themed mobile-friendly pagination.
* Includes syntax highlighting with a choice of colour themes.
* By default uses zero-wait modern system font stacks; easy integration with
  a webfont via a couple lines of SASS and `npm run scss:min`.

## Screenshot

<img src="https://raw.githubusercontent.com/solutionroute/hugo-smorg/master/images/tn.png" width="900" height="600" style="border: 1px solid grey">

See the [demo site][] for a live view.

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

[Hugo]: https://gohugo.io/
[demo site]: https://solutionroute.github.io/demo/hugo-smorg/
[Bulma]: https://bulma.io/ 
[Bulmaswatch]: https://jenil.github.io/bulmaswatch/
