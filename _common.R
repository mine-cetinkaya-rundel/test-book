status <- function(type) {
  status <- switch(type,
                   polishing = "should be readable but is currently undergoing final polishing",
                   restructuring = "is undergoing heavy restructuring and may be confusing or incomplete",
                   drafting = "is currently a dumping ground for ideas, and we don't recommend reading it",
                   complete = "is largely complete and just needs final proof reading",
                   stop("Invalid `type`", call. = FALSE)
  )

  cat(paste0(
    "::: {.rmdnote}\n",
    "You are reading the work-in-progress second edition of R for Data Science. ",
    "This chapter ", status, ". ",
    "You can find the complete first edition at <https://r4ds.had.co.nz>.\n",
    ":::\n"
  ))
}
