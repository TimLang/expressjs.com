JADE = ./node_modules/.bin/jade

HTML = index.html \
		api.html \
		guide.html \
		applications.html \
		community.html \
		faq.html

docs: $(HTML)

%.html: %.jade
		$(JADE) --path $< < $< > $@

clean:
		rm -f `ls *.html | grep -v jade`

.PHONY: docs clean
