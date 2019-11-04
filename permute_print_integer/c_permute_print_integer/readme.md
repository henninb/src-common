combination of C(52,5) = 2598960
permutation of P(52,5) = 311875200

Compute C(n,m) = the number of combinations of n items,
taken m at a time.


#define STR_LEN 6
char arr[STR_LEN] = "ABCDEF";
char arr[];

/* length of permutated string */
int length = 4;
int idx_i;

for( idx_i = 0; idx_i < STR_LEN - length; idx_i++ ) {
     // grab 4 characters from array; these will not change

     // take remainder chars from array, put into new array
     // find all permutations for new array
    for each permutation  {
          Insert chars into original array, until counter = x;
          insert static chars into array
          insert remaining permutation characters into array
          print array
     }
}
