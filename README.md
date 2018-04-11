
<!-- README.md is generated from README.Rmd. Please edit that file -->
Paul's Personal Package Panacea <img src='assets/pkg-hexsticker.png' align='right' width=120/>
==============================================================================================

[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://tidyverse.org/lifecycle/#experimental) [![Travis-CI Build Status](https://travis-ci.org/Paul-James/pjames.svg?branch=dev)](https://travis-ci.org/Paul-James/pjames) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/Paul-James/pjames?branch=dev&svg=true)](https://ci.appveyor.com/project/Paul-James/pjames) [![Coverage Status](https://img.shields.io/codecov/c/github/Paul-James/pjames/dev.svg)](https://codecov.io/github/Paul-James/pjames?branch=dev)

Code of Conduct
---------------

Please note that this project is released with a `Contributor Code of Conduct`. By participating in this project you agree to abide by its terms.

Introduction
------------

This `R` package repo is a collection of functions put together for use by me and my friends. This is meant to help keep `.Rprofile`s and the global environment clear. For example, the `rm(list = ls())` command clears out any custom functions defined in the `.Rprofile` because those functions are part of the global environment. This also saves time and effort pasting/sourcing commonly used functions to the top of every `R` script you write. All these manual steps can be avoided with the use of a package.

Caveat to using this package
----------------------------

Using the functions within this package, though helpful for everyday coding, pose a repoducibility issue. If you were to share your sweet script with someone and you used one of the functions defined in this package, your friend will get errors: `Error: could not find function "mylib"`.

A few methods for reproducibility:

1.  Instruct the person you share it with to install the package, just like they would have to do if you used `plotly` or `dplyr`.
2.  Replace any functions you used from this package with more common or `Base R` equivalents.
3.  Define the function at the top of the script so it will travel wherever the code goes.
4.  Include another script with all user defined functions seperate from the script and `source()` in that script of functions.
    -   This method isn't super great for sharing code, but it's the preferred method for large projects or complicated analysis that have many user defined functions whether you're sharing your code or not.

How to install the package
--------------------------

Get a GitHub `PAT` (`GitHub user profile` &gt; `Settings` &gt; `Developer Settings` &gt; `Personal access tokens` &gt; `Generate new token` &gt; `checkmark "repo"` &gt; `Generate token`). Then save the token in `~/.Renviron`. Here's an easy way to do it from an `R` script or `R` console:

``` r
cat(
    'GITHUB_PAT=[replace-me-(brackets-as-well)-with-PAT]\n'
  , file   = file.path(
      normalizePath('~/')
    , '.Renviron'
    )
  , append = T
)
```

Replace **\[replace-me-(brackets-as-well)-with-PAT\]** with the token you get and restart the R session (which reloads the R environment variables). Now, in an R console, run: `devtools::install_github('paul-james/pjames')`.

------------------------------------------------------------------------

![My-PYAA-Office-Whiteboard](assets/pyaa-office-whiteboard.jpg)
