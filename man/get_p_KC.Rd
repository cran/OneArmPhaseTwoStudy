% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zzz.R
\name{get_p_KC}
\alias{get_p_KC}
\title{Calculates the p-value.}
\usage{
get_p_KC(k, r1, n1, n, p0)
}
\arguments{
\item{k}{overall observed responses.}

\item{r1}{critical value for the first stage.}

\item{n1}{sample size for the first stage.}

\item{n}{overall sample size.}

\item{p0}{response probability under the null hypothesis.}
}
\description{
Calculates the p-value for a Simon's two-stage design based on the work from Koyama and Chen.
}
\examples{
#Calculate a Simon's two-stage design
design <- getSolutions()$Solutions[3,] #minimax-design for the default values.

#Assume 9 responses were observed in the whole trial.
k = 9

p_val <- get_p_KC(k, design$r1, design$n1, design$n, design$p0)
}
\references{
Koyama T and Chen H (2008): Proper inference from Simon's two-stage designs. Statistics in Medicine, 27(16):3145-3154.
}
