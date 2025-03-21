% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/atoc.R
\name{atoc2gtfs}
\alias{atoc2gtfs}
\title{ATOC to GTFS}
\usage{
atoc2gtfs(
  path_in,
  silent = TRUE,
  ncores = 1,
  locations = "tiplocs",
  agency = "atoc_agency",
  shapes = FALSE,
  transfers = TRUE,
  missing_tiplocs = TRUE,
  working_timetable = FALSE,
  public_only = TRUE
)
}
\arguments{
\item{path_in}{Character, path to ATOC file e.g."C:/input/ttis123.zip"}

\item{silent}{Logical, should progress messages be suppressed (default TRUE)}

\item{ncores}{Numeric, When parallel processing how many cores to use
(default 1)}

\item{locations}{where to get tiploc locations (see details)}

\item{agency}{where to get agency.txt (see details)}

\item{shapes}{Logical, should shapes.txt be generated (default FALSE)}

\item{transfers}{Logical, should transfers.txt be generated (default TRUE)}

\item{missing_tiplocs}{Logical, if true will check for
any missing tiplocs against the main file and add them.(default TRUE)}

\item{working_timetable}{Logical, should WTT times be used instead of public times (default FALSE)}

\item{public_only}{Logical, only return calls/services that are for public passenger pickup/set down (default TRUE)}
}
\description{
Convert ATOC CIF files to GTFS
}
\details{
Locations

  The .msn file contains the physical locations of stations and other TIPLOC
  codes (e.g. junctions). However, the quality of the locations is often poor
  only accurate to about 1km and occasionally very wrong. Therefore, the
  UK2GTFS package contains an internal dataset of the TIPLOC locations with
  better location accuracy, which are used by default.

  However you can also specify `locations = "file"` to use the TIPLOC
  locations in the ATOC data or provide an SF data frame of your own.

  Or you can provide your own sf data frame of points in the same format as
  `tiplocs` or a path to a csv file formatted like a GTFS stops.txt

  Agency

  The ATOC files do not contain the necessary information to build the
  agency.txt file. Therefore this data is provided with the package. You can
  also pass your own data frame of agency information.
}
\seealso{
Other main: 
\code{\link{nr2gtfs}()}
}
\concept{main}
