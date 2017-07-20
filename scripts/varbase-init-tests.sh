#!/bin/bash
echo "Varbase init tests";
cd docroot/profiles/varbase;
../../../bin/behat tests/features/varbase/step1-init-tests --format pretty --out std  --format html  --out tests/reports/varbase-init-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );
