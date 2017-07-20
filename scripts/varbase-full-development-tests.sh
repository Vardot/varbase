#!/bin/bash
echo "Varbase Full Development tests";
cd docroot/profiles/varbase;
../../../bin/behat tests/features/varbase --tags '@development' --format pretty --out std  --format html  --out tests/reports/varbase-full-development-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );
