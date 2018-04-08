# Customizing The Hugo-Smorg Theme

_April 2018: This is a work in progress. See the [heavily commented exampleSite configuration file](../exampleSite/config.yaml) for additional information._

[Hugo Configuration File](hugo-configuration-file)  
[Overriding Hugo Themes](overrriding-hugo-themes)  

## Hugo Configuration File

The heavily commented [config.yaml](../exampleSite/config.yaml) will be your
first stop for customizing Hugo and the Hugo-Smorg theme. 

Use `config.yaml` as the starting point for your site; copy it to your site
directory:

	mysite/
	config.yaml
	content/
	themes/
		hugo-smorg

**Important**: Remove the first configurable parameter `themesDir` from the
example configuration; it is used only for generation of a demo site for the
Hugo themes showcase.

## Template Overview

Hugo-Smorg makes use of Hugo's [block template](https://gohugo.io/templates/base/#define-the-base-template) features as well as [partials](https://gohugo.io/templates/partials/#use-partials-in-your-templates).

This documentation isn't meant to replace Hugo's docs but to provide a starting
point to answer _how do I do XYZ_ questions.

## Hugo Configuration File

When starting up a new site it's easiest to simply copy the
[exampleSite/config.yaml](./exampleSite/config.yaml) and tune the settings
within according to your needs. 



## Overriding Hugo Themes

If the stock theme works for you, there's no need to override anything! But
when it doesn't work, rather than modifying the theme itself, Hugo and the
theme Hugo-Smorg both offer features making it easy to customize the theme
without editing the theme files itself.

Avoiding making changes to the theme is a good objective as it allows you to
update the theme - which as of Spring 2018 is being developed, enhanced and
hopefully improved virtually every week.

So, how do we customize Hugo-Smorg without editing the theme itself?

Hugo has been designed around a couple of important notions:

* Templates, of which themese are created
* Template Lookup Order

Virtually all types of templates - page and partials - are subject to Hugo's
lookup order rules. Theme users generally only need to remember one primary
rule:

> Any template files you have in your _*site*_ `layouts` directory will take 
> precedence over template files in the `themes/hugo-smorg/layouts` directory.

Say for example you don't like how the `<title>` element is displayed. The
theme default for most pages is provided by a _partial_ in
`layouts/partials/title.html` - that file contains:

	{{ with .Title }}{{ . }}{{ end }}
	{{ with $.Site.Title }} - {{ . }}{{ end }}

If your site title is: Mike's Blog
And your post title is: Happy Dog

The code above will generate:

	<title>Happy Dog - Mike's Blog</title>

If for some reason you'd prefer to reverse those title components for your
site, create `title.html` in `yoursite/layouts/partials/` and add the
following:

	{{ with $.Site.Title }}{{ . }}{{ end }}
	{{ with .Title }} : {{ . }}{{ end }}

Which will produce:

	<title>Mike's Blog : Happy Dog</title>


**Congrats!** You've made your first customization to Hugo-Smorg, specific to
your site, and when Hugo-Smorg is updated your customization will continue to
function as you've intended.

## How-Do-I-Do-This?

### Customize the <title> element on regular pages

See the example above.

### Customize the "home" page (`layouts/_index.html`):

Home pages are special types of Hugo pages, which makes sense as they often
have a much different appearance than the rest of our site's page content.
You'll want to copy the Hugo-Smorg theme file as a starting point. In your site
directory:

	cd yoursite
	# will make the directory layouts if it doesn't exist
	mkdir -p layouts
	cp themes/hugo-smorg/layouts/_index.html layouts

And then edit your site `_index.html` as necessary.

### Change or Add Menu Items

In most cases editing the menu tree (example in `config.yaml`) will be
sufficient. Override `nav.html` with your own implementation if your needs
cannot be so met.

### Include Custom Javascript On Every Page

Copy from the theme partials directory to your site's partials the file
`js-body-bottom.html` and include your Javascript in the new file.


## Base Template

The base template for almost all your content files is found in
`_default/baseof.md`, a copy of which is included here.

The theme's base template makes heavy use of `blocks`; key blocks have default
content (e.g. *title*, *head*, etc.).  Site navigation and the primary page
content are inserted via the *nav* and *main* blocks.

Landing or "home" pages often have a different style than the rest of a site.
The Hugo-Smorg theme makes it easy to insert custom styles for a single page
(override the `head-custom` block) or for all pages on your site (use the
`head-custom.html` partial).

This pattern exists for major components of the site: `head`, `head-custom`,
`js-head`, `footer`, `js-microdata` and `js-body-bottom`.

The navigation partial `nav.html` is on some pages defined in a block; others
- notably the home or landing page, it is simply included wihtin the `main`
  block.


```go-html-template
<!DOCTYPE html> <!-- See docs/customizing.md for help -->
<html lang="{{ .Site.LanguageCode | default "en" }}">
<head>
	<title>
		{{- block "title" . -}}
			{{- partial "title.html" . -}}
		{{- end }}
	</title>
	{{- block "head" . -}}
		{{- partial "head.html" . -}}
	{{- end -}}
	{{- block "head-custom" . -}}
		{{- partial "head-custom.html" . -}}
	{{- end -}}
	{{- block "js-head" . -}}
		{{- if not .Site.BuildDrafts }}
			{{- template "_internal/google_analytics_async.html" . }}
		{{- end }}
	{{- end -}}
</head>
<body>
	{{- block "nav" . }}
	{{- end }}
	{{- block "main" . }}
	{{- end }}
	{{- block "footer" . }}
		{{- partial "footer.html" . -}}
	{{ end }}
	{{- block "js-microdata" . -}}
		{{- if ne .Kind "404" }}{{- partial "microdata/json-ld.html" . }}{{ end -}}
	{{- end }}
	{{- block "js-body-bottom" . -}}
		{{- partial "js-body-bottom.html" . -}}
	{{- end }}
</body>
</html>
```

_
