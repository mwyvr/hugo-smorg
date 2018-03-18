# hugo-smorg

This is a responsive mobile-first [Bulma][]-powered, reasonably minimalistic
[Hugo](https://gohugo.io/) theme suitable for an individual or small
organization to adapt as need be.

This theme will keep pace with current Hugo features and is under active
development (March 2018). An ongoing work in progress, I'm using it as a base
for other projects.

* [CHANGELOG](CHANGELOG.md)
* **[Demo site](https://solutionroute.github.io/hugo-smorg/exampleSite/)**

## Features

Hugo-smorg is:

* Easy to understand
* Mobile first, thanks [Bulma][]!
* Easy to apply a new colour "swatch" with [Bulmaswatch][]
* Minimalistic in nature, easily made more, or less, complicated
* Produces Atom syndication format with option to disable RSS; [details here](https://github.com/comfusion/after-dark/issues/32#issuecomment-312515542).
* Tags on section page display; more work on taxonomy display coming soon.
* By default uses zero-wait modern system font stacks and offers an easy to use
  override mechanism if you prefer a webfont from Google or others. (See
  scss/smorg.scss)

## Screenshot

<img src="https://raw.githubusercontent.com/solutionroute/hugo-smorg/master/images/tn.png" width="900" height="600" style="border: 1px solid grey">

## Installation

1. Clone the repo:

	https://github.com/solutionroute/hugo-smorg.git

2. (Optionally) install the dependencies:

To adapt the provided CSS you'll need SASS at the very least. I'm using
`node-sass` and `npm` scripts and a few other tools provided via npm. If you've
already got node and npm installed, simply run npm install:

	npm install

Which will include Bulma, none-sass and a few other helpers in your project.

3. To view the theme:

	cd exampleSite
	hugo server

4. Developing / changing:

Check `package.json` for a current list of available `npm run` scripts for
building SCSS and more, or run the all-in-one script to launch Hugo in watch
mode and another process to watch your SCSS files for changes:

	cd yoursite/themes/hugo-smorg
	npm run dev


[Bulma]: https://bulma.io/ 
[Bulmaswatch]: https://jenil.github.io/bulmaswatch/
