#!/bin/bash
echo "Varbase Full Staging tests";
cd docroot/profiles/varbase;
../../../bin/behat tests/features/varbase --tags '@staging' --format pretty --out std  --format html  --out tests/reports/varbase-full-staging-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );
