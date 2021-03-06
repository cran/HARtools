% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/HARviewer.R
\name{HARviewer}
\alias{HARviewer}
\title{View HAR object}
\usage{
HARviewer(har, width = NULL, height = NULL, elementId = NULL)
}
\arguments{
\item{har}{A parsed har object output from \code{\link{readHAR}}}

\item{width}{Optional width of the HAR viewer}

\item{height}{Optional height of the HAR viewer}

\item{elementId}{Optional element id to assign to the HAR viewer}
}
\value{
Returns a \code{\link[htmlwidgets]{createWidget}} object. A
   waterfall of the HAR using the
   \href{https://github.com/micmro/PerfCascade}{PerfCascade}
   JavaScript library.
}
\description{
Create a waterfall view of a HAR object
}
\examples{
\dontrun{
har <- readHAR(system.file(package = "HARtools", "exdata",
                           "r-project.org.161028_W2_11MA.har"))
hv <- HARviewer(har)
# view in R
hv

# save and view
tFile <- tempfile(fileext = ".html")
htmlwidgets::saveWidget(hv,file = tFile)
browseURL(tFile)
}
}

