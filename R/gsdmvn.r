#  Copyright (c) 2021 Merck Sharp & Dohme Corp. a subsidiary of Merck & Co., Inc., Kenilworth, NJ, USA.
#
#  This file is part of the gsdmvn program.
#
#  gsdmvn is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.

#' gsdmvn: A package for group sequential design under non-proportional hazards (NPH)
#'
#' The gsdmvn package will eventually be incorporated into the gsDesign2 package.
#' This version is for the Regulatory/ASA Biopharmaceutical Subsection training course in September, 2020
#' The package computes the asymptotic normal distribution for group sequential designs,
#' generalizing the theory presented by Jennison and Turnbull (2000) to cases with
#' non-homogeneous treatment effect over time.
#' The primary application for this is group sequential design under the assumption of non-proportional hazards.
#' The gsdmvn package has 4 types of functions
#' 1) support for asymptotic normal distribution computation,
#' 2) support for group sequential bound derivation, and
#' 3) support for design and power calculations.
#' 4) applications to designs for survival analysis under non-proportional hazards assumptions.
#'
#' In addition to the above function categeories, vignettes show how to implement
#' 1) design for a binomial endpoint as an example of how to extend the package to other endpoint types,
#' 2) the extensive capabilities around group sequential boundary calculations,
#' including enabling capabilities not in the gsDesign package.
#'
#' @section gsdmvn functions:
#' The primary functions supporting non-proportional hazards in the short course are:
#' \itemize{
#' \item gs_design_ahr - derive group sequential design under non-proportional hazards (NPH) for logrank test
#' \item gs_power_ahr - compute power for a group sequential design under non-proportional hazards for logrank test
#' }
#'
#' Key supportive functions specify bound derivation for designs:
#' \itemize{
#' \item gs_b - directly provide bounds for designs
#' \item gs_spending_bound - provide bounds based on a spending function (e.g., Lan-DeMets O'Brien-Fleming)
#' }
#'
#' Underlying functions to support numerical integration that should not be directly needed by typical users are
#' \itemize{
#' \item gridpts - set up grid points and weights for numerical integration for a normal distribution
#' \item h1 - initialize numerical integration grid points and weights for NPH for first analysis
#' \item hupdate - update numerical integration grid points and weights for NPH from one interim to the next
#' \item gs_power_npe - general non-constant-effect size boundary crossing probability calculation for group sequential design
#' }
#'
#' @author Keaven Anderson \email{keaven\_anderson@@merck.}
#' @references Jennison C and Turnbull BW (2000), \emph{Group Sequential
#' Methods with Applications to Clinical Trials}. Boca Raton: Chapman and Hall.
#' @docType package
#' @name gsdmvn
#' @keywords design survival nonparametric
NULL
