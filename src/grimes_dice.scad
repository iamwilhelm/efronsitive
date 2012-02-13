use <dice.scad>

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

module grime_blue_dice() {
  dice(7, 2, 7, 2, 7, 2);
}

module grime_magenta_dice() {
  dice(1, 6, 1, 6, 6, 6);
}

module grime_olive_dice() {
  dice(5, 5, 5, 5, 0, 5);
}

module grime_red_dice() {
  dice(4, 4, 4, 4, 9, 4);
}

module grime_yellow_dice() {
  dice(8, 3, 8, 3, 3, 3);
}

translate([0, 0, 0]) grime_blue_dice();
translate([100, 0, 0]) grime_magenta_dice();
translate([200, 0, 0]) grime_olive_dice();
translate([300, 0, 0]) grime_red_dice();
translate([400, 0, 0]) grime_yellow_dice();

