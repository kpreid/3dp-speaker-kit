include <common.scad>

difference() {
    blank();
    
    translate([0, 0, -epsilon])
    cylinder(d=52, h=cut_height, $fn=100);
    translate([0, 0, cut_height / 2])
    cylinder(d=57.4, h=cut_height, $fn=100);
}
