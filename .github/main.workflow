workflow "composer install" {
  on = "push"
  resolves = [
    "composer install",
  ]
}

# Install composer dependencies
action "composer install" {
  uses = "MilesChou/composer-action@master"
  args = "install -q --no-ansi --no-interaction --no-scripts --no-suggest --no-progress --prefer-dist"
}
