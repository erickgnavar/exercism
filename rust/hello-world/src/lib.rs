pub fn hello(name: Option<&str>) -> String {
    match name {
        Some(p) => format!("Hello, {}!", p),
        None => "Hello, World!".to_string()
    }
}
