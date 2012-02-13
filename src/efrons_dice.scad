use <dice.scad>

module efron_a_dice() {
  dice(4, 4, 4, 0, 0, 4);
}

module efron_b_dice() {
  dice(3, 3, 3, 3, 3, 3);
}

module efron_c_dice() {
  dice(2, 2, 6, 2, 2, 6);
}

module efron_d_dice() {
  dice(1, 1, 5, 5, 1, 5);
}

translate([0, 0, 0]) efron_a_dice();
translate([100, 0, 0]) efron_b_dice();
translate([200, 0, 0]) efron_c_dice();
translate([300, 0, 0]) efron_d_dice();

