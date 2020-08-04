ERL ?= erl
EBIN_DEPS_DIRS := $(wildcard deps/*/ebin)

all: compile test

compile:
	@rebar3 compile

test:
	@rebar3 eunit

run:
	@$(ERL) -pa ebin/ -pa $(EBIN_DEPS_DIRS)

.PHONY: test
