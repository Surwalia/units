# this is a test file
# can be reproduced from copy n paste from GAP session
# To run a single test, call 
#
#     Read("units.g");
#     Test("testall.tst");
#
# in GAP (use full paths, if necessary)

# However you can run all .tst files in directory by reading 
#'tst/testall.g' file into GAP


# First, some examples

gap> OrderNormalizedUnitGroup(3,3);
26
gap> OrderNormalizedUnitGroup(5,3) = (5^3)-1;
