# Welcome to packagename!

Contributions to the `packagename` project are welcome and appreciated. Here
follow some guidelines and description of the project to make it
easier for you to submit pull requests, report issues, and provide
feedback.
Some technical details follow 

## Wanna report an issue / ask for a feature?

Sounds nice! Please proceed as following:

1. **Search for existing issues.** Sometimes, other folks may have reported the same issue and it'd be nice not to duplicate them.
2. If possible, please **create an isolated and reproducible test case.** Make use of [jsFiddle](jsfiddle.net) - for instance - to share your isolated test cases. We won't hold it against you for feature requests, but a live [POC](http://en.wikipedia.org/wiki/Proof_of_concept) is sometimes easier to catch.
3. **Share as much information as possible.** Include browser and version, version of gitgraph.js, etc. where appropriate. That can help us to reproduce the bug, if so.

## Or wanna contribute to the code?

Github's Pull Request is a fantastic tool to contribute to the code.

Just keep in mind the following guidelines:

- You'd be nice not to pollute your pull request with unintended changes.
- Pull requests should always be against the `develop` branch, never against `master` nor `gh-pages`.

Once you send a Pull Request, your code will be check with [Travis CI](https://travis-ci.org/yourname/package) to tell whether you break the build or not. The Travis test should pass before we accept any Pull Request.


## Licensing

By contributing to packagename, you agree to release your contribution under
the terms of the licence.

## Overall design packagename

packagename is
### R package



#### Documentation

The package documentation is written with
[roxygen2](http://cran.r-project.org/web/packages/roxygen2/index.html)
version 4.1.1.  All contributed methods and classes must be
documented. Moreover, all exported methods should have examples of
their usage. Please file an issue if you spot a method in the
documentation without an example, or, better yet, a pull request. The
recommended way to generate man files from the roxygen documentation
is to run the `roxygen` target in the `Makefile`

```
make roxygen
```

### Tests

The tests for the package can be found in the `tests` folder. All
contributions of code should have corresponding tests.

### Code style

It's very important to have a consistent code style, so before
submitting, make sure the code matches surrounding code.

### If you have any questions, please don't hesitate to open an issue
