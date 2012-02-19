use <../dice.scad>

/* Efron's dice are set of four nontransitive dice such that the probabilities of A 
 * winning against B, B against C, C against D, and D against A are all the same.
 * It has 2:1 odds for winning pairs */

module efron_dice(colour, set = 1, size = [25, 25]) {
  if (set == 1) {
    if (colour == "blue") {
      dice(4, 4, 4, 0, 0, 4, size);
    } else if (colour == "magenta") {
      dice(3, 3, 3, 3, 3, 3, size);
    } else if (colour == "olive") {
      dice(2, 2, 6, 2, 2, 6, size);
    } else if (colour == "red") {
      dice(1, 1, 5, 5, 1, 5, size);
    }
  } else if (set == 2) {
  }
}

translate([0, 0, 0]) efron_dice("blue", 1);
translate([100, 0, 0]) efron_dice("magenta", 1);
translate([200, 0, 0]) efron_dice("olive", 1);
translate([300, 0, 0]) efron_dice("red", 1);

