epsilon = 0.01;
cut_height = 2 + epsilon * 2;

module blank() {
    translate([0, 0, 157])
    import("m3-sk/RearLid_closed.stl", convexity=4);
}