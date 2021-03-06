% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/trajectories.R
\name{exp_traj}
\alias{exp_traj}
\title{Exponential trajectory}
\usage{
exp_traj(t, scale = 1000, rate = 1)
}
\arguments{
\item{t}{numeric vector of times at which to evaluate the trajectory
function.}

\item{scale}{value to return at \code{t=0}.}

\item{rate}{exponential decay rate.}
}
\value{
A vector containing a value of \code{level} for every element in
  \code{t}.
}
\description{
Exponential trajectory
}
\examples{
unif_traj(0:10, scale = 100)
}

