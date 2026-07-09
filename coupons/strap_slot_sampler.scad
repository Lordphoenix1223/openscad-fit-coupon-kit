$fn = 48;

plate_length = 110;
plate_width = 32;
plate_thickness = 4;
slot_lengths = [18, 18, 18, 18];
slot_widths = [4, 5, 6, 7];
slot_radius = 1.5;
margin_x = 12;
slot_spacing = 24;

module rounded_slot(length, width, height) {
    hull() {
        translate([slot_radius, width / 2, 0])
            cylinder(h = height, r = width / 2);
        translate([length - slot_radius, width / 2, 0])
            cylinder(h = height, r = width / 2);
    }
}

difference() {
    cube([plate_length, plate_width, plate_thickness]);

    for (i = [0 : len(slot_widths) - 1]) {
        x = margin_x + i * slot_spacing;
        translate([x, (plate_width - slot_widths[i]) / 2, -0.1])
            rounded_slot(slot_lengths[i], slot_widths[i], plate_thickness + 0.2);
    }
}
