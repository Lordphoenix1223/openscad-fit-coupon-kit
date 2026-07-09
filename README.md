# OpenSCAD Fit Coupon Kit

Reusable OpenSCAD coupons for testing fit before burning time and money on full prints.

## Why This Exists

Full parts are expensive places to discover basic tolerance mistakes.

This repo keeps the cheap checks isolated:

- screw-hole sizing
- slot width checks
- rail / carriage clearance checks

## Included Coupons

- `m3_clearance_ladder.scad`
  - multiple M3-adjacent hole diameters on one print
- `strap_slot_sampler.scad`
  - quick strap / band slot width comparison
- `rail_clearance_tester.scad`
  - sliding-fit coupon for tuning per-side clearance

## Usage

Open the `.scad` file in OpenSCAD, change the top-level parameters if needed, then export STL.

## Recommended Starting Flow

1. Pick the coupon that matches the failure you are trying to avoid.
2. Print the smallest useful test piece first.
3. Record the winning dimension before touching the full part model.
4. Carry that result back into the real assembly instead of guessing twice.

## Repo Layout

```text
openscad-fit-coupon-kit/
├── README.md
├── coupons/
│   ├── m3_clearance_ladder.scad
│   ├── rail_clearance_tester.scad
│   └── strap_slot_sampler.scad
├── docs/
│   └── design-notes.md
└── examples/
    └── recommended-starting-values.md
```

## Design Bias

This repo is biased toward rough first-run PLA prints and cheap service-print iteration, not perfect home-printer tuning.

## Current Limitations

- These coupons are starting points, not machine-calibrated truth.
- They are tuned for quick iteration, not aesthetic presentation.
- The repo is intentionally lightweight; it does not try to automate OpenSCAD rendering in CI.
