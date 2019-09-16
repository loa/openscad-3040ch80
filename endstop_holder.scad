module holder() {
  switch_x = 9.65;
  switch_y = 19.8;
  switch_z = 6.8;

  difference() {
    union() {
      // lower plate
      cube([switch_x + 2, switch_y + 2, 4], false);

      // edges
      translate([0, 0, 0])
        cube([switch_x, switch_y + 2, switch_z + 1.8], false);
    }

    // grabbers
    // translate([-1, 1, switch_z])
    // hull() {
    //   // upper
    //   translate([0, 1, 1])
    //     cube([switch_x + 2, switch_y - 2, 1], false);

    //   //lower
    //   translate([0, 0, 0])
    //     cube([switch_x + 2, switch_y, 1], false);
    // }

    translate([-1, 3, switch_z])
      cube([switch_x + 2, switch_y - 4, 3], false);

    // lower back edge
    translate([-1, 1, 4])
      cube([3, switch_y, switch_z - 3], false);

    // lower front edge
    translate([switch_x, -1, 1.6])
      cube([switch_x, switch_y + 4, switch_z], false);

    // jags
    for (y = [5, switch_y - 5])
      translate([-1, y, 1])
        cube([3, 2, 10], false);

    // switch
    translate([1, 1, 1])
      cube([switch_x, switch_y, switch_z], false);
  }

}

holder();


