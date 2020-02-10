heatsink = true;
external_antenna_present = false;

J4p = [22.232, 1.066];
J4d = [35.763, 2.802];
J4s = [1.01, 1.05];
J5p = [22.234, 21.352];
J5d = J4d;
J5s = J4s;

J8p = [74.763, 3.843];
J8d = [5., 21.027];
J8s = [1.02, 1.02];


// top
linear_extrude(0.3)
difference() {
    import("outline.svg");
    import("holes.svg");
    translate(J4p + J4d/2)
    scale(J4s)
    import("J4.svg", center=true); // Pin header

    translate(J5p + J5d/2)
    scale(J5s)
    import("J5.svg", center=true); // Pin header

    import("SW1.svg"); // Power switch
    import("J13.svg"); // micro-HDMI connector
    import("J3.svg"); // I2C connector
    import("J12.svg"); // LiPo connector (JST-PH)
    import("J6.svg"); // micro-USB connector

    translate(J8p + J8d/2)
    scale(J8s)
    import("J8.svg", center=true); // MiPi connector

    import("U11.svg"); // User LED
    if (external_antenna_present)
    import("J10.svg"); // External antenna connector (not soldered on by default it seems)
    import("D1.svg"); // Power LED
    if (heatsink) {
        import("U1.svg"); // FPGA
        import("U5.svg"); // SAMD 21
        import("U6.svg"); // NINA WiFi
    }
}
