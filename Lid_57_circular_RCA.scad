include <common.scad>

difference() {
    blank();
    
    // speaker hole
    translate([0, 0, -epsilon])
    cylinder(d=52, h=cut_height, $fn=100);
    translate([0, 0, 1])
    cylinder(d=57.4, h=cut_height, $fn=100);
    
    // RCA jack hole
    translate([33, 0, -epsilon])
    cylinder(d=6, h=cut_height, $fn=20);
}
