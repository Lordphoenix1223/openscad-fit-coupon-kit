$fn = 48;

base_length = 56;
base_width = 28;
base_thickness = 5;
rail_height = 8;
rail_thickness = 4;
carriage_width = 12;
clearance_per_side = 0.35;
carriage_length = 18;
carriage_height = 8;

channel_width = carriage_width + clearance_per_side * 2;
outer_width = channel_width + rail_thickness * 2;

module base_coupon() {
    difference() {
        union() {
            cube([base_length, base_width, base_thickness]);
            translate([10, (base_width - outer_width) / 2, base_thickness])
                cube([30, rail_thickness, rail_height]);
            translate([10, (base_width + channel_width) / 2, base_thickness])
                cube([30, rail_thickness, rail_height]);
        }
    }
}

module carriage_coupon() {
    cube([carriage_length, carriage_width, carriage_height]);
}

base_coupon();
translate([base_length + 8, (base_width - carriage_width) / 2, 0])
    carriage_coupon();
