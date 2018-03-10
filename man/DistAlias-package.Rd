\name{DistAlias-package}
\alias{DistAlias-package}
\alias{DistAlias}
\docType{package}

\title{
\packageTitle{DistAlias}
}
\description{
\packageDescription{DistAlias}
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{DistAlias}
\packageIndices{DistAlias}
}
\author{
\packageAuthor{DistAlias}

Maintainer: \packageMaintainer{DistAlias}
}
\references{

}

\keyword{ package }
\seealso{

}
\examples{
### Find the probably density of x=0 for a standard normal.

## Normal R:
dnorm(0)

## Using the wrapper instead:
p("norm")(0)


### Find the cumulative probability that x<-1 for a Student T distribution, with 20 degrees of freedom.

## Normal R:
pt(-1, df=20)

## Using the wrapper instead:
cdf("t")(-1, df=20)


### For a uniform distribution between 2 and 8, find the value corresponding to the bottom 35\% of the data.

## Normal R:
qunif(.35, min=2, max=8)

## Using the wrapper instead:
quant("unif")(.35, min=2, max=8)


### Generate 3 random numbers from a binomial distribution with 5 trials and a .2 success probability.

## Normal R
rbinom(3, size=5, prob=.2)

## Using the wrapper instead:
random("binom")(3, size=5, prob=.2)
}
