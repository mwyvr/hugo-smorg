# Hugo-smorg Changelog & TODO List

## TODO / Coming Soon

Now that the block template / partials improvements are (largely) complete, new
features to come:

* Add Social Media microdata (Twitter, etc.)
* Landing page (with and without catchy images) examples
* A text-centric minimalist layout customization and companion CSS swatch
* Per-page image and other resources

## HEAD

* Added partials/home/only-content.html, provides the simplest possible landing
  page with content only from the relevant `_index.md`. See layouts/index.html
  for where to include.
* Refactored partial/nav.html; added partial/navbar-menu.html providing for
  Bulma-styled main navigation drop-down capable menus driven from config file
  menu structure.
* Update exampleSite config.yaml and content to demonstrate drop down menus.

## v0.7

This is a major change, incorporating a bunch of smaller tweaks and one big
template style reorganization brought on by a desire to make all components of a page
including head, javascript, style overrides, navigation, footer - more easily
over-ridable by theme users.  

Users of v0.5 and earlier who have made theme customizations for their site
should find most everything works out of the box but may discover they need to
make minor updates to their site's customized, if any, `layouts/index.html`.

* Allow for custom header and footer partials; this makes it easy for
  site-specific overrides (such as CSS rules or javascript) to be in
  site/layout/partials without having to replace (and therefore maintain) the
  entire header + footer partials. Thanks **@ColtonProvias** for the suggestion
  which set me off this road towards more customization possibilities. Fixes #3.
* Increase the use of block templates throughout; reduce code in many page
  templates as a result. Don't Repeat Yourself (DRY).
* Tested against the latest Hugo release 0.38
  (https://gohugo.io/news/0.38-relnotes/000000000) but the theme does not make
  use of any leading edge features and can likely be used with much earlier
  versions of Hugo.
* Add Google analytics support using Hugo internal template, add site variable
  and your GA ID to config.yaml: GoogleAnalytics: 
* `layouts/_defaults/errorpage.html` - allows for creation of NNN HTTP errorcode
  pages i.e. 401.html (with 401.md). In frontmatter specify layout:errorpage
* Added /shortcodes/ig.html as a script-less instagram alternative. May
  disappear.
* Added partials/filter-html.html, used in index.atom.xml to filter script tags
  among other things from .Summary and .Content for feed validation (and
  safety).
* Replace submodules so they can be cloned anonymously via https, thanks **@L0g4n**
* Removed Font Awesome; nothing wrong with it but for a handful of icons,
  leaving that decision up to site users. Unicode icons used where needed. See
  https://www.materialui.co/unicode-characters/symbols for ideas.
* Added favicon.html partial and Params.favicon boolean - make a matching icon
  set from the solid https://realfavicongenerator.net/

* Moved page-meta partial to subtitle - see Posts for example.
* Fixed URL path bug on pages with categories and tags; sorted collections.
* Refactored breadcrumbs, simpler and hopefully solid now; uses .Slug or .Name; override in menus.
* Fixed URL bug noted on Github demo site; certain URLs needed absURL or relURL
* \_default/subsection.html allows for a section like /about/ with a handful of
  files /about/contact.md /about/legal.md to be rendered as a crumb menu at
  top of each page in the section. Add `layout: subsection` in each document
  front-matter (including \_index.md).
* Included in partials handy value debugprint, thanks **@kaushalmodi**
* In config set debug: true ; helps diagnose template lookup order issues

## v0.6

* Bulma-styled Pagination on list / summary / section (post) / taxonomy pages
* Simplifcation overall; whitespace clean up
* Fix exampleSite config.yaml

## v0.5

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

## v0.1 - v0.4

Project organization and a minimally working Hugo theme at each iteration.

