use <parts/screw_hole.scad>;

color("blue")
difference() {
  translate([2, -30, 0])
  cube([163, 132, 3], false);

  translate([165 - 115, 82, -2])
    cube([117, 22, 8], false);

  translate([2, -32, 4])
  hull() {
    translate([-1, -1, -1])
      cube([3, 136, 1], false);
    translate([-1, -1, -3])
      cube([1, 136, 3], false);
  }

  translate([164, -32, 4])
  hull() {
    translate([-1, -1, -1])
      cube([3, 136, 1], false);
    translate([1, -1, -3])
      cube([1, 136, 3], false);
  }

  translate([-2, -30, 4])
  hull() {
    translate([0, -1, -1])
      cube([169, 3, 1], false);
    translate([0, -1, -3])
      cube([169, 1, 3], false);
  }

  hole_diameter = 2.8;
  x_spacing = 93.5;
  y_spacing = 92.5;
  translate([165 / 2 - (x_spacing + hole_diameter) / 2, -20, 0])
  union() {
    translate([0, 0, -2])
      screw_hole(d = hole_diameter);
    translate([x_spacing + hole_diameter, 0, -2])
      screw_hole(d = hole_diameter);
    translate([0, y_spacing + hole_diameter, -2])
      screw_hole(d = hole_diameter);
    translate([x_spacing + hole_diameter, y_spacing + hole_diameter, -2])
      screw_hole(d = hole_diameter);
  }
}

color("green")
translate([0, 0, 3])
difference() {
  translate([2, 0, 0])
    cube([163, 2, 28], false);

  for (i = [0:2]) {
    translate([12 + (7/2) + i*60, 4, 17+(7/2)])
    rotate([90, 0, 0])
      cylinder(6, d=7, $fn=360);
  }

  translate([164, -1, 0])
  hull() {
    translate([-1, -1, -1])
      cube([3, 6, 1], false);
    translate([1, -1, -1])
      cube([1, 6, 3], false);
  }

  translate([2, -1, 0])
  hull() {
    translate([-1, -1, -1])
      cube([3, 6, 1], false);
    translate([-1, -1, -1])
      cube([1, 6, 3], false);
  }
}

color("yellow")
translate([10, 94, 3])
union() {
  translate([0, 4, 0])
    cube([38, 4, 15], false);
  translate([0, 0, 15])
    cube([38, 8, 4], false);
}
