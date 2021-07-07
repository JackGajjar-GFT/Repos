# The following example shows how to generate a random priority
# between 1 and 50000 for a aws_alb_listener_rule resource:

resource "random_integer" "random_number" {
  min = 1
  max = 50000
}
