# Phoedown

Phoedown is [Pharo Smalltalk](https://github.com/pharo-project/pharo) FFI to
[hoedown](https://github.com/hoedown/hoedown).

## Installing

In Pharo:

```smalltalk
Metacello new
	baseline: 'Phoedown';
	repository: 'github://PierceNg/Phoedown/src';
	load.
```

The Pharo VM needs to be able to locate the hoedown .so/dylib file.

## The Simplest Example

```smalltalk
HdHtmlRenderer new
	render: '# Hello from Phoedown'
```

## A Slightly More Complex Example

See my [blog entry](https://www.samadhiweb.com/blog/2020.01.01.phoedown.html) for usage example.
Github's Markdown processor isn't able to handle that blog post's example within this README.

