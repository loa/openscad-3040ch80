use <parts/endstop_holder.scad>;

switch_x = 9.65;
switch_y = 19.8;
switch_z = 6.8;

bracket_height = 12;
holder_overhang = 20 - switch_x - 2;

hole_diameter = 6;
hole_padding = hole_diameter + (bracket_height - hole_diameter) / 2;

hole_y_spacing = 27;
hole_z_spacing = 49;

color("green", 0.5)
translate([-3, hole_y_spacing - switch_y + hole_padding, holder_overhang])
rotate([0, -90, 0])
  holder(switch_x, switch_y, switch_z);

color("blue", 0.5)
translate([-4, hole_y_spacing + hole_padding, 0])
difference() {
  hull() {
    cube([2, 2, holder_overhang + switch_x + 2], false);
    cube([hole_z_spacing + hole_padding + 2, 2, bracket_height], false);
  }

  // lower screw hole
  translate([hole_z_spacing + 2, 4, bracket_height / 2 - hole_diameter / 2])
  rotate([90, 0, 0])
  translate([3, 3, 0])
    cylinder(6, d=hole_diameter, $fn = 36);

  // cable stripe
  translate([hole_z_spacing - 6, -1, -2])
  union() {
    cube([3, 2.2, 10], false);
    translate([0, 1, 6])
      cube([3, 4, 4], false);
  }
}

color("purple", 0.5)
difference() {
  hull() {
    translate([-4, 0, 0])
      cube([2, hole_y_spacing + 2 + hole_padding, bracket_height], false);

    translate([-4, hole_y_spacing - switch_y + hole_padding, holder_overhang + switch_x])
      cube([2, switch_y + 2, 2], false);
  }

  translate([-6, (bracket_height - hole_diameter) / 2, bracket_height / 2 + hole_diameter / 2])
  rotate([0, 90, 0])
  translate([3, 3, 0])
    cylinder(6, d=hole_diameter, $fn = 36);
}

// hole_y_spacing
%translate([-2, hole_padding, 0])
  cube([2, hole_y_spacing, 2], false);

// hole_z_spacing
%translate([-2, hole_y_spacing + hole_padding - 2, 0])
  cube([hole_z_spacing, 2, 2], false);

// holder_overhang
%translate([0, hole_y_spacing + hole_padding - 4, 0])
  cube([2, 2, holder_overhang], false);

