epsilon = 0.01;
cut_height = 3 + epsilon * 2;
outer_diameter = 100;
bevel_size = 3;

module blank() {
    translate([0, 0, 157])
    import("m3-sk/RearLid_closed.stl", convexity=4);
}