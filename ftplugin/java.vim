setlocal shiftwidth=4
setlocal tabstop=4
setlocal noexpandtab
setlocal makeprg=mvn\ compile\ -q\ -f\ pom.xml
setlocal errorformat=\[ERROR]\ %f:[%l\\,%c]\ %m
