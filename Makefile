# Written by Tipz Team

HASH := $(shell git rev-parse --short HEAD)
BRANCH := $(shell git rev-parse --abbrev-ref HEAD)
VERSION := $(shell cat variables/currentversion)

zip:
ifeq ($(BRANCH), test)
	zip -x .git\* Makefile README.md CONTRIBUTING.md SECURITY.md .github\* *.zip -r9 EzAdbTools_$(HASH).zip .
else
	zip -x .git\* Makefile README.md CONTRIBUTING.md SECURITY.md .github\* *.zip -r9 EzAdbTools_$(VERSION).zip .
endif
clean:
	rm *.zip || true
