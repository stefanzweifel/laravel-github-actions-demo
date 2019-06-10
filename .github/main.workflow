workflow "phpunit" {
  on = "push"
  resolves = [
    "phpunit",
  ]
}

# Install composer dependencies
action "composer install" {
  uses = "MilesChou/composer-action@master"
  args = "install -q --no-ansi --no-interaction --no-scripts --no-suggest --no-progress --prefer-dist"
}

# Run phpunit testsuite
action "phpunit" {
  needs = ["composer install"]
  uses = "./actions/run-phpunit/"
  args = "tests/"
}
