> Process discovery with variants of the Heuristics Miner algorithm

[![](https://cranlogs.r-pkg.org/badges/heuristicsmineR)](https://cran.r-project.org/package=heuristicsmineR)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/heuristicsmineR)](https://cran.r-project.org/package=heuristicsmineR)


# Discover process models with the Heuristics Miner

Discovery of process models from event logs based on the Heuristics Miner algorithm integrated into the [bupaR](https://bupar.net/) framework.

## Installation

You can install the release CRAN version with:

``` r
install.packages("heuristicsmineR")
```

You can install the development version of heuristicsmineR with:

``` r
source("https://install-github.me/r-lib/remotes")
remotes::install_github("bupaverse/heuristicsmineR")
```

## Example

This is a basic usage example discovering the Causal net of the `patients` event log:

``` r
library(heuristicsmineR)
library(eventdataR)
data(patients)

# Dependency graph / matrix
dependency_matrix(patients)
# Causal graph / Heuristics net
causal_net(patients)
```

![](man/figures/patients.png)

This discovers the Causal net of the built-in `L_heur_1` event log that was proposed in the book [Process Mining: Data Science in Action](http://www.processmining.org/publications.html#books):

``` r
# Efficient precedence matrix
m <- precedence_matrix_absolute(L_heur_1)
as.matrix(m)

# Example from Process mining book
dependency_matrix(L_heur_1, threshold = .7)
causal_net(L_heur_1, threshold = .7)
```

![](man/figures/L_heur_1_example.png)

The Causal net can be converted to a Petri net (note that there are some unnecessary invisible transition that are not yet removed):

``` r
# Convert to Petri net
library(petrinetR)
cn <- causal_net(L_heur_1, threshold = .7)
pn <- as.petrinet(cn)
render_PN(pn)
```

![](man/figures/L_heur_1_petrinet.png)

The Petri net can be further used, for example for conformance checking through the [pm4py](https://github.com/bupaverse/pm4py) package (Note that the final marking is currently not saved in petrinetR):

``` r
library(pm4py)
conformance_alignment(L_heur_1, pn, 
                      initial_marking = pn$marking, 
                      final_marking = c("p_in_6"))
```


