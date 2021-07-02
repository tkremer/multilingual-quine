#!/bin/bash
mkdir -p tests
./multilingual-quine.pl --lang "bash" > tests/bash.0
/bin/bash tests/bash.0  > tests/bash.1
cmp tests/bash.0 tests/bash.1 ||
 { echo "bad match of \"bash\""; }
/bin/bash tests/bash.0 --lang perl > tests/bash.2
cmp ./multilingual-quine.pl tests/bash.2 ||
 { echo "bad match of \"bash --lang perl\""; }

./multilingual-quine.pl --lang "c++" > tests/c++.0
g++ -o tmpcpp.bin -x c++ tests/c++.0 && ./tmpcpp.bin  > tests/c++.1; rm tmpcpp.bin
cmp tests/c++.0 tests/c++.1 ||
 { echo "bad match of \"c++\""; }
g++ -o tmpcpp.bin -x c++ tests/c++.0 && ./tmpcpp.bin --lang perl > tests/c++.2; rm tmpcpp.bin
cmp ./multilingual-quine.pl tests/c++.2 ||
 { echo "bad match of \"c++ --lang perl\""; }

./multilingual-quine.pl --lang "haskell" > tests/haskell.0
runhaskell tests/haskell.0  > tests/haskell.1
cmp tests/haskell.0 tests/haskell.1 ||
 { echo "bad match of \"haskell\""; }
runhaskell tests/haskell.0 --lang perl > tests/haskell.2
cmp ./multilingual-quine.pl tests/haskell.2 ||
 { echo "bad match of \"haskell --lang perl\""; }

./multilingual-quine.pl --lang "java" > tests/java.0
cp tests/java.0 MultilingualQuine.java; javac MultilingualQuine.java && java MultilingualQuine  > tests/java.1; rm MultilingualQuine.java MultilingualQuine.class
cmp tests/java.0 tests/java.1 ||
 { echo "bad match of \"java\""; }
cp tests/java.0 MultilingualQuine.java; javac MultilingualQuine.java && java MultilingualQuine --lang perl > tests/java.2; rm MultilingualQuine.java MultilingualQuine.class
cmp ./multilingual-quine.pl tests/java.2 ||
 { echo "bad match of \"java --lang perl\""; }

./multilingual-quine.pl --lang "lua" > tests/lua.0
lua tests/lua.0  > tests/lua.1
cmp tests/lua.0 tests/lua.1 ||
 { echo "bad match of \"lua\""; }
lua tests/lua.0 --lang perl > tests/lua.2
cmp ./multilingual-quine.pl tests/lua.2 ||
 { echo "bad match of \"lua --lang perl\""; }

./multilingual-quine.pl --lang "perl" > tests/perl.0
perl tests/perl.0  > tests/perl.1
cmp tests/perl.0 tests/perl.1 ||
 { echo "bad match of \"perl\""; }
perl tests/perl.0 --lang perl > tests/perl.2
cmp ./multilingual-quine.pl tests/perl.2 ||
 { echo "bad match of \"perl --lang perl\""; }

./multilingual-quine.pl --lang "python" > tests/python.0
python3 tests/python.0  > tests/python.1
cmp tests/python.0 tests/python.1 ||
 { echo "bad match of \"python\""; }
python3 tests/python.0 --lang perl > tests/python.2
cmp ./multilingual-quine.pl tests/python.2 ||
 { echo "bad match of \"python --lang perl\""; }

./multilingual-quine.pl --lang "scheme" > tests/scheme.0
guile --no-auto-compile tests/scheme.0  > tests/scheme.1
cmp tests/scheme.0 tests/scheme.1 ||
 { echo "bad match of \"scheme\""; }
guile --no-auto-compile tests/scheme.0 --lang perl > tests/scheme.2
cmp ./multilingual-quine.pl tests/scheme.2 ||
 { echo "bad match of \"scheme --lang perl\""; }
