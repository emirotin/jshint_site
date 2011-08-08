js: js/dist.js

js/dist.js: \
js/modernizr.js \
js/jquery.dev.js \
js/jquery.tmpl.js \
jshint.js \
js/core.js
	echo > $@
	for i in $^; do uglifyjs $$i | jsmin >> $@; echo ";;" >> $@; done
