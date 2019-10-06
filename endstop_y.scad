use <endstop_holder.scad>;

switch_x = 9.65;
switch_y = 19.8;
switch_z = 6.8;

bracket_height = 12;
holder_overhang = 20 - switch_x - 2;

hole_z_spacing = 56;
hole_y_spacing = 6;

screw_z_diameter = 4;
screw_x_diameter = 6;

color("yellow", 0.5)
translate([0, -2, - 4 - screw_x_diameter])
union() {
  translate([4, 0, 36 + 1.5 * screw_x_diameter - 2])
  hull() {
    cube([17, 2, 2], false);
    translate([7, 0, 22])
      cube([10, 2, 2], false);
  }
  translate([4, 0, 0])
  hull() {
    cube([5, 2, 26 + switch_y], false);
    translate([12, 0, 10])
      cube([5, 2, 26 + switch_y - 10], false);
  }
  hull() {
    cube([1, 2, 4 + screw_x_diameter], false);
    translate([4, 0, 0])
      cube([1, 2, 4 + screw_x_diameter + 4], false);
  }
}

color("purple", 0.5)
difference() {
  translate([11, -2, hole_z_spacing])
  hull() {
    cube([10, hole_y_spacing + 1.5 * screw_z_diameter, 2], false);
    translate([2, 0, 0])
      cube([6, hole_y_spacing + 1.5 * screw_z_diameter + 2, 2], false);
  }

  color("blue", 0.5)
  translate([16, hole_y_spacing + screw_z_diameter / 2, hole_z_spacing - 2])
    cylinder(6, d = screw_z_diameter, $fn = 36);
}


color("green", 0.5)
translate([4, 0, 10])
union() {
  hull() {
    cube([2, 15 - 2, switch_y + 6], false);
    translate([0, 0, 2])
      cube([2, 15, switch_y + 2], false);
  }

  translate([0, 15 - (switch_x + 2), switch_y + 4])
  rotate([-90, 0, 90])
    holder(switch_x, switch_y, switch_z);
}

color("blue", 0.5)
difference() {
  translate([0, 0, - 4 - screw_x_diameter])
  hull() {
    cube([2, 4 + screw_x_diameter, 4 + screw_x_diameter], false);
    translate([0, 0, 2])
      cube([2, 6 + screw_x_diameter, 6], false);
  }

  translate([-2, 7, - 2 -screw_x_diameter / 2])
  rotate([0, 90, 0])
    cylinder(6, d = screw_x_diameter, $fn = 36);
}
