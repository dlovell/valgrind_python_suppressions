Use this command to generate valgrind output with suppressions that would prevent the output after every error

    valgrind --tool=memcheck --show-reachable=yes --error-limit=no --gen-suppressions=all --log-file=generated_suppresssions.log --suppressions=valgrind-python.supp python -E -tt -c 'import venturelite.tests as tests; tests.testBernoulli1(10000)' >out 2>err

Use this command to use the suppressions file

    valgrind --tool=memcheck --suppressions=valgrind-python.supp python -E -tt -c 'import venturelite.tests as tests; tests.testBernoulli1(10000)' >out 2>err


