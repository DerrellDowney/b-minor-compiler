#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>

/*
This is an extended version of the standard library
of functions for bminor, implemented in C.

The print statement in bminor expects there to exist a function
for each type that can be printed.  So, the following bminor code:

x: int = 10;
b: boolean = true;
x: string = "hello";

print x, b, s;

Is effectively translated to the following C code:

print_integer(x);
print_boolean(b);
print_string(s);

And the following bminor code:

x = a ^ b;

Is effectively this C code:

x = integer_power(a,b);
*/

void print_integer( long x )
{
	printf("%ld",x);
}

void print_string( const char *s )
{
	printf("%s",s);
}

void print_boolean( int b )
{
	printf("%s",b?"true":"false");
}

void print_character( char c )
{
	printf("%c",c);
}

long integer_power( long x, long y )
{
	long result = 1;
	while(y>0) {
		result = result * x;
		y = y -1;
	}
	return result;
}

/* DSR extensions to the library to support basic
    input from the keyboard

    There is a function for obtaining keyboard
    input for each scalar type */

char *get_string_from_keyboard(int max_chars);

long get_int_from_keyboard() {
  char *sval = get_string_from_keyboard(100);
  long val = atoi(sval);
  free(sval);
  return val;
}

long get_boolean_from_keyboard() {
  char *sval = get_string_from_keyboard(100);
  long val = atoi(sval);
  free(sval);
  return val != 0;
}

char get_character_from_keyboard() {
  char *sval = get_string_from_keyboard(100);
  char val = *sval;
  free(sval);
  return val;
}

/*
  The caller must pass the maximum number
  of characters allowed.

  The caller should free the returned string
  since it is dynamically allocated.
*/
char *get_string_from_keyboard(int max_chars) {
  if (max_chars <= 0) {
    return "";
  }

  char *val = malloc(sizeof(char) * max_chars);
  if (!val) {
    printf("Failed to allocated memory to read input\n");
    return "";
  }

  fgets(val, max_chars, stdin);

  return val;
}

/*
  Function to obtain a random integer in the range 0 to n-1
*/
long randint(long n) {
    static int initialized = 0;
    if (!initialized) {
        srand(time(NULL));
        initialized = 1;
    }

    if (n < 2) {
        printf("\n\nERROR: randint requires a parameter greater than 1. Using default of 100\n\n");
        n = 100;
    }

    return rand() % n;
}
