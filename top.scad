heatsink = true;
external_antenna_present = false;

J3p = [7.386, 20.012];
J3d = [7.254, 4.509];
J3s = [1.0, 1.0];

J4p = [22.232, 1.066];
J4d = [35.763, 2.802];
J4s = [1.01, 1.05];

J5p = [22.234, 21.352];
J5d = J4d;
J5s = J4s;

J8p = [74.763, 3.843];
J8d = [5., 21.027];
J8s = [1.02, 1.02];

J12p = [12.826, 0.799];
J12d = [8.152, 8.052];
J12s = [1.05, 1.0];

J13p = [63.784, 18.166];
J13d = [6.755, 7.753];
J13s = [1.0, 1.0];

U6p = [63.035, 0.050];
U6d = [10.247, 14.240];
U6s = [1.05, 1.05];

// top
linear_extrude(0.3)
difference() {
    import("outline.svg");
    import("holes.svg");

    translate(J3p + J3d/2)
    scale(J3s)
    translate([0,-J3d[1]/2])
    scale([1,1.2])
    translate([0,J3d[1]/2])
    import("J3.svg", center=true); // I2C connector

    translate(J4p + J4d/2)
    scale(J4s)
    import("J4.svg", center=true); // Pin header

    translate(J5p + J5d/2)
    scale(J5s)
    import("J5.svg", center=true); // Pin header

    import("J6.svg"); // micro-USB connector

    translate(J8p + J8d/2)
    scale(J8s)
    import("J8.svg", center=true); // MiPi connector

    if (external_antenna_present)
    import("J10.svg"); // External antenna connector (not soldered on by default it seems)

    translate(J12p + J12d/2)
    scale(J12s)
    translate([0, J12d[1]/2])
    scale([1,1.2])
    translate([0,-J12d[1]/2])
    import("J12.svg", center=true); // LiPo connector (JST-PH)

    translate(J13p + J13d/2)
    scale(J13s)
    translate([0,J13d[1]/2])
    scale([1,1.2])
    translate([0,-J13d[1]/2])
    import("J13.svg", center=true); // micro-HDMI connector

    import("SW1.svg"); // Power switch

    import("D1.svg"); // Power LED
    if (heatsink) {
        import("U1.svg"); // FPGA
        import("U3.svg"); // Flash
        import("U5.svg"); // SAMD 21

        translate(U6p + U6d/2)
        scale(U6s)
        translate([0,U6d[1]/2])
        scale([1,1.2])
        translate([0,-U6d[1]/2])
        import("U6.svg", center=true); // NINA WiFi

        import("U9.svg"); // SDRAM
    }
    import("U11.svg"); // User LED
}
