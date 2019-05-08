module screw_hole(h = 10, d = 3) {
  cylinder(h=h, d=d, center=false, $fn=100);
}

difference() {
  cube([10, 10, 4], false);
  translate([5, 5, -1])
    screw_hole(d=2.8);
}
