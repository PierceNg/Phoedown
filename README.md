# Phoedown

Phoedown is [Pharo Smalltalk](https://github.com/pharo-project/pharo) FFI to
[hoedown](https://github.com/hoedown/hoedown).

## Installing

```smalltalk
Metacello new
	baseline: 'Phoedown';
	repository: 'github://PierceNg/Phoedown/src';
	load.
```

## The Simplest Example

```smalltalk
HdHtmlRenderer new
	render: '# Hello from Phoedown'
```

## A Slightly More Complex Example

See my [blog entry](https://www.samadhiweb.com/blog/2020.01.01.phoedown.html) for usage example.
Github's Markdown processor isn't able to handle that blog post's example within this README.

