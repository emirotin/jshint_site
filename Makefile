js: js/dist.js

js/dist.js: \
js/modernizr.js \
js/jquery.dev.js \
js/jquery.tmpl.js \
jshint.js \
js/ace.js \
js/ace-theme.js \
js/ace-js-mode.js \
js/core.js
	echo > $@
	for i in $^; do uglifyjs $$i | jsmin >> $@; echo ";;" >> $@; done
