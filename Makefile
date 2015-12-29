.PHONY: index.html  # regenerate every time

index.html:
	nmbug-status --config status-config.json >"$@"
