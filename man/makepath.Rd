% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/makepath.R
\name{makepath}
\alias{makepath}
\title{Create a pathway variable}
\usage{
makepath(groupcol, pathcol, sep = "-", subset = FALSE, keepvalues,
  ordered = TRUE, keepconsec = TRUE,
  n.cores = parallel::detectCores() - 1)
}
\arguments{
\item{groupcol}{The column you want to group by. Generally it's a person or employee.}

\item{pathcol}{The column you want to create a path from. IE: service_type, location, step}

\item{sep}{The seperator that goes between the parts of the pathway. The default is hyphen (\code{-}).}

\item{subset}{A boolean flag to indicate if you want to use every possible part/step in the pathway or if you just want to track certain steps. Default is \code{FALSE} (use all values). Must use the keepvalues parameter if the subset flag is \code{TRUE} (use certain values).}

\item{keepvalues}{A character vector of the pathway parts/steps you want to use. Only use when the subset flag is \code{TRUE}.}

\item{ordered}{A boolean flag to indicate whether or not the path should care about occurence order (when the step occured). Default is \code{TRUE}. If flag is set to \code{FALSE} the pathway vector will be sorted alphabetically.}

\item{keepconsec}{A boolean flag to indicate if you want to keep or remove duplicated steps in the pathway. Default is \code{TRUE}.}

\item{n.cores}{An integer value that indicates the number of cores you want to run the process on. The default is 1 less than the total number of available cores on the CPU for UNIX flavored OSs, while the only option (currently) on Windows OS is 1.}
}
\description{
Feature Requests:
\enumerate{
\item a time variable and business rules based on date times;
\item step grouping (IE: step1, step2, step3 = phase1; step4, step5 = phase2; etc.). Takes a dataframe column you want to group by, and a column you want to make a pathway out of and returns a pathway vector the size of your original data. Used when you want to know unique combinations of steps in order to count or group by. A medical pathway or business process steps are good use cases.
}
}
\examples{
asd <- data.frame(
    id               = rep(letters, times = 4)
  , service          = sample(
      c('ps1', 'ps2', 'ps3', 'ps4', 'ps5', 'ps6', 'ps7'
        , 'install1', 'install2', 'install3', 'other'
        )
    , size    = 26 * 4
    , replace = TRUE
    )
  , stringsAsFactors = FALSE
  )

asd$path1 <- makepath(
    groupcol = asd$id
  , pathcol  = asd$service
  , n.cores  = 1
  )
asd$path2 <- makepath(
    groupcol   = asd$id
  , pathcol    = asd$service
  , subset     = TRUE
  , keepvalues = c('ps1', 'ps2', 'ps3')
  , n.cores    = 1
  )
asd$path3 <- makepath(
    groupcol   = asd$id
  , pathcol    = asd$service
  , subset     = TRUE
  , keepvalues = c('ps1', 'ps2', 'ps3')
  , ordered    = FALSE
  , n.cores    = 1
  )
asd$path4 <- makepath(
    groupcol   = asd$id
  , pathcol    = asd$service
  , subset     = TRUE
  , keepvalues = c('ps1', 'ps2', 'ps3')
  , ordered    = FALSE
  , keepconsec = TRUE
  , n.cores    = 1
  )

asd

}
\keyword{path}
\keyword{pathway}
\keyword{steps}
