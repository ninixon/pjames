% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/excelpmt.R
\name{excelpmt}
\alias{excelpmt}
\title{R analog port of Excel's PMT function}
\usage{
excelpmt(rate, nper, pv, fv = 0, type = 0)
}
\arguments{
\item{rate}{interest rate}

\item{nper}{number of periods}

\item{pv}{present value}

\item{fv}{future value (default is \code{0})}

\item{type}{maturity of the payment; \code{0} = end of period, \code{1} = beginning; (default is \code{0})}
}
\description{
Originally found as a GIST: https://gist.github.com/raadk/dcd503815bbb271484ff
}
\examples{
excelpmt(rate = .03, nper = 60, pv = 60000)

}
\keyword{amortization}
\keyword{excel}
\keyword{finance}
\keyword{payment}
