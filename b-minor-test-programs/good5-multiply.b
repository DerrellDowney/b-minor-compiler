// multiplying inputs
get_int_from_keyboard: function integer ();

main: function integer () = {
  print "Multiplication using 2 numbers\n";
  print "First number? ";
  a1:integer = get_int_from_keyboard();
  print "\nSecond number? ";
  a2:integer = get_int_from_keyboard();

  product:integer = a1 * a2;
  print "\nThe product of ", a1, " and ", a2, " is ", product, "\n";

  return 0;
}
