# Hugo-smorg Changelog

## v0.5

* Bulma-styled Pagination on list / summary / section (post) / taxonomy pages
* Simplifcation overall; whitespace clean up
* Fix exampleSite config.yaml

## v0.4

Focus on fonts and build tools in this revision, prompted a PR for Bulmaswatch. 

Features:

* Run dev server or build CSS using `npm run` scripts (see package.json).
* `system-font-css` provides local font definitions for a "system-ui" font, future proofing 
  for day when system-ui provided across all browsers.
* Easily swap in webfonts (see smorg.scss) by defining two variables.

Changes: 

* Add `npm` based build and dev scripts.
* package.json dropped dependency on bulmaswatch; added nodemon and npm-run-all.
* Submodules added to scss: bulmaswatch  chroma-sass-themes system-font-css
* Add Atom syndication format; [details here](https://github.com/comfusion/after-dark/issues/32#issuecomment-312515542).

## v0.1 - v0.3

Project organization and a minimally working Hugo theme at each iteration.

