% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/expodb.R
\name{ExpoNexus}
\alias{ExpoNexus}
\title{Find the nexuses between keywords}
\usage{
ExpoNexus = function(PID, OutPath = "default", ClassA, ClassB, KeysA, KeysB)
}
\arguments{
\item{PID}{chr. Program ID. It must be the same with the PID generated by ExpoDB}

\item{OutPath}{chr. Output file directory, e.g. "D:/test". It should be noted that
the slash symbol is "/", not "\". If "default", the current working directory will be set.}

\item{ClassA}{chr. Find the nexuses between the keywords in ClassA and ClassB.
Options include "chemical" <-> "protein", "chemical" <-> "GO",
"protein" <-> "protein", "disease" <-> "GO", "protein" <-> "disease"}

\item{ClassB}{chr. See "ClassA".}

\item{KeysA}{chr. The lowercases of name, alias, and ID of chemical, metabolite, protein,
and enzyme are all accepted. e.g., "7440-43-9,OMIM:619217,zinc,GO:0010942".}

\item{KeysB}{chr. See "KeysA".}
}
\value{
A data frame
}
\description{
Find the nexuses between the keywords in ExposomeX platform.
Nexus direction from keywords A (class A) to keywords B (class B)
}
\examples{
res <- InitDb()
   res1 = LoadDb(PID = res$PID, UseExample = "example#1")
   res2 = ExpoNexus(PID=res$PID,OutPath = OutPath,ClassA = "chemical",
       ClassB = "protein",KeysA = "default",KeysB = "default")
   FuncExit(PID = res$PID)
}
\author{
Bin Wang
}
