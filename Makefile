.PHONY: pull serve list

pull:
	@bin/pull

bundle: pull
	@bin/bundle

list:
	curl -L -o browsers.list.origin https://raw.githubusercontent.com/allinurl/goaccess/master/config/browsers.list
	test ! -e browsers.list || rm browsers.list
	bash -c "cat browsers.list.*" >>browsers.list

report: 
	@bin/report

serve: report
	@python -m http.server --directory dist --bind 127.0.0.1 1313
