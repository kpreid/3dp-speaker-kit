include <common.scad>

wire_d = 2.55 /* measured */ + 0.75 /* clearance for free fit and print roughness etc */;

difference() {
    blank();
    
    // speaker hole
    translate([0, 0, -epsilon])
    cylinder(d=69, h=cut_height, $fn=100);
    translate([0, 0, 1])
    cylinder(d=77, h=cut_height, $fn=100);
    
    // wire hole
    translate([50 - bevel_size / 2, 0, bevel_size / 2])
    rotate([0, -60, 0])
    cylinder(d=wire_d, h=50, $fn=20, center=true);
}
