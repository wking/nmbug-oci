.PHONY: index.html  # regenerate every time

index.html:
	notmuch-report --config notmuch-report.json >"$@"
