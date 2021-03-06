% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zzz.R
\name{get_confidence_set}
\alias{get_confidence_set}
\title{Calculates the confidence set.}
\usage{
get_confidence_set(t, u, r1, n1, n, pc0, pt0, alpha)
}
\arguments{
\item{t}{observed responses in subset endpoint.}

\item{u}{observed responses in the superset endpoint.}

\item{r1}{critical value for the first stage.}

\item{n1}{sample size for the first stage.}

\item{n}{overall sample size.}

\item{pc0}{the response probability under the null hypothesis for the subset endpoint.}

\item{pt0}{the response probability under the null hypothesis for the superset endpoint.}

\item{alpha}{significance level the study was planned for.}
}
\description{
The p-value of  Subset Designs depends on two endpoints e.g. the superset endpoint and the subset endpoint.
Therefore the confidence interval for the response rate of the subset endpoint depends on the response rate of the superset endpoint and vice versa.
This results in a conficence "area" which is called the confidence set. "get_conficence_set" returns a set of points which outline the border of the confidence set.
}
\examples{
#Setup "sub1"-object
sub1 <- setupSub1Design(pc0 = 0.5, pt0 = 0.6)

#Calculate a  subset design
design <- getSolutionsSub1(sub1, skipN1 = FALSE)$Solutions[4,]

t <- 12
u <- 13
alpha = 0.1

conf_set <- get_confidence_set(t, u, design$r1, design$n1, design$n, design$pc0, design$pt0, alpha)
}
\references{
Kunz, C. U.  (2011), Two-stage designs for phase II trials with one or two endpoints. http://d-nb.info/1024218457
}
\seealso{
\code{\link{setupSub1Design}}, \code{\link{plot_confidence_set}}
}
