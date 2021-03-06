% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/local_repo.R, R/local_repo_add.R,
%   R/local_repo_branch.R, R/local_repo_commit.R, R/local_repo_pull.R,
%   R/local_repo_push.R
\name{local_repo}
\alias{local_repo}
\alias{local_repo_add}
\alias{local_repo_branch}
\alias{local_repo_commit}
\alias{local_repo_pull}
\alias{local_repo_push}
\title{Local repository tools}
\usage{
local_repo_add(repo_dir, files = ".")

local_repo_branch(repo_dir, branch)

local_repo_commit(repo_dir, message)

local_repo_pull(
  repo_dir,
  remote = "origin",
  branch = "master",
  verbose = FALSE
)

local_repo_push(
  repo_dir,
  remote = "origin",
  branch = "master",
  force = FALSE,
  prompt = TRUE,
  mirror = FALSE,
  verbose = FALSE
)
}
\arguments{
\item{repo_dir}{Vector of repo directories or a single directory containing one or more repos.}

\item{files}{Files to be staged}

\item{branch}{Repository branch to use.}

\item{message}{Commit message}

\item{remote}{Repository remote to use.}

\item{verbose}{Display verbose output.}

\item{force}{Force push?}

\item{prompt}{Prompt before force push?}

\item{mirror}{Equivalent to \code{--mirror}}
}
\description{
The functions provide tools for working with local git repositories, ghclass includes support for following git commands:
\itemize{
\item git add = \code{local_repo_add}
\item git commit = \code{local_repo_commit}
\item git push = \code{local_repo_push}
\item git pull = \code{local_repo_pull}
\item git branch = \code{local_repo_branch}
}
}
\examples{
\dontrun{
g = org_repos("Sta323-Sp18","hw3-")
local_repo_clone(g, "hw3")

local_repo_pull(g, "hw3")

# After Modifying hw3.Rmd
local_repo_add("hw3", "hw3.Rmd")
local_repo_commit("hw3", "Revised homework")
local_repo_push("hw3")
}

}
