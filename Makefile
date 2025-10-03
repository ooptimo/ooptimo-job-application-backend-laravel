.PHONY: setup serve test format


setup:
	cp -n .env.example .env || true
	php artisan key:generate
	mkdir -p database
	[ -f database/database.sqlite ] || touch database/database.sqlite
	php artisan migrate


serve:
	php artisan serve


test:
	php artisan test


format:
	php -d detect_unicode=0 vendor/bin/pint
