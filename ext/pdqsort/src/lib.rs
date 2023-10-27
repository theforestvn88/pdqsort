use magnus::{function, prelude::*, Error, Ruby};

fn pdqsort(mut arr: Vec<i32>) -> Vec<i32> {
    arr.sort_unstable();
    arr
}

#[magnus::init]
fn init(ruby: &Ruby) -> Result<(), Error> {
    let module = ruby.define_module("UnstableSort")?;
    module.define_singleton_method("pdqsort", function!(pdqsort, 1))?;
    Ok(())
}
