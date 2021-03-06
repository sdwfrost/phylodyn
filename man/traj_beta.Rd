% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/trajectories.R
\name{traj_beta}
\alias{traj_beta}
\title{Raise a trajectory function to a power}
\usage{
traj_beta(t, traj, beta, ...)
}
\arguments{
\item{t}{numeric vector of times at which to evaluate the transformed
trajectory function.}

\item{traj}{function. The trajectory to transform.}

\item{beta}{numeric. The power to raise the trajectory function to.}

\item{...}{additional arguments to pass to trajectory function.}
}
\value{
A vector containing \eqn{f(t)^\beta}.
}
\description{
Raise a trajectory function to a power
}
\examples{
traj_beta(1:3, unif_traj, 2, level=2)
}

