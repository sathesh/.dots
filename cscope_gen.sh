#!/bin/sh
find . -name '*.py' \
-o -iname '*.[CH]' \
-o -iname '*.cpp' \
-o -iname '*.cc' \
-o -iname '*.pl' \
-o -iname '*.sh' \
-o -iname '*.hpp'  \
> cscope.files

#-o -name '*.java' \ 
# -b: just build
# -q: create inverted index
cscope -b -q
ctags -R .
