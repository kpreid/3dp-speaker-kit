include <common.scad>

difference() {
    // top half of sphere
    intersection() {
        $fn = 120;
        sphere(d=outer_diameter);

        bigheight = 1000;
        cylinder(d1=outer_diameter - bevel_size, d2 = outer_diameter + bevel_size + bigheight * 2, h=bigheight);
    }
    
    // set height above base and offset to back
    translate([0, outer_diameter * 0.3, 5])
    // set angle
    rotate([80, 0, 0])
    // offset to edge
    translate([0, outer_diameter / 2, 0])
    {
        dummy();
        %dummy();  // visualization
    }
}

module dummy() {
    hull() {
        blank();
        translate([0, 0, 80]) rotate([180, 0, 0]) blank();
    }
}
