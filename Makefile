install:
	@npm install

test:
	@mocha

test-cov:
	@mocha --require blanket -R html-cov > coverage.html
	@echo Please open coverage.html to see the result!

test-coveralls:
echo TRAVIS_JOB_ID $(TRAVIS_JOB_ID)
	@NODE_ENV=test mocha --require blanket --reporter mocha-lcov-reporter | COVERALLS_REPO_TOKEN="Rk89NGQyijTghXhffTltrufsBuR2VH8ng" ./node_modules/coveralls/bin/coveralls.js

.PHONY: test test-cov test-coveralls