use <grime.scad>;

/* This is the plate to print out the efron dice */
size = [30, 30];

for (i = [0 : 4]) {
  assign(angle = i * 360 / 5, index = i * 1) {
    rotate([0, 0, angle]) translate([1.2 * size[0], 0, size[0] / 2]) {
      if (index == 0) {
        grime("blue", 1, size);
      } else if (index == 1) {
        grime("magenta", 1, size);
      } else if (index == 2) {
        grime("olive", 1, size);
      } else if (index == 3) {
        grime("red", 1, size);
      } else if (index == 4) {
        grime("yellow", 1, size);
      }
    }
  }
}


