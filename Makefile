# Makefile

.DEFAULT_GOAL := help

.PHONY: help
help: ## help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

# if first argument is t
ifeq (t,$(firstword $(MAKECMDGOALS)))
  # use the rest as arguments for "run"
  TEST_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
  # ...and turn them into do-nothing targets
  $(eval $(TEST_ARGS):;@:)
endif

.PHONY: copy
copy: ## copy config files to ~
	cp .zshrc ~/.zshrc && \
		cp .vimrc ~/.vimrc && \
		cp .vim/colors/jellybeans.vim ~/.vim/colors/jellybeans.vim

