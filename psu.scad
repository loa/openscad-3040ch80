use <parts/adapter_case.scad>;
use <parts/c14_plug.scad>;

union() {
  color("green")
  difference() {
    cube([170+56, 46, 2], false);

    translate([-2, 30, -2])
      cube([6+2, 16+2, 6], false);

    translate([18+2, 4+2, -2])
      cylinder(6, d=4, $fn=360);
    translate([18+2, 23+2, -2])
      cylinder(6, d=4, $fn=360);
    translate([135+2, (30/2)-2, -2])
      cylinder(6, d=4, $fn=360);

    translate([32+(7/2), 35+(7/2), -2])
      cylinder(6, d=7, $fn=360);
    translate([60+32+(7/2), 35+(7/2), -2])
      cylinder(6, d=7, $fn=360);
    translate([2*60+32+(7/2), 35+(7/2), -2])
      cylinder(6, d=7, $fn=360);
    translate([3*60+32+(7/2), 35+(7/2), -2])
      cylinder(6, d=7, $fn=360);
  }

  color("yellow")
  difference() {
    translate([168, -2, -98])
      cube([2, 32, 100-34], false);

    translate([170, 15, -88])
    rotate(a=[0, 90, 0])
      cylinder(h=20, r=5, center=true);

    translate([168, 15, -88])
    rotate(a=[0, 90, 0])
      cylinder(h=1, r1=6, r2=5, center=true);

    translate([170, 15, -88])
    rotate(a=[0, 90, 0])
      cylinder(h=1, r1=5, r2=6, center=true);
  }

  color("blue")
  union() {
    // horizontal wall
    translate([170-22, -4, -98])
      cube([2, 8, 95], false);
    // outer wall
    translate([170-38, -4, -100])
      cube([38, 2, 102], false);
    // top small gap fill
    translate([170-38, -2, 0])
      cube([38, 2, 2], false);
  }

  color("red")
  difference() {
    translate([170-38, -2, -100])
      cube([38, 32, 2], false);

    translate([170-38-8, 4, -101])
      cube([38, 32, 4], false);
  }

  color("white")
  difference() {
    translate([170, -4, -34])
      cube([56, 34, 36], false);

    translate([170-2, -2, -32])
      cube([56, 36, 32], false);

    translate([170+((56-47)/2), -5, 2-(36-28)/2])
    rotate(a=[0, 90, 0])
      c14_plug();
  }

}
