use <miwin.scad>;

/* This is the plate to print out the miwin set 1 dice */
size = [25, 25];

for (i = [0 : 2]) {
  assign(angle = i * 360 / 3, index = i + 3) {
    rotate([0, 0, angle]) translate([55, 0, 25]) {
      miwin(index, size);
    }
  }
}



