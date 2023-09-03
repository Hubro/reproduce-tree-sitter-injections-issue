
# To reproduce

```
$ git clone https://github.com/Hubro/reproduce-tree-sitter-injections-issue.git
$ cd reproduce-tree-sitter-injections-issue
$ nvim --clean -u broken_injections.lua
```

Then

```
:e test.astro
```

And add a `<script></script>` tag anywhere in the document.

Watch `:InspectTree` to see how the typescript injections break everything.

It looks like the typescript parser is used to parse the entire document rather than just the script tag.
