#!/bin/bash
echo "Varbase Full Production tests";
cd docroot/profiles/varbase;
../../../bin/behat tests/features/varbase --tags '@production' --format pretty --out std  --format html  --out tests/reports/varbase-full-production-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );
