use <parts/screw_hole.scad>;

x_spacing = 93.5;
y_spacing = 92.5;

hole_diameter = 3.4;
edge_spacing = 2;

edge_width = 2;
edge_height = 2;

edge_pads_diameter = 16;
edge_pads_height = 6;

difference() {
  union() {
    // edge round pads
    for (x = [0, x_spacing + edge_spacing + edge_pads_diameter / 2])
    for (y = [0, y_spacing + edge_spacing + edge_pads_diameter / 2])
    translate([x, y, 0])
    cylinder(h = edge_pads_height, d = edge_pads_diameter, center = false, $fn = 100);

    // edges
    translate([0, -edge_width, 0])
    cube([x_spacing + 2 * hole_diameter + 2 * edge_spacing, edge_width, edge_height], false);

    translate([0, y_spacing + 2 * hole_diameter + 2 * edge_spacing, 0])
    cube([x_spacing + 2 * hole_diameter + 2 * edge_spacing, edge_width, edge_height], false);

    translate([-edge_width, 0, 0])
    cube([edge_width, y_spacing + 2 * hole_diameter + 2 * edge_spacing, edge_height], false);

    translate([x_spacing + 2 * hole_diameter + 2 * edge_spacing, 0, 0])
    cube([edge_width, y_spacing + 2 * hole_diameter + 2 * edge_spacing, edge_height], false);
  }

  // LOWER cut-out edges
  translate([
      -edge_pads_diameter / 2,
      -edge_width - edge_pads_diameter / 2 + 2,
      -2
  ])
  cube([
    x_spacing + 2 * hole_diameter + 2 * edge_spacing + edge_pads_diameter,
    edge_pads_diameter / 2 - edge_width,
    edge_pads_height + 4
  ], false);

  // TOP cut-out edges
  translate([
    -edge_pads_diameter / 2,
    y_spacing + 2 * hole_diameter + 2 * edge_spacing + edge_width,
    -2
  ])
  cube([
    x_spacing + 2 * hole_diameter + 2 * edge_spacing + edge_pads_diameter,
    edge_pads_diameter / 2 - edge_width,
    edge_pads_height + 4
  ], false);

  // LEFT cut-out edges
  translate([
    -edge_pads_diameter / 2,
    -edge_pads_diameter / 2,
    -2
  ])
  cube([
    edge_pads_diameter / 2 - edge_width,
    y_spacing + 2 * hole_diameter + 2 * edge_spacing + edge_pads_diameter,
    edge_pads_height + 4
  ], false);

  // RIGHT cut-out edges
  translate([
    x_spacing + 2 * hole_diameter + 2 * edge_spacing + edge_width,
    -edge_pads_diameter / 2,
    -2
  ])
  cube([
    edge_pads_diameter / 2 - edge_width,
    y_spacing + 2 * hole_diameter + 2 * edge_spacing + edge_pads_diameter,
    edge_pads_height + 4
  ], false);

  // screw holes
  translate([edge_spacing + hole_diameter / 2, edge_spacing + hole_diameter / 2, 0])
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
