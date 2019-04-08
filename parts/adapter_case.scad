module adapter_case(ux, uy, lx, ly, h, w){
    polyhedron(
        points=[
            // top outer
            [0, 0, h],
            [0, uy, h],
            [ux, uy, h],
            [ux, 0, h],

            // bottom outer
            [0, 0, 0],
            [0, ly, 0],
            [lx, ly, 0],
            [lx, 0, 0],

            // bottom inner
            [w, w, 0],
            [w, ly-w, 0],
            [lx-w, ly-w, 0],
            [lx-w, w, 0],

            // top inner
            [w, w, h-w],
            [w, uy-w, h-w],
            [ux-w, uy-w, h-w],
            [ux-w, w, h-w],
        ],
        faces=[
            // top
            [0, 1, 2, 3],

            // outer sides
            [4, 5, 1, 0],
            [5, 6, 2, 1],
            [2, 6, 7, 3],
            [3, 7, 4, 0],

            // bottom sides
            [5, 4, 8, 9],
            [4, 7, 11, 8],
            [7, 6, 10, 11],
            [6, 5, 9, 10],

            // inner sides
            [8, 12, 13, 9],
            [8, 11, 15, 12],
            [11, 10, 14, 15],
            [9, 13, 14, 10],

            // bottom
            [12, 15, 14, 13],
        ]
    );

    // translate([0, 0, 0])
    //   text("4", 5);
    // translate([0, ly, 0])
    //   text("5", 5);
    // translate([lx, ly, 0])
    //   text("6", 5);
    // translate([lx, 0, 0])
    //   text("7", 5);

    // translate([w, w, 0])
    //   text("8", 5);
    // translate([w, ly-w, 0])
    //   text("9", 5);
    // translate([lx-w, ly-w, 0])
    //   text("10", 5);
    // translate([lx-w, w, 0])
    //   text("11", 5);

    // translate([w, w, h-w])
    //   text("12", 5);
    // translate([w, uy-w, h-w])
    //   text("13", 5);
    // translate([ux-w, uy-w, h-w])
    //   text("14", 5);
    // translate([ux-w, w, h-w])
    //   text("15", 5);
}

adapter_case(36, 56, 50, 102, 19+22, 2);
