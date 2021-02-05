flutter test --pub --coverage

if [ -d "coverage_report" ]; then
  rm -rf coverage_report
fi

genhtml coverage/lcov.info --output=coverage_report