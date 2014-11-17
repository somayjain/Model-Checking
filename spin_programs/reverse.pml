int value = 125; /* Try with a byte variable here ... */

active proctype P() {

int reversed;
/* ... and here! */
reversed = (value % 10) * 100 +
    ((value / 10) % 10) * 10 +
    (value / 100);
    reversed == 1;
printf("value = %d, reversed = %d\n", value, reversed)
}

