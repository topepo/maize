
#' Maize parameters

#' @inheritParams dials::rbf_sigma
#' @export
bessel_sigma <- function(range = c(-10, 0), trans = scales::transform_log10()) {
  dials::new_quant_param(
    type = "double",
    range = range,
    inclusive = c(TRUE, TRUE),
    trans = trans,
    label = c(bessel_sigma = "Bessel Function sigma"),
    finalize = dials::get_rbf_range
  )
}


#' @rdname bessel_sigma
#' @export
bessel_order <- function(range = c(1, 10), trans = NULL) {
  dials::new_quant_param(
    type = "double",
    range = range,
    inclusive = c(TRUE, TRUE),
    trans = trans,
    label = c(bessel_order = "Bessel Order"),
    finalize = NULL
  )
}

#' @rdname bessel_sigma
#' @export
laplace_sigma <- function(range = c(-10, 0), trans = scales::transform_log10()) {
  dials::new_quant_param(
    type = "double",
    range = range,
    inclusive = c(TRUE, TRUE),
    trans = trans,
    label = c(laplace_sigma = "Laplace Function sigma"),
    finalize = dials::get_rbf_range
  )
}
