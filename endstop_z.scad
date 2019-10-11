use <parts/endstop_holder.scad>;

switch_x = 9.65;
switch_y = 19.8;
switch_z = 6.8;

bracket_height = 12;
holder_overhang = 12;

color("green", 0.5)
translate([-3, 0, holder_overhang])
rotate([0, -90, 0])
  holder(switch_x, switch_y, switch_z);

color("red", 0.5)
for (y = [0, 107])
translate([-4, y, 0])
difference() {
  translate([0, 0, 0])
    cube([36 + 5, 2, bracket_height], false);

  translate([27 + 5, 4, bracket_height / 2 - 3])
  rotate([90, 0, 0])
  translate([3, 3, 0])
    cylinder(6, d=6, $fn = 36);
}

color("purple", 0.5)
hull() {
  translate([-4, 0, 0])
    cube([2, 28, bracket_height], false);

  translate([-4, 0, holder_overhang + switch_x])
    cube([2, switch_y + 2, 2], false);
}

color("orange", 0.5)
translate([-4, 107 - 24, 0])
  cube([2, 24, bracket_height], false);

for (y = [26, 107 - 26])
color("pink", 0.5)
translate([-4, y, 0])
  cube([4, 2, bracket_height], false);

color("blue", 0.5)
translate([0, 26, 0])
  cube([2, 105 - 2 * 24, bracket_height], false);
