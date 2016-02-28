---
layout: post
title: How to correctly ignore stuff in Sublime Text                          
---

Via [Peter](https://github.com/phoet) I have recently put this in my `Preferences.sublime-settings`:

```
	"folder_exclude_patterns":
	[
		"dist",
		"build",
		"_site",
		"node_modules",
		"bower_components",
		".git",
		".tmp"
	]

```

That is great, because global search is much faster then. But it got annoying that I had to manually open those folders *if* I needed to look up something inside.

[Ramin Taleghani recommends to use `binary_file_patterns` instead](http://www.ramintaleghani.com/2014/07/ignore-specific-directories-in-sublime.html). Combined with `file_exclude_patterns` and `folder_exclude_patterns` this results in:

```
	"binary_file_patterns": [
		"node_modules/*",
		"bower_components/*",
		"dist/*",
		"_site/*",
		"build/*"
	],
	"file_exclude_patterns":[
		".DS_Store"
	],
	"folder_exclude_patterns":[
		".git",
		".tmp"
	]
```

Search is fast and clean and I can still access everything from the sidebar. :thumbs_up: