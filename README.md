# DistAlias

Fetches R probability distribution functions, but using commands that AREN'T impossible to remember. 
## Usage
```
p(distribution)
cdf(distribution)
quant(distribution)
random(distribution)
```

### Argument
  - `distribution`
    A string with the name of the distribution (using R's usual abbrevations).
## Details
When you need some probability distribution function, don't you usually think "p" instead of "d"? When you need a cumulative distribution function, don't you think "cdf" rather than "p"? Well, me too. If you're tired of getting the wrong probability function EVERY SINGLE TIME all because of R's poor choice of naming, then this package is for you. All it does is fetch the distributions you want, by remembering which stupid letter it's supposed to be for you. Supply the normal R abbreviation for the distribution as a string (ie. for 'dnorm' the distribution is 'norm'. For 'ppois' the distribution is 'pois'. Etc.), and each of the wrapper functions will return the function you're actually looking for. Then supply the arguments you need to that function. See the example for more details.

## Return Value
A probability function (either a density, cdf, quantile, or random number function).


## Examples
```
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
```