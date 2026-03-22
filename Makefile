# Variables
JEKYLL_DIR := docs

# ── Help ──────────────────────────────────────────────────────────────────────
.PHONY: help
help: ## Show this help message
	@grep -E '^[a-zA-Z_-]+:.*##' $(MAKEFILE_LIST) \
	  | awk 'BEGIN {FS = ":.*##"}; {printf "  \033[36m%-35s\033[0m %s\n", $$1, $$2}'

# ── Clean ─────────────────────────────────────────────────────────────────────
.PHONY: clean
clean: ## Clean generated files and artifacts
	@echo "==> Cleaning up Jekyll artifacts..."
	@cd $(JEKYLL_DIR) && rm -rf _site .jekyll-cache .sass-cache .jekyll-metadata

# ── Bundle install─────────────────────────────────────────────────────────────
.PHONY: bundle_install_deps
bundle_install_deps: ## Install bundle dependencies
	@cd $(JEKYLL_DIR) && bundle install

# ── Serve ─────────────────────────────────────────────────────────────────────
.PHONY: serve
serve: bundle_install_deps ## Serve the site locally
	@cd $(JEKYLL_DIR) && bundle exec jekyll serve