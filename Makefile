.PHONY: pull serve

pull:
	@bin/pull

bundle:
	@bin/bundle

report: 
	@bin/report

serve: pull report
	@python -m http.server --directory dist --bind 127.0.0.1 1313
