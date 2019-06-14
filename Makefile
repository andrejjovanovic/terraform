modules = $(shell find . -type f -name "*.tf" -exec dirname {} \;|sort -u)

.PHONY: test

default: test

test:
	@for m in $(modules); do (terraform validate "$$m" && echo "√ $$m") || exit 1 ; done

validate:
	@if [[ `terraform validate` == *"Success"* ]]; then echo "Validation passed" && exit 1; else echo "Validation did not pass"; fi

fmt:
	@if [ `terraform fmt | wc -c` -gt 0 ]; then echo "terraform files need be formatted"; else echo "All fine" && exit 1; fi