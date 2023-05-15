// check if/else with relational tests
get_int_from_keyboard: function integer ();

main: function integer () = {
  print "Enter a number: ";
  x:integer = get_int_from_keyboard();
  print "Enter a different number: ";
  y:integer = get_int_from_keyboard();
  z:boolean;
  print "Comparing ", x, " and ", y, "\n";

  z = x > y;
  if (z) {
    print x, " is greater than ", y, "\n";
  } else {
    print x, " is not greater than ", y, "\n";
  }

  if (x < y) {
    print x, " is less than ", y, "\n";
  } else {
    print x, " is not less than ", y, "\n";
  }

  if (x == y) {
    print x, " is equal to ", y, "\n";
  } else {
    print x, " is not equal to ", y, "\n";
  }

  return 0;
}
