#!/bin/bash
echo "Varbase Full tests";
cd docroot/profiles/varbase;
../../../bin/behat tests/features/varbase --format pretty --out std  --format html  --out tests/reports/varbase-full-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );
