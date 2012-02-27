use <miwin.scad>;

/* This is the plate to print out the miwin set 2 dice */
size = [30, 30];

for (i = [0 : 2]) {
  assign(angle = i * 360 / 3, index = i + 9) {
    rotate([0, 0, angle]) translate([size[0], 0, size[0] / 2]) {
      miwin(index, size);
    }
  }
}



