use time::{PrimitiveDateTime as DateTime, PrimitiveDateTime};

// Returns a DateTime one billion seconds after start.
pub fn after(start: DateTime) -> DateTime {
    start + time::Duration::seconds(1000_000_000)
}
