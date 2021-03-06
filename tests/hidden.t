Setup

  $ . $TESTDIR/setup.sh

Run test

  $ $PYTHON $TESTDIR/../ffind/ffind.py --hidden config
  ./test_dir/.git/config
  ./test_dir/second_level/config
  $ $PYTHON $TESTDIR/../ffind/ffind.py config
  ./test_dir/second_level/config
  $ $PYTHON $TESTDIR/../ffind/ffind.py lib

Using environment variable

  $ FFIND_SEARCH_HIDDEN=1 $PYTHON $TESTDIR/../ffind/ffind.py config
  ./test_dir/.git/config
  ./test_dir/second_level/config
