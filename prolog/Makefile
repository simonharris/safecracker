test:
	@swipl -g "load_files([tests/test_safe_cracker,\
						  tests/test_grammar,\
						  tests/test_parser,\
						  tests/test_solutions]), run_tests" -t halt

build:
	docker build -t sc-prolog .

run: build
	docker run --rm sc-prolog

repl:
	docker run --rm -it sc-prolog:latest swipl
