#!/bin/bash
echo "Varbase Cleanup tests";
cd docroot/profiles/varbase;
../../../bin/behat tests/features/varbase/step3-cleanup-tests --format pretty --out std  --format html  --out tests/reports/varbase-cleanup-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );
