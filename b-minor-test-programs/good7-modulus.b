// modulus inputs
get_int_from_keyboard: function integer ();

main: function integer () = {
  print "Modulus using 2 numbers\n";
  print "First number? ";
  a1:integer = get_int_from_keyboard();
  print "\nSecond number? ";
  a2:integer = get_int_from_keyboard();

  modulus:integer = a1 % a2;
  print "\nThe modulus of ", a1, " using ", a2, " is ", modulus, "\n";

  return 0;
}
