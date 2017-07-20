#!/bin/bash
echo "Varbase Full local tests";
cd docroot/profiles/varbase;
../../../bin/behat tests/features/varbase --tags '@local' --format pretty --out std  --format html  --out tests/reports/varbase-full-local-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );
