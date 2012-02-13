use <rounded.scad>
use <dice_faces.scad>

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

module dice(top = 1, bottom = 6, left = 3, right = 4, front = 5, back = 2) {
  face_size = [50, 50];
  cube_size = [50, 50, 50];

  difference() {
    rounded_cube(cube_size, r = 5, center = true);
    on_face("top", face_size) dice_face(top, face_size);
    on_face("bottom", face_size) dice_face(bottom, face_size);
    on_face("left", face_size) dice_face(left, face_size);
    on_face("right", face_size) dice_face(right, face_size);
    on_face("front", face_size) dice_face(front, face_size);
    on_face("back", face_size) dice_face(back, face_size);
  }
}

module ef_red_dice() {
  dice(2, 2, 4, 4, 9, 9);
}

ef_red_dice();
