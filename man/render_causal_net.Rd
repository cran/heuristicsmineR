% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/render_causal_net.R
\name{render_causal_net}
\alias{render_causal_net}
\title{Renders a Causal net as graph}
\usage{
render_causal_net(
  causal_net,
  rankdir = "LR",
  layout = "dot",
  render = T,
  fixed_edge_width = F,
  fixed_node_pos = NULL,
  ...
)
}
\arguments{
\item{causal_net}{A causal net created by \code{\link{causal_net}}}

\item{rankdir}{Rankdir to be used for DiagrammeR.}

\item{layout}{Layout to be used for DiagrammeR.}

\item{render}{Whether to directly render the DiagrammeR graph or simply return it.}

\item{fixed_edge_width}{If TRUE, don't vary the width of edges.}

\item{fixed_node_pos}{When specified as a data.frame with three columns 'act', 'x', and 'y' the position of nodes is fixed. Note that his can only be used with the 'neato' layout engine.}

\item{...}{Further parameters forwarded to the DiagrammeR render function.}
}
\value{
A DiagrammeR graph of the Causal net.
}
\description{
Renders a Causal net as graph
}
\examples{
render_causal_net(causal_net(L_heur_1))

}
