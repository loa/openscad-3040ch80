height = 66;

top_diameter = 4;
top_pos_y = 10;
top_pad_width = 10;

bottom_diameter = 6;
bottom_pos_y = 7;
bottom_pad_width = 10;

bottom_spacer_width = 4;

din_width = 87;
din_height = 23;
din_thickness = 1.2;

color("green", 0.5)
translate([- 17 / 2 - bottom_spacer_width - din_width / 2, -2, height / 2 - din_height / 2])
union() {
  cube([din_width, 2, din_height], false);

  translate([-2, - (2 + din_thickness), 0])
  union() {
    cube([2, 4 + din_thickness, din_height], false);
    cube([4, 2, din_height], false);
  }

  translate([din_width, - (2 + din_thickness), 0])
  union() {
    cube([2, 4 + din_thickness, din_height], false);
    translate([-2, 0, 0])
      cube([4, 2, din_height], false);
  }
}

color("purple", 0.5)
translate([-17 - bottom_spacer_width, -2, height - 2])
difference() {
  hull() {
    cube([top_pad_width, top_pos_y + top_diameter / 2 + 1, 2], false);
    translate([2, 0, 0])
      cube([top_pad_width - 4, top_pos_y + top_diameter / 2 + 3, 2], false);
  }

  translate([top_pad_width / 2, top_pos_y, -2])
    cylinder(6, d = top_diameter, $fn = 36);
}

color("red", 0.5)
translate([-17 - bottom_spacer_width, -2, 0])
hull() {
  translate([0, 0, 10])
    cube([top_pad_width, 2, height - 10], false);
  translate([12, 0, 0])
    cube([5, 2, height - (17 - top_pad_width)], false);
}


color("orange", 0.5)
translate([-bottom_spacer_width - 2, -2, 0])
hull() {
  cube([2, 2, bottom_pad_width + bottom_spacer_width], false);
  translate([bottom_spacer_width + 2, 0, 0])
    cube([2, 2, bottom_pad_width], false);
}

color("blue", 0.5)
difference() {
  translate([0, 0, 0])
  hull() {
    cube([2, bottom_pad_width, bottom_pad_width], false);
    translate([0, 0, 2])
      cube([2, 6 + bottom_diameter, 6], false);
  }

  translate([-2, bottom_pos_y, 2 + bottom_diameter / 2])
  rotate([0, 90, 0])
    cylinder(6, d = bottom_diameter, $fn = 36);
}
