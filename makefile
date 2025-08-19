.PHONY: _help

_help:
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

dev: ## dev
	clojure -M:dev:nrepl

rebl: ## repl
	clojure -M:dev:rebl:nrepl -m nrepl.cmdline --interactive --color --middleware '[nrepl-rebl.core/wrap-rebl cider.nrepl/cider-middleware]'

run: ## run
	clojure -M -m usrj.clj

uber: ## uber
	clojure -T:build uber

clean: ## clean
	clojure -T:build clean
