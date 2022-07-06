.PHONY: pull serve

pull:
	@bin/pull

bundle: pull
	@bin/bundle

report: 
	@bin/report

serve: report
	@python -m http.server --directory dist --bind 127.0.0.1 1313
