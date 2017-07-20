#!/bin/bash
echo "Varbase Apply tests";
cd docroot/profiles/varbase;
../../../bin/behat tests/features/varbase/step2-apply-tests --format pretty --out std  --format html  --out tests/reports/varbase-apply-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );
