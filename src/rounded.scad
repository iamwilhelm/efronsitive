
module rounded_cube(size , r = 2, center = false, $fn = 30) {
  module slow_shape(size) {
    hull() {
      for (xp = [0 : 1]) {
        for (yp = [0 : 1]) {
          for (zp = [0 : 1]) {
            translate([r + xp * (size[0] - 2 * r),
                       r + yp * (size[1] - 2 * r),
                       r + zp * (size[2] - 2 * r)])
              sphere(r);
          }
        }
      }
    }
  }

  module fast_shape(size) {
    union() {
      translate([r,r,0]) cube([size[0]-2*r,size[1]-2*r,size[2]],false);
      translate([r,0,r]) cube([size[0]-2*r,size[1],size[2]-2*r],false);
      translate([0,r,r]) cube([size[0],size[1]-2*r,size[2]-2*r],false);

      translate([r,r,r]) rotate(a=[0,90,0]) cylinder(h=size[0]-2*r,r=r,center=false);
      translate([r,size[1]-r,r]) rotate(a=[0,90,0]) cylinder(h=size[0]-2*r,r=r,center=false);
      translate([r,r,size[2]-r]) rotate(a=[0,90,0]) cylinder(h=size[0]-2*r,r=r,center=false);
      translate([r,size[1]-r,size[2]-r]) rotate(a=[0,90,0]) cylinder(h=size[0]-2*r,r=r,center=false);

      translate([r,r,r]) rotate(a=[0,0,0]) cylinder(h=size[2]-2*r,r=r,center=false);
      translate([r,size[1]-r,r]) rotate(a=[0,0,0]) cylinder(h=size[2]-2*r,r=r,center=false);
      translate([size[0]-r,r,r]) rotate(a=[0,0,0]) cylinder(h=size[2]-2*r,r=r,center=false);
      translate([size[0]-r,size[1]-r,r]) rotate(a=[0,0,0]) cylinder(h=size[2]-2*r,r=r,center=false);

      translate([r,r,r]) rotate(a=[-90,0,0]) cylinder(h=size[1]-2*r,r=r,center=false);
      translate([r,r,size[2]-r]) rotate(a=[-90,0,0]) cylinder(h=size[1]-2*r,r=r,center=false);
      translate([size[0]-r,r,r]) rotate(a=[-90,0,0]) cylinder(h=size[1]-2*r,r=r,center=false);
      translate([size[0]-r,r,size[2]-r]) rotate(a=[-90,0,0]) cylinder(h=size[1]-2*r,r=r,center=false);

      translate([r,r,r]) sphere(r);
      translate([r,size[1]-r,r]) sphere(r);
      translate([r,r,size[2]-r]) sphere(r);
      translate([r,size[1]-r,size[2]-r]) sphere(r);

      translate([size[0]-r,r,r]) sphere(r);
      translate([size[0]-r,size[1]-r,r]) sphere(r);
      translate([size[0]-r,r,size[2]-r]) sphere(r);
      translate([size[0]-r,size[1]-r,size[2]-r]) sphere(r);
    }
  }

  if (size > 0 || size <= 0) {
    if (center == true) {
      translate([-size / 2, -size / 2, -size / 2]) fast_shape([size, size, size]);
    } else {
      fast_shape([size, size, size]);
    }
  } else {
    if (center == true) {
      translate([-size[0] / 2, -size[1] / 2, -size[2] / 2]) fast_shape(size);
    } else {
      fast_shape(size);
    }
  }
}
// rounded_cube(10, center = true);
// translate([0, 0, 0]) rounded_cube([20,10,30], center = true);
