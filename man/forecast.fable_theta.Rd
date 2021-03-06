% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theta.R
\name{forecast.fable_theta}
\alias{forecast.fable_theta}
\title{Forecast a model from the fable package}
\usage{
\method{forecast}{fable_theta}(
  object,
  new_data,
  specials = NULL,
  bootstrap = FALSE,
  times = 5000,
  ...
)
}
\arguments{
\item{object}{The time series model used to produce the forecasts}

\item{new_data}{A \code{tsibble} containing future information used to forecast.}

\item{specials}{(passed by \code{\link[fabletools:forecast.mdl_df]{fabletools::forecast.mdl_df()}}).}

\item{bootstrap}{If \code{TRUE}, then forecast distributions are computed using simulation with resampled errors.}

\item{times}{The number of sample paths to use in estimating the forecast distribution when \code{boostrap = TRUE}.}

\item{...}{Additional arguments for forecast model methods.}
}
\value{
A list of forecasts.
}
\description{
Produces forecasts from a trained model.
}
\examples{
USAccDeaths \%>\%
  as_tsibble() \%>\%
  model(arima = ARIMA(log(value) ~ pdq(0, 1, 1) + PDQ(0, 1, 1))) \%>\%
  forecast()
}
