% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/palette.R
\docType{data}
\name{hilighter_cols}
\alias{hilighter_cols}
\alias{view_cols}
\alias{assert_hex}
\alias{map_cols}
\title{Palettes and Palette Viewing}
\format{An object of class \code{character} of length 10.}
\usage{
hilighter_cols

view_cols(x)

assert_hex(x)

map_cols(list, cols = hilighter_cols)
}
\arguments{
\item{x}{A vector of colors (either R \code{colors()} or hexadecimal).}

\item{list}{A list of matches for a map.}

\item{cols}{A vector of colors.}
}
\value{
\code{view_cols} plots the colors as bars

\code{assert_hex} returns a vector of hexadecimal strings

\code{map_cols} returns a names list
}
\description{
\code{hilighter_cols} - A palette of 10 hilighter colors.

\code{view_cols} - Plots vector of colors.

\code{assert_hex} - Convert colors to hexadecimal.

\code{map_cols} - Add colors to a list to make a named list which is a map.
}
\examples{
view_cols(hilighter_cols)
view_cols(c("#FFA500", "#B3B3B3", "#FFFF00", 'red', 'blue', 'black'))

\dontrun{
library(tidyverse)

map_hilight <- list(
    c('\\\\bwe(\\'[a-z]+)?\\\\b'),
    c('\\\\bhe(\\'[a-z]+)?\\\\b'),
    'you',
    '\\\\bi(?=($|\\\\s))'
) \%>\%
    map_cols()

set.seed(10)
presidential_debates_2012 \%>\%
    dplyr::filter(person \%in\% c('ROMNEY', 'OBAMA')) \%>\%
    dplyr::group_by(person) \%>\%
    dplyr::sample_n(15) \%$\%
    hilight_term(dialogue, map_hilight, list(person)) \%>\%
    plot()
}
}
\keyword{datasets}
