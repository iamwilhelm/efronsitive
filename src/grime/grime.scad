use <../dice.scad>

/* Grime's dice are a set of five nontransitive dice. 
 * This set of five dice is similar to other sets of dice we have seen, in that 
 * we have a chain where Blue>Magenta>Olive>Red>Yellow>Blue.
 *
 * However, we also have a second chain, where Red>Blue>Olive>Yellow>Magenta>Red.
 * 
 * Notice the first chain is ordered alphabetically, while the second chain is 
 * ordered by word-length.
 * 
 * In general, the chain in alphabetical order is stronger than the chain in order 
 * of word-length. But if your friend discovers you using one chain, you can switch 
 * to the other.
 * 
 * Overall, the average winning probability for one die is 63%
 * 
 * http://singingbanana.com/dice/article.htm
 */

module grime_dice(colour, set = 1, size = [25, 25]) {
  if (set == 1) {
    if (colour == "blue") {
      dice(7, 2, 7, 2, 7, 2, size);
    } else if (colour == "magenta") {
      dice(1, 6, 1, 6, 6, 6, size);
    } else if (colour == "olive") {
      dice(5, 5, 5, 5, 0, 5, size);
    } else if (colour == "red") {
      dice(4, 4, 4, 4, 9, 4, size);
    } else if (colour == "yellow") {
      dice(8, 3, 8, 3, 3, 3, size);
    }
  } else if (set == 2) {
  }
}

translate([0, 0, 0]) grime_dice("blue");
translate([100, 0, 0]) grime_dice("magenta");
translate([200, 0, 0]) grime_dice("olive");
translate([300, 0, 0]) grime_dice("red");
translate([400, 0, 0]) grime_dice("yellow");

