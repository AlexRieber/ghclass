% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/peer.R
\name{peer_return}
\alias{peer_return}
\title{Return peer feedback to authors}
\usage{
peer_return(
  org,
  roster,
  path,
  form_review = NULL,
  local_path_rating = NULL,
  double_blind = TRUE,
  prefix = "",
  suffix = "",
  message = NULL,
  branch = "master",
  overwrite = FALSE
)
}
\arguments{
\item{org}{Character. Name of GitHub Organization.}

\item{roster}{Character. Data frame or file path of roster file with author-reviewer assignments. Must contain a column \code{user} with GitHub user names of authors, a column \code{user_random} with randomized tokens for user names, and one or more \verb{rev*} columns that specify review assignments as values of the vector \code{user_random}.}

\item{path}{Character. File name or vector of file names to be included. Cannot be left empty.}

\item{form_review}{Character. File name of reviewer feedback form (must be .Rmd document). If \code{NULL}, no review form will be moved back to authors' repositories.}

\item{local_path_rating}{Character. Local file path of rating feedback form to be added (must be .Rmd document), defaults to \code{NULL}. If \code{NULL}, no rating form will be added to authors' repositories.}

\item{double_blind}{Logical. Specifies whether review is conducted double-blind (i.e. neither reviewer nor author can identify each other), or single-blind (i.e. authors remain anonymous but reviewer identities are revealed). If \code{double_blind = TRUE}, reviewer folders are identified by the anonymized user IDs in the roster's \code{user_random} column. If \code{double_blind = FALSE}, reviewer folders are identified by the original user names. Defaults to \code{TRUE}.}

\item{prefix}{Character. Common repository name prefix.}

\item{suffix}{Character. Common repository name suffix.}

\item{message}{Character. Commit message, defaults to "Assigning review."}

\item{branch}{Character. Name of branch the file should be committed to, defaults to \code{master}.}

\item{overwrite}{Logical. Whether existing files in reviewers' repositories should be overwritten, defaults to \code{FALSE}.}
}
\description{
#' \code{peer_assign} adds files from authors' repositories to review repositories. The function creates an issue on the reviewers' repositories informing them that the review files are available and creates links to the relevant documents.
\code{peer_return()} returns the review files from reviewers' review repositories to authors' repositories. The function i) adds empty rating form (if specified via \code{local_path_rating}), ii) moves completed review (if specified via \code{form_review}) from reviewer to author, iii) moves assignment files from reviewer to author (if specified via \code{path} and changed by reviewer), and iv) opens an issue on authors' repositories informing them about the added files.
}
\examples{
\dontrun{
peer_return(org = "ghclass-test",
roster = "hw2_roster_seed12345.csv",
path = c("hw2_task.Rmd", "iris_data.csv"),
form_review = "hw2_review.Rmd",
local_path_rating = "./hw2/hw2_rating.Rmd",
prefix = "hw2-")
}

}
\seealso{
Other peer review functions: 
\code{\link{peer_assign}()},
\code{\link{peer_file_add_aut}()},
\code{\link{peer_file_add_rev}()},
\code{\link{peer_form_create_rating}()},
\code{\link{peer_form_create_review}()},
\code{\link{peer_init}()},
\code{\link{peer_roster_create}()},
\code{\link{peer_score_rating}()},
\code{\link{peer_score_review}()}
}
\concept{peer review functions}
