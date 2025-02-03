# Serve the Jekyll site
serve:
	bundle exec jekyll serve

.PHONY: test
# Run tests
test:
	rake test

# Build the Jekyll site
build:
	bundle exec jekyll build
