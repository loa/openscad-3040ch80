module c14_plug() {
  union() {
    translate([0, 0, 0])
      cube([28, 11, 47], false);

    color("black")
    translate([-1, 2, 7 + 6 + 20])
      cube([2, 10, 10], false);

    color("black")
    translate([27, 2, 7 + 6 + 20])
      cube([2, 10, 10], false);

    color("black")
    translate([-1, 2, 7])
      cube([2, 10, 8], false);

    color("black")
    translate([27, 2, 7])
      cube([2, 10, 8], false);
  }
}

rotate([90, 0, 0])
difference() {
  cube([60, 2, 60], false);
  translate([17, -1, 6])
    c14_plug();
}
