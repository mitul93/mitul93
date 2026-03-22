# Variables
JEKYLL_DIR := gh_pages

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

# ── Serve ─────────────────────────────────────────────────────────────────────
.PHONY: serve
serve: ## Serve the site locally
	@cd $(JEKYLL_DIR) && bundle exec jekyll serve