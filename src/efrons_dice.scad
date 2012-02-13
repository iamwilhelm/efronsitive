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

module ef_red_dice() {
  dice(2, 2, 4, 4, 9, 9);
}

module ef_green_dice() {
  dice(1, 1, 6, 6, 8, 8);
}

translate([0, 0, 0]) ef_red_dice();
translate([75, 0, 0]) ef_green_dice();
// translate([200, 0, 0]) ef_red_dice();

