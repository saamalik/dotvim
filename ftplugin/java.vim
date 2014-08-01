setlocal shiftwidth=4
setlocal tabstop=4
setlocal expandtab
setlocal makeprg=mvn\ compile\ -q\ -f\ pom.xml
setlocal errorformat=\[ERROR]\ %f:[%l\\,%c]\ %m
