phylodyn
========

The purpose of `phylodyn` is to facilitate phylodynamic inference and analysis in an approachable R package.

## Installation

1. Install (if necessary) package dependencies and helpers `ape`, `INLA`, `spam` and `devtools` using `install.packages`.

2. Load `devtools` using `library(devtools)`.

3. Install `phylodyn` using

    a. `install_github("mdkarcher/phylodyn/")`, or

    b. `install_github("mdkarcher/phylodyn/", build_vignettes = TRUE)` if you want some illustrative vignettes (note: using `build_vignettes = TRUE` will make the install take longer).

## Vignettes

1. **SimpleBNPR**: A short example showing how to use BNPR and BNPR-PS on simulated data, illustraring methodology in [2] and [5].

2. **NewYorkInfluenza**: A case study analyzing influenza data from New York, reproducing analysis in [5] on data from [1].

3. **RegionalInfluenza**: A case study analyzing influenza data from nine geographic regions, reproducing analsyis in [5] on data from [3].

4. **RegionalSeasonality**: A case study analyzing influenza seasonality from nine geographic regions, reproducing analsyis in [5] on data from [3].

5. **SimplePhyloinfer**: A short example comparing BNPR with a split HMC MCMC sampler approach, illustrating methodology in [4].

6. **LongPhyloinfer**: A longer example comparing BNPR with multiple MCMC samplers, including split HMC as in SimplePhyloinfer, illustrating methodology in [4].

## Datasets

1. **New York influenza** BEAST XML for inferring genealogy using sequence data from [1].
    * NewYork.xml

2. **Regional influenza** BEAST XML for inferring genealogy using sequence data from [3].
    * Europe.xml
    * India.xml
    * JapanKorea.xml
    * NorthChina.xml
    * Oceania.xml
    * SouthAmerica.xml
    * SouthChina.xml
    * SoutheastAsia.xml
    * USACanada.xml

## References

1. A. Rambaut, O. G. Pybus, M. I. Nelson, C. Viboud, J. K. Taubenberger, E. C. Holmes
[The genomic and epidemiological dynamics of human influenza A
virus](http://www.nature.com/doifinder/10.1038/nature06945).
*Nature*, 453(7195): 615–619, 2008.

2. J. A. Palacios and V. N. Minin.
[Integrated nested Laplace approximation for Bayesian nonparametric phylodynamics](http://www.auai.org/uai2012/papers/310.pdf).
In *Proceedings of the Twenty-Eighth International Conference on Uncertainty in Artificial Intelligence*, pages 726–735, 2012.

3. D. Zinder, T. Bedford, E. B. Baskerville, R. J. Woods, M. Roy, M. Pascual.
[Seasonality in the migration and establishment of H3N2 Influenza lineages with epidemic growth and decline](http://bmcevolbiol.biomedcentral.com/articles/10.1186/s12862-014-0272-2).
*BMC Evolutionary Biology*, 14(1): 272, 2014.

4. S. Lan, J. A. Palacios, M. Karcher, V. N. Minin, and B. Shahbaba
[An Efficient Bayesian Inference Framework for Coalescent-Based Nonparametric Phylodynamics](http://bioinformatics.oxfordjournals.org/content/31/20/3282),
*Bioinformatics*, 31(20): 3282-3289, 2015.

5. M. D. Karcher, J. A. Palacios, T. Bedford, M. A. Suchard, and V. N. Minin.
[Quantifying and mitigating the effect of preferential sampling on phylodynamic inference](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004789).
*PLOS Computational Biology*, 12:e1004789, 2016.
