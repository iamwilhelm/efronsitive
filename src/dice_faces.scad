
module dice_face(number, size = [50, 50], r = "undefined") {
  module pips(size, r) {
    padding_x = 1.5 * r;
    padding_y = 1.5 * r;
    offset_x = size[0] / 2 - padding_x;
    offset_y = size[1] / 2 - padding_y;

    // corner offsets
    top_right = [offset_x, offset_y, 0];
    bottom_right = [offset_x, -offset_y, 0];
    bottom_left = [-offset_x, -offset_y, 0];
    top_left = [-offset_x, offset_y, 0];
    
    // side offsets
    top = [0, offset_y, 0];
    bottom = [0, -offset_y, 0];
    left = [-offset_x, 0, 0];
    right = [offset_x, 0, 0];

    module center_pip() {
      sphere(r);
    }

    module dual_corner_pips() {
      translate(top_right) sphere(r);
      translate(bottom_left) sphere(r);
    }

    module dual_side_pips() {
      translate(left) sphere(r);
      translate(right) sphere(r);
    }

    module quad_corner_pips() {
      dual_corner_pips();
      mirror([0, 1, 0]) dual_corner_pips();
    } 

    // can't just mirror dual_side_pips, if the size isn't square
    module quad_side_pips() {
      dual_side_pips();
      translate(top) sphere(r);
      translate(bottom) sphere(r);
    }

    module circle_of_pips(number) {
      for (i = [0 : number - 1]) {
        translate([offset_x * cos(i * 360 / number), offset_y * sin(i * 360 / number), 0])
          sphere(r);
      }
    }

    if (number == 1) {
      center_pip();
    } else if (number == 2) {
      dual_corner_pips();
    } else if (number == 3) {
      center_pip();
      dual_corner_pips();
    } else if (number == 4) {
      quad_corner_pips();
    } else if (number == 5) {
      center_pip();
      quad_corner_pips();
    } else if (number == 6) {
      dual_side_pips();      
      quad_corner_pips();
    } else if (number == 7) {
      circle_of_pips(7);
    } else if (number == 8) {
      quad_side_pips();
      quad_corner_pips();
    } else if (number == 9) {
    }
  }

  if (r == "undefined") {
    pips(size, size[0] / 9);
    % square(size, center = true);
  } else {
    pips(size, r);
    % square(size, center = true);
  }
}

for(i = [0 : 9]) {
  translate([0, 0, i * 30]) dice_face(i + 1);
}

