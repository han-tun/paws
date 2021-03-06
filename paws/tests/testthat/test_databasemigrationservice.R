svc <- paws::databasemigrationservice()

test_that("describe_account_attributes", {
  expect_error(svc$describe_account_attributes(), NA)
})

test_that("describe_applicable_individual_assessments", {
  expect_error(svc$describe_applicable_individual_assessments(), NA)
})

test_that("describe_certificates", {
  expect_error(svc$describe_certificates(), NA)
})

test_that("describe_connections", {
  expect_error(svc$describe_connections(), NA)
})

test_that("describe_endpoint_types", {
  expect_error(svc$describe_endpoint_types(), NA)
})

test_that("describe_endpoints", {
  expect_error(svc$describe_endpoints(), NA)
})

test_that("describe_event_categories", {
  expect_error(svc$describe_event_categories(), NA)
})

test_that("describe_event_subscriptions", {
  expect_error(svc$describe_event_subscriptions(), NA)
})

test_that("describe_events", {
  expect_error(svc$describe_events(), NA)
})

test_that("describe_orderable_replication_instances", {
  expect_error(svc$describe_orderable_replication_instances(), NA)
})

test_that("describe_pending_maintenance_actions", {
  expect_error(svc$describe_pending_maintenance_actions(), NA)
})

test_that("describe_replication_instances", {
  expect_error(svc$describe_replication_instances(), NA)
})

test_that("describe_replication_subnet_groups", {
  expect_error(svc$describe_replication_subnet_groups(), NA)
})

test_that("describe_replication_task_assessment_runs", {
  expect_error(svc$describe_replication_task_assessment_runs(), NA)
})

test_that("describe_replication_task_individual_assessments", {
  expect_error(svc$describe_replication_task_individual_assessments(), NA)
})

test_that("describe_replication_tasks", {
  expect_error(svc$describe_replication_tasks(), NA)
})
