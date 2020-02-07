linear_extrude(0.3)
translate([0,26])
difference() {
    import("outline.svg");
    import("holes.svg");
    import("J4.svg"); // Pin header
    import("J5.svg"); // Pin header
}
