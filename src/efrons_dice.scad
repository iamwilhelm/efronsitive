use <rounded.scad>
use <dice_faces.scad>

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

module efron_a_dice() {
  dice(4, 4, 4, 0, 0, 4);
}

module efron_b_dice() {
  dice(3, 3, 3, 3, 3, 3);
}

module efron_c_dice() {
  dice(2, 2, 6, 2, 2, 6);
}

translate([0, 0, 0]) efron_a_dice();
translate([75, 0, 0]) efron_b_dice();
translate([150, 0, 0]) efron_c_dice();

