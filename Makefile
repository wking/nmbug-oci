.PHONY: index.html  # regenerate every time

index.html:
	notmuch-report --config notmuch-report.json >"$@"

commit: index.html
	git commit -vm "$$(git log -1 --date=short --format='index.html: Rebuild status%n%nPulling in %h (%s, %ad).' origin/master)" --edit "$<"
