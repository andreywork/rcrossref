context("testing as.tdmurl")

a <- as.tdmurl("http://downloads.hindawi.com/journals/bmri/2014/201717.xml", "xml")
b <- as.tdmurl("http://downloads.hindawi.com/journals/bmri/2014/201717.pdf", "pdf")

test_that("as.tdmurl returns correct class", {
  expect_is(a, "tdmurl")
  expect_is(a[[1]], "character")

  expect_is(b, "tdmurl")
  expect_is(attr(b, "type"), "character")
})

test_that("as.tdmurl dimensions are correct", {
  expect_equal(length(a), 1)
  expect_equal(length(b), 1)
  expect_equal(length(b[[1]]), 1)
})

test_that("as.tdmurl gives back right values", {
  expect_equal(attr(a, "type"), "xml")
  expect_equal(attr(b, "type"), "pdf")
})

test_that("as.tdmurl fails correctly", {
  expect_error(as.tdmurl(), 'no applicable method for')
  expect_error(as.tdmurl("3434"), 'argument "type" is missing, with no default')
  expect_error(as.tdmurl("http://stuff", "bbb"), "'arg' should be one of")
})
