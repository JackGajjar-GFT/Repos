output "random_number" {
	description = "generates and outputs a random number between 1 - 1000"
	value = random_integer.RandomNumber.result
