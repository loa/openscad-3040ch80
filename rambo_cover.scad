difference() {
  union() {
    cube([163 + 4, 132, 2], false);
    cube([2, 132, 50], false);
    translate([163 + 2, 0, 0])
      cube([2, 132, 50], false);
    cube([163 + 4, 2, 50], false);

    translate([2, 0, 48])
    hull() {
      cube([0.01, 132, 2], false);
      translate([0, 0, 1.99])
        cube([2, 132, 0.01], false);
    }

    translate([163, 0, 48])
    hull() {
      translate([1.99, 0, 0])
      cube([0.01, 132, 2], false);
      translate([0, 0, 1.99])
        cube([2, 132, 0.01], false);
    }

    translate([2, 2, 48])
    hull() {
      translate([0, 0, 0])
      cube([163, 0.01, 2], false);
      translate([0, 0, 1.99])
        cube([163, 2, 0.01], false);
    }
  }

  leaning = 0.1;
  steps = [20:20:150];
  for (x = steps)
  hull() {
    translate([x, 0, -10])
      cylinder(h=12.1, d=10, center=false, $fn=100);
    translate([x + leaning * 120, 120, -10])
      cylinder(h=12.1, d=10, center=false, $fn=100);
  }

  for (x = steps)
  hull() {
    translate([x, 2.1, 0])
    rotate([90, 0, 0])
      cylinder(h=12.1, d=10, center=false, $fn=100);
    translate([x - leaning * 40, 2.1, 40])
    rotate([90, 0, 0])
      cylinder(h=12.1, d=10, center=false, $fn=100);
  }
}
