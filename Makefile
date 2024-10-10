run:
	hugo server --bind 0.0.0.0 -D --config hugo.toml
build:
	hugo
push:
	git subtree push --prefix public origin gh-pages
