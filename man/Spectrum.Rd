\name{Spectrum}
\alias{Spectrum}
\title{Estimates Frequency Spectrum}
\description{
This function estimates the frequency spectrum of the xdata array together with its 95\% and 99\% significance level. The output is provided as a matrix with dimensions c(number of frequencies, 4). The column contains the frequency values, the power, the 95\% significance level and the 99\% one.\cr
The spectrum estimation relies on a R built-in function and the significance levels are estimated by a Monte-Carlo method.
}
\usage{Spectrum(xdata)}
\arguments{
  \item{xdata}{Array of which the frequency spectrum is required}
}
\value{Frequency spectrum with dimensions c(number of frequencies, 4). The column contains the frequency values, the power, the 95\% significance level and the 99\% one.}
\examples{
# Load sample data as in Load() example:
example(Load)

ensmod <- Mean1Dim(sampleData$mod, 2)
for (jstartdate in 1:3) {
  spectrum <- Spectrum(ensmod[1, jstartdate, ])
  for (jlen in 1:dim(spectrum)[1]) {
    if (spectrum[jlen, 2] > spectrum[jlen, 4]) {
      ensmod[1, jstartdate, ] <- Filter(ensmod[1, jstartdate, ],  
                                        spectrum[jlen, 1])
    }
  }
}
PlotAno(InsertDim(ensmod, 2, 1), sdates = startDates, fileout =
        'filtered_ensemble_mean.eps')
}
\author{
History:\cr
0.1  -  2012-02  (V. Guemas, \email{virginie.guemas at ic3.cat})  -  Original code\cr
1.0  -  2013-09  (N. Manubens, \email{nicolau.manubens at ic3.cat})  -  Formatting to CRAN
}
\keyword{datagen}
