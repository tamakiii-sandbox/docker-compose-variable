.PHONY: install install-dev development clean

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
