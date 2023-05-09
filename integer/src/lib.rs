#[no_mangle]
pub extern "C" fn n_sum(n: u64) -> u64 {
  let mut ans = 0;
  for i in 0..=n {
    ans += i;
  }
  ans
}
