// dividing inputs
get_int_from_keyboard: function integer ();

main: function integer () = {
  print "Division using 2 numbers\n";
  print "First number? ";
  a1:integer = get_int_from_keyboard();
  print "\nSecond number? ";
  a2:integer = get_int_from_keyboard();

  quotent:integer = a1 / a2;
  print "\nThe quotent of ", a1, " divided by ", a2, " is ", quotent, "\n";

  return 0;
}
