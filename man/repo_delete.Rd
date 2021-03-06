% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/repo_delete.R
\name{repo_delete}
\alias{repo_delete}
\title{Delete repository}
\usage{
repo_delete(repo, prompt = TRUE)
}
\arguments{
\item{repo}{Character. Name of the GitHub repository in \code{owner/name} format.}

\item{prompt}{Logical. Should the user be prompted before deleting repositories. Default \code{true}.}
}
\description{
\code{repo_delete} deletes an existing repository from GitHub.
}
