abbr --add rg 'rg --smart-case'

abbr --add argdo 'parallel --will-cite --jobs=100% --halt=soon,fail=10% --no-run-if-empty --line-buffer'

abbr --add xargdo 'parallel --will-cite --jobs=100% --halt=soon,fail=10% --no-run-if-empty --xargs --max-args=20'

abbr --add vargs 'xargs -o nvim'

abbr --add demarkdown 'pandoc -f markdown -t plain --wrap=none'
