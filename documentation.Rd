\name{TS measurement tool}
\alias{TSmeasTool}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This tool takes 2 time series (TS) and get perform some distance measurements.
Start by choosing a .csv file.
The temporal order should be given by lines, i.e., each column should be a TS starting in the first line.
You shall receive a plot representing the Dynamic Time Warping alignment and the following distances:
Euclidean, Manhattan and DTW (total and normalized).
}
\usage{
Choose a data set; choose two time series (column indexes) and run.
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{TS to be compared (a,b)}{
     TS column indexes (TS1,TS2)
}
\item{Select the maximumn number of lines}{
     The maximum number of lines to be compared (9...999)
}
}
\details{
          As a visual tool, you just need to fulfil the parameters and run.
          For ease of use, there are some functions that helps the user to format the data set.
}
\value{

}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}



\seealso{

}
\examples{
}

