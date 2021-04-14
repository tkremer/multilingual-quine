# multilingual quine

This is a multilingual quine, together with some bootstrapping code.
It can produce its own source code as well as producing quines in different languages with the "--lang" option, that share the same functionality.

The perl version can also unpack the content to a source directory for convenient editing and pack it back into the code with --unpack and --pack.

There is also a Makefile for bootstrapping from the source directory and some
auto-built rudimentary testing.

No non-core dependencies are required.
