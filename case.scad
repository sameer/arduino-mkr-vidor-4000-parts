heatsink = true;

// top
difference() {
    import("outline.svg");
    import("holes.svg");
    import("J4.svg"); // Pin header
    import("J5.svg"); // Pin header
    import("SW1.svg"); // Power switch
    import("J13.svg"); // micro-HDMI connector
    import("J3.svg"); // I2C connector
    import("J12.svg"); // LiPo connector (JST-PH)
    import("J6.svg"); // micro-USB connector
    import("J8.svg"); // MiPi connector
    import("U11.svg"); // User LED
    if (heatsink) {
        import("U1.svg"); // FPGA
        import("U5.svg"); // SAMD 21
        import("U6.svg"); // NINA WiFi
    }
}

// bottom
translate([0,26])
difference() {
    import("outline.svg");
    import("holes.svg");
    import("J4.svg"); // Pin header
    import("J5.svg"); // Pin header
}
