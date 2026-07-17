library(lavaan)

data("HolzingerSwineford1939")

model <- '
visual  =~ x1 + x2 + x3
textual =~ x4 + x5 + x6
speed   =~ x7 + x8 + x9
'

fit <- cfa(
  model,
  data = HolzingerSwineford1939
)

summary(
  fit,
  fit.measures = TRUE,
  standardized = TRUE
)
