" Gdiff disable diff
command! Gdiffoff diffoff | q | Gedit

" Svn status
command! Svnstatus cexpr system("svn status \| awk 'BEGIN { OFS = \":\"  } {print $2,1,$1}'")
