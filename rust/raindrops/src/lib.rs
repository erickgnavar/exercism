pub fn raindrops(n: i32) -> String {
    let mut res = String::new();

    if has_factor(n, 3) {
        res += "Pling";
    }
    if has_factor(n, 5) {
        res += "Plang";
    }
    if has_factor(n, 7) {
        res += "Plong";
    }
    if res.is_empty() { n.to_string() } else { res }
}

fn has_factor(n: i32, f: i32) -> bool {
    n % f == 0
}
