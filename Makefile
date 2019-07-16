ifneq ($(GOPATH),)
  prefix ?= $(GOPATH)
endif
prefix ?= /usr/local
exec_prefix ?= $(prefix)
ifneq ($(GOBIN),)
  bindir ?= $(GOBIN)
endif
bindir ?= $(exec_prefix)/bin

.PHONY: all install uninstall clean update-vendor

all:
	env GO111MODULE=on go build -mod vendor -tags opencl -v .

install:
	env GO111MODULE=on GOBIN=$(bindir) go install -mod vendor -tags opencl -v .

uninstall:
	rm -f $(bindir)/vhcgominer

clean:
	rm -f vhcgominer

update-vendor:
	rm -rf vendor
	env GO111MODULE=on go get -tags opencl -u
	env GO111MODULE=on go mod tidy -v
	env GO111MODULE=on go mod vendor
