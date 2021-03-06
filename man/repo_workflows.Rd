% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/repo_workflows.R
\name{repo_workflows}
\alias{repo_workflows}
\alias{repo_actions}
\title{Get repository workflows (actions)}
\usage{
repo_workflows(repo, full = FALSE)
}
\arguments{
\item{repo}{character, a single GitHub repository address in \code{owner/repo} format}

\item{full}{logical, should all columns be returned}
}
\description{
\code{repo_workflows} returns a tibble containing details on a repositories workflows.
}
