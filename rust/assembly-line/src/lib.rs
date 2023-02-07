// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

pub fn production_rate_per_hour(speed: u8) -> f64 {
    let rate = match speed {
        1..=4 => 100.0,
        5..=8 => 90.0,
        _ => 77.0,
    };

    (rate / 100.0) * 221.0 * (speed as f64)
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    (production_rate_per_hour(speed) / 60.0) as u32
}
