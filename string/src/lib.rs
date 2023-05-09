use std::os::raw::c_char;
use std::ffi::CStr;

#[no_mangle]
pub extern "C" fn string_count(s: *const c_char) -> u32 {
  let s = unsafe { CStr::from_ptr(s).to_str().unwrap() };
  let mut cnt = 0;
  for _ in s.chars() {
    cnt += 1;
  }
  cnt
}
