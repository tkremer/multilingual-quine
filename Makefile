multilingual-quine.pl: src/perl src
	rm -rf tests.sh
	perl $< --pack src > $@
	chmod +x $@

tests.log: tests.sh
	./tests.sh 2>&1 | tee tests.log

test: tests.log

clean:
	rm -rf tests tests.log multilingual-quine.pl tests.sh
