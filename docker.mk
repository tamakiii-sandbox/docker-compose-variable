.PHONY: install install-dev clean

TARGET := production-pseudo

install: \
	.env \
	build

install-dev: \
	development \
	install

development:
	$(eval TARGET := development)

.env:
	touch $@
	echo "TARGET=$(TARGET)" >> $@

build:
	docker-compose build

clean:
	rm -rf .env
