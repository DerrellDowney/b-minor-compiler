// adding inputs
get_int_from_keyboard: function integer ();
main: function integer () = {
  print "Adding 2 numbers\n";
  print "First number? ";
  a1:integer = get_int_from_keyboard();
  print "\nSecond number? ";
  a2:integer = get_int_from_keyboard();

  sum:integer = a1 + a2;
  print "\nThe sum of ", a1, " and ", a2, " is ", sum, "\n";

  return 0;
}
