# Hugo-smorg Changelog & TODO List

## TODO / Coming Soon

* Add Social Media microdata (Twitter, etc.)
* Google analytics and other quick hit items
* Develop a text-minimalist Bulma swatch
* Make it easy to include a full-screen landing page image without modifying
  templates such as found: https://mikewatkins.ca/
* Review [Hugo internal templates](https://github.com/gohugoio/hugo/blob/master/tpl/tplimpl/template_embedded.go) and incorporate as needed.

## HEAD 

* layouts/_defaults/errorpage.html - allows for creation of NNN HTTP errorcode
  pages i.e. 401.html (with 401.md). In frontmatter specify layout:errorpage
* Added /shortcodes/ig.html as a script-less instagram alternative. May
  disappear.
* Added partials/filter-html.html, used in index.atom.xml to filter script tags
  among other things from .Summary and .Content for feed validation (and
  safety).
* Replace submodules so they can be cloned anonymously via https, thanks L0g4n
* Removed Font Awesome; nothing wrong with it but for a handful of icons,
  leaving that decision up to site users. Unicode icons used where needed. See
  https://www.materialui.co/unicode-characters/symbols for ideas.
* Added favicon.html partial and Params.favicon boolean - make a matching icon set from the solid https://realfavicongenerator.net/
* Moved page-meta partial to subtitle - see Posts for example.
* Fixed URL path bug on pages with categories and tags; sorted collections.
* Refactored breadcrumbs, simpler and hopefully solid now; uses .Slug or .Name; override in menus.
* Fixed URL bug noted on Github demo site; certain URLs needed absURL or relURL
* \_default/subsection.html allows for a section like /about/ with a handful of
  files /about/contact.md /about/legal.md to be rendered as a crumb menu at
  top of each page in the section. Add `layout: subsection` in each document
  front-matter (including \_index.md).
* Included in partials handy value debugprint, thanks @kaushalmodi
* In config set debug: true ; helps diagnose template lookup order issues

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

