use <efron.scad>;

/* This is the plate to print out the efron dice */
size = [25, 25];

for (i = [0 : 3]) {
  assign(angle = i * 360 / 4, index = i * 1) {
    rotate([0, 0, angle]) translate([65, 0, 25]) {
      if (index == 0) {
        efron("blue", 1, size);
      } else if (index == 1) {
        efron("magenta", 1, size);
      } else if (index == 2) {
        efron("olive", 1, size);
      } else if (index == 3) {
        efron("red", 1, size);
      } 
    }
  }
}

