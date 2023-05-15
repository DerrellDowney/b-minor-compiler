// Generate some random numbers, using recursion to repeat the process
randint: function integer (n: integer);

// Recursive function to print "howmany" random numbers
showrand: function integer (howmany: integer) = {
    // Base case - stop when "howmany" reaches 0
    if (howmany < 1) {
        return 0;
    }

    x: integer = randint(20);
    print howmany, ": random number 0-19: ", x, "\n";

    showrand(howmany - 1);
}

main: function integer () = {
    showrand(10);

    return 0;
}
