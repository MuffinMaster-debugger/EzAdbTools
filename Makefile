# Written by Tipz Team

HASH := $(shell git rev-parse --short HEAD)

zip:
	zip -x .git\* Makefile README.md CONTRIBUTING.md SECURITY.md .github\* *.zip -r9 EzAdbTools_$(HASH).zip .

clean:
	rm *.zip || true
