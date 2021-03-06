% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/local_repo_clone.R
\name{local_repo_clone}
\alias{local_repo_clone}
\alias{repo_clone}
\title{Local repository tools}
\usage{
local_repo_clone(
  repo,
  local_path = ".",
  branch = "master",
  mirror = FALSE,
  verbose = FALSE
)
}
\arguments{
\item{repo}{GitHub repo address with the form \code{owner/name}.}

\item{local_path}{Local directory to store cloned repos.}

\item{branch}{Repository branch to use.}

\item{mirror}{Use equivalent of \code{--mirror} when cloning.}

\item{verbose}{Display verbose output.}
}
\description{
Clones repositories from GitHub to a local directory.
}
\examples{
\dontrun{
g = org_repos("Sta323-Sp18","hw3-")
local_repo_clone(g, "hw3")
}

}
