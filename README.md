number\_groups
================

## Description

This is just a small function that numbers groups of consecutive equal
values in a vector. It might be usefull if those grouping values are not
quickly distinguishable, e.g. when in POSIXct format. The function works
in dplyr.

## Arguments

*values* – a vector of grouping values

*start\_with* – the number of the first group

# Example

``` r
data.frame(value = c("a", "a", "a", "b", "b", "C", "C", "C", "d", "d")) %>%
  mutate(group = number_groups(value, start_with = 10))
```

    ##    value group
    ## 1      a    10
    ## 2      a    10
    ## 3      a    10
    ## 4      b    11
    ## 5      b    11
    ## 6      C    12
    ## 7      C    12
    ## 8      C    12
    ## 9      d    13
    ## 10     d    13
