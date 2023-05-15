// subtracting inputs
get_int_from_keyboard: function integer ();

main: function integer () = {
  print "Subtraction using 2 numbers\n";
  print "First number? ";
  a1:integer = get_int_from_keyboard();
  print "\nSecond number? ";
  a2:integer = get_int_from_keyboard();

  diff:integer = a1 - a2;
  print "\nThe difference of ", a1, " and ", a2, " is ", diff, "\n";

  return 0;
}
