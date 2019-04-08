use <parts/adapter_case.scad>;
use <parts/c14_plug.scad>;

union() {
  color("green")
  difference() {
    cube([170, 46, 2], false);

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
    translate([92+(7/2), 35+(7/2), -2])
      cylinder(6, d=7, $fn=360);
    translate([152+(7/2), 35+(7/2), -2])
      cylinder(6, d=7, $fn=360);
  }

  color("yellow")
  difference() {
    translate([168, 0, -98])
      cube([2, 30, 100], false);

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
    translate([170-24, -2, -98])
      cube([2, 10, 95], false);
    translate([170-48, -2, -98])
      cube([26, 2, 97], false);
  }

  color("red")
  translate([170-50, 0, -100])
    cube([50, 30, 2], false);

  color("orange")
  difference() {
    translate([170, 0, -100])
    rotate(a=[90, 0, 0])
    mirror([1, 0, 0])
      adapter_case(36, 56, 50, 102, 19+22, 2);

    translate([138, -41, -(48+47)])
      c14_plug();
  }
}
