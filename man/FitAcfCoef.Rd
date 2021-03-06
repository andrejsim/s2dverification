\name{FitAcfCoef}
\alias{FitAcfCoef}
\title{Fits an AR1 AutoCorrelation Function Using the Cardano Formula}
\description{
This function finds the minimum point of the fourth order polynom (a - x)2 + 0.25(b - x2)2 written to fit the two autoregression coefficients a and b.\cr
Thanks to the Cardano formula, provided a and b in [0 1], the problem is well posed, delta > 0 and there is only one solution to the minimum.\cr\cr 
This function is called in Alpha() to minimize the mean square differences between the theoretical autocorrelation function of an AR1 and the first guess of estimated autocorrelation function estacf, using only the first two lags.}
\usage{FitAcfCoef(a, b)}
\arguments{
  \item{a}{Coefficient a : first estimate of the autocorrelation at lag 1}
  \item{b}{Coefficient b : first estimate of the autocorrelation at lag 2}
}
\value{Best estimate of the autocorrelation at lag 1}
\examples{
series <- GenSeries(1000, 0.35, 2, 1)
estacf <- acf(series[951:1000], plot = FALSE)$acf
alpha <- FitAcfCoef(max(estacf[2], 0), max(estacf[3], 0))
print(alpha)
}
\author{
History:\cr
0.1  -  2012-06  (L. Auger, \email{ludovic.auger@meteo.fr})  -  Original code\cr
1.0  -  2013-09  (N. Manubens, \email{nicolau.manubens at ic3.cat})  -  Formatting to CRAN
}
\keyword{datagen}
