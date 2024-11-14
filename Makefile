run:
	hugo server --bind 0.0.0.0 -D --config hugo.toml
build:
	hugo
new:
	hugo new content content/notes/open-webui-local-vllm-model.md
push:
	git subtree push --prefix public origin gh-pages
