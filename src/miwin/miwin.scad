use <../dice.scad>

/* Miwin's Dice are a set of nontransitive dice invented in 1975 by the physicist 
 * Michael Winkelmann. They consist of three different dice with faces bearing 
 * numbers from 1 to 9; opposite faces sum to 9, 10, or 11. The numbers on each 
 * die give the sum of 30 and have an arithmetic mean of 5. 
 * 
 * There are two sets of Miwin dice. The dice are named after the sum of the lowest
 * two numbers on the dice.
 * 
 * The first set has dice named 3, 4, and 5.
 * The second set has dice named 9, 10, 11.
 */

module miwin(name, size = [25, 25]) {
  if (name == 3) {
    dice(6, 5, 7, 2, 9, 1, size);
  } else if (name == 4) {
    dice(5, 4, 9, 1, 8, 3, size);
  } else if (name == 5) {
    dice(4, 6, 8, 3, 7, 2, size);
  } else if (name == 9) {
    dice(3, 7, 5, 6, 8, 1, size);
  } else if (name == 10) {
    dice(1, 8, 6, 4, 9, 2, size);
  } else if (name == 11) {
    dice(2, 9, 4, 5, 7, 3, size);
  }
}

for (j = [0 : 1]) {
  for (i = [0 : 2]) {
    translate([i * 100, j * 100, 0]) miwin(i + 3 + j * 6);
  }
}
