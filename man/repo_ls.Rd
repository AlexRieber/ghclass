% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/repo_ls.R
\name{repo_ls}
\alias{repo_ls}
\title{Low level function for listing the contents of a GitHub Repository}
\usage{
repo_ls(repo, path, branch = "master", full_path = FALSE)
}
\arguments{
\item{repo}{Character. Address of repository in \code{owner/name} format.}

\item{path}{Characer. Path to list.}

\item{branch}{Character. Name of branch to use, defaults to "master".}

\item{full_path}{Logical. Should the function return the full path of the files and directories.}
}
\description{
Low level function for listing the contents of a GitHub Repository
}
