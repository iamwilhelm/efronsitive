use <rounded.scad>

module dice_face(number, size = [50, 50], r = "undefined") {
  module pips(size, r) {
    padding_x = 2 * r;
    padding_y = 2 * r;
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

    module circle_of_pips(number, r = 20 / 9, rim = [20, 20]) {
      for (i = [0 : number - 1]) {
        translate([rim[0] * cos(i * 360 / number), rim[1] * sin(i * 360 / number), 0])
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
      circle_of_pips(7, r, [offset_x, offset_y]);
    } else if (number == 8) {
      quad_side_pips();
      quad_corner_pips();
    } else if (number == 9) {
      // circle_of_pips(6, r, [1.2 * offset_x, 1.2 * offset_y]);
      // rotate([0, 0, 30]) circle_of_pips(3, r, [0.5 * offset_x, 0.5 * offset_y]);
      center_pip();
      circle_of_pips(8, r, [offset_x, offset_y]); 
    }
  }

  if (r == "undefined") {
    pips(size, size[0] / 10);
    * square(size, center = true);
  } else {
    pips(size, r);
    * square(size, center = true);
  }
}

module on_face(side, size) {
  offset_x = size[0] / 2;
  offset_y = size[1] / 2;

  if (side == "top") {
    translate([0, 0, offset_y])
      for (i = [0 : $children - 1]) child(i);
  } else if (side == "bottom") {
    translate([0, 0, -offset_y])
      for (i = [0 : $children - 1]) child(i);
  } else if (side == "left") {
    translate([-offset_x, 0, 0]) rotate([0, -90, 0])
      for (i = [0 : $children - 1]) child(i);
  } else if (side == "right") {
    translate([offset_x, 0, 0]) rotate([0, 90, 0])
      for (i = [0 : $children - 1]) child(i);
  } else if (side == "front") {
    translate([0, -offset_y, 0]) rotate([-90, 0, 0])
      for (i = [0 : $children - 1]) child(i);
  } else if (side == "back") {
    translate([0, offset_y, 0]) rotate([90, 0, 0])
      for (i = [0 : $children - 1]) child(i);
  }
}

size = [50, 50];
for(i = [0 : 9]) {
  translate([0, 0, i * 30]) {
    dice_face(i + 1, size);
    % square(size, center=true);
  }
}

module dice(top = 1, bottom = 6, left = 3, right = 4, front = 5, back = 2, 
            size = [50, 50]) {
  face_size = [size[0], size[1]];
  cube_size = [size[0], size[0], size[1]];
  corner_size = size[0] / 10;

  difference() {
    rounded_cube(cube_size, r = corner_size, center = true);
    on_face("top", face_size) dice_face(top, face_size);
    on_face("bottom", face_size) dice_face(bottom, face_size);
    on_face("left", face_size) dice_face(left, face_size);
    on_face("right", face_size) dice_face(right, face_size);
    on_face("front", face_size) dice_face(front, face_size);
    on_face("back", face_size) dice_face(back, face_size);
  }
}

// makes a standard dice
dice();
