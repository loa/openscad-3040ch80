module c14_plug(){
  union() {
    translate([0, 0, 0])
      cube([28, 8, 47], false);

    color("black")
    translate([-1, 1, 7+6+19])
      cube([2, 10, 8.5], false);

    color("black")
    translate([27, 1, 7+6+19])
      cube([2, 10, 8.5], false);

    color("black")
    translate([-1, 1, 7])
      cube([2, 10, 6], false);

    color("black")
    translate([27, 1, 7])
      cube([2, 10, 6], false);
  }
}

c14_plug();
