# hugo-smorg 

* Demo site: https://solutionroute.github.io/demo/hugo-smorg/
* Author's Site: [https://mikewatkins.ca/](https://mikewatkins.ca/)

Hugo-smorg (small-org? smorgasbord?) is a responsive mobile-first
[Bulma][]-powered, reasonably minimalistic [Hugo][] (https://gohugo.io/) theme
for an individual blogger or a small organization to adapt as need be.

**Current release**: v0.6, March 20 2018 - see [CHANGELOG](CHANGELOG.md); this
project is being updated daily at present - following HEAD is best. If you are
using the theme and spot issues please let me know or submit a PR.

An ongoing work in progress, I'm using it as a base for other projects. Maybe
you will too.  If you use it, let me know; send a screenshot and a _sites using
this theme_ page will emerge.

## Objectives

* Remain easy to understand.
* Keep pace with current [Hugo][] features and practicies.
* Keep customizability effort low via SASS / CSS and a logical config.yaml.

## Features

Hugo-smorg is:

* Mobile first thanks to [Bulma][], a SASS CSS framework alternative to
  Bootstrap.
* Themable itself via [Bulmaswatch][].
* Minimalistic in nature. 

And offers:

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
[demo site]: https://solutionroute.github.io/hugo-smorg/exampleSite/
[Bulma]: https://bulma.io/ 
[Bulmaswatch]: https://jenil.github.io/bulmaswatch/
