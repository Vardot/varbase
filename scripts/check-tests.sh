#!/bin/bash
echo "Varbase check tests";
cd docroot/profiles/varbase;
../../../bin/behat tests/features/varbase --tags '@check' --format pretty --out std  --format html  --out tests/reports/varbase-check-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );
