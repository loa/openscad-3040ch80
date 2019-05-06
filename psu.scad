use <parts/adapter_case.scad>;
use <parts/c14_plug.scad>;

union() {
  color("green")
  difference() {
    cube([170+62, 46, 2], false);

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
  translate([168, -2, -98])
    cube([2, 32, 100-34], false);

  color("blue")
  union() {
    // horizontal wall
    translate([170-22, -4, -98])
      cube([2, 8, 95], false);
    // top small gap fill
    translate([0, -2, 0])
      cube([170, 2, 2], false);
    // top outer wall
    translate([0, -4, -4])
      cube([170, 2, 6], false);
    // outer wall
    translate([170-38, -4, -100])
      cube([38, 2, 102], false);
  }


  color("green")
  union() {
    translate([170-38, -2, -100])
      cube([38, 32, 2], false);
    translate([170-38, 30, -100])
      cube([38, 15, 4], false);
    translate([170-38, 45, -100])
      cube([38, 4, 8], false);
  }

  color("white")
  difference() {
    translate([170, -4, -34])
      cube([62, 34, 36], false);

    translate([228, 10, -26])
      cube([6, 22, 20], false);

    translate([170-2, -2, -32])
      cube([62, 36, 32], false);


    translate([170+((62-47)/2), -5, 2-(36-28)/2])
    rotate(a=[0, 90, 0])
      c14_plug();
  }

}
