echo "LoadPackage(\"semigroups\"); SemigroupsMakeDoc(); SemigroupsTestStandard(); SEMIGROUPS.TestManualExamples(); quit;" | sh bin/gap.sh | tee testlog.txt | grep --colour=always -A 1 -E "########> Diff|$" ; ( ! grep -E "########> Diff|# WARNING" testlog.txt )
