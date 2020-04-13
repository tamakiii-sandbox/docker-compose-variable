.PHONY: install clean

TARGET := production-pseudo

install: \
	.env \
	build

install-dev:
	$(MAKE) -f $(lastword $(MAKEFILE_LIST)) install TARGET=development

.env:
	touch $@
	echo "TARGET=$(TARGET)" >> $@

build:
	docker-compose build

clean:
	rm -rf .env
