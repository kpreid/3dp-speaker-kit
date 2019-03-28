include <common.scad>

roundover = 1.5;

difference() {
    // smoothed parts of shape
    render(convexity=6)
    minkowski() {
        // sphere + cutouts
        difference() {
            intersection() {
                $fn = 120;
                sphere(d=outer_diameter - roundover * 2);

                // bottom gets a bevel instead of a roundover for printability
                bigheight = 1000;
                cylinder(d1=outer_diameter - bevel_size, d2 = outer_diameter + bevel_size + bigheight * 2, h=bigheight);
            }
                    
            // cable holder
            ch_d = 9;
            ch_slot = 4.2;
            mirrored([1, 0, 0]) {
                translate([outer_diameter * 0.4, 0, 10])
                rotate([90, 0, 0])
                union() {
                    cylinder(d=ch_d + roundover * 2, h=outer_diameter * 2, center=true, $fn=16);
                    
                    stickout = 100;
                    translate([stickout / 2, 0, 0]) cube([stickout, 3 + roundover * 2, outer_diameter * 2], center=true);
                }
            }
        }
        
        sphere(r=roundover, $fn=12);
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
        translate([0, 0, 100]) rotate([180, 0, 0]) blank();
    }
}

module mirrored(axis) {
    children();
    mirror(axis) children();
}

module bicone(r) {
    mirrored([0, 0, 1])
    cylinder(r1=r, r2=0, h=r, $fn=16);
}