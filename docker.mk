.PHONY: install install-dev clean

TARGET := production-pseudo

install: \
	.env \
	build

install-dev: \
	$(eval TARGET=development) \
	install

.env:
	touch $@
	echo "TARGET=$(TARGET)" >> $@

build:
	docker-compose build

clean:
	rm -rf .env
