# resume

This is both my personal resume and an example of a software engineer's resume written in [typst](https://typst.app/docs).

## Building

You should only need `typst` [installed](https://github.com/typst/typst?tab=readme-ov-file#installation), then you can run

```
$ typst compile resume.typ
```

Or for iterating on changes:

```
$ typst watch resume.typ resume.pdf
```

Then open `resume.pdf` in a program (I use Firefox) to preview your changes.


### Nix/NixOS

I use NixOS, so the `flake.nix` file allows you to run `nix develop` and have a working development environment to build this code.

## Copyright

The code and resulting PDF are marked [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/).

You may 
