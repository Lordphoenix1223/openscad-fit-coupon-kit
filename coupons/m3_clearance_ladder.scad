$fn = 48;

plate_length = 92;
plate_width = 22;
plate_thickness = 5;
edge_margin = 10;
hole_ds = [3.0, 3.2, 3.4, 3.6, 3.8];

module label_bar(length = 8, width = 1.2, height = 0.8) {
    cube([length, width, height]);
}

difference() {
    cube([plate_length, plate_width, plate_thickness]);

    spacing = (plate_length - edge_margin * 2) / (len(hole_ds) - 1);
    for (i = [0 : len(hole_ds) - 1]) {
        x = edge_margin + i * spacing;
        translate([x, plate_width / 2, -0.1])
            cylinder(h = plate_thickness + 0.2, d = hole_ds[i]);
    }
}

// Simple visual markers so each hole can be mapped back to the README table.
spacing = (plate_length - edge_margin * 2) / (len(hole_ds) - 1);
for (i = [0 : len(hole_ds) - 1]) {
    x = edge_margin + i * spacing - 3;
    translate([x, 2, plate_thickness])
        label_bar(length = i + 1);
}
