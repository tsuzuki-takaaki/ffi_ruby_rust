## char in Rust
https://doc.rust-lang.org/std/primitive.char.html

> The char type represents a single character. More specifically, since ‘character’ isn’t a well-defined concept in Unicode, char is a ‘Unicode scalar value’.

> char is always four bytes in size

↑ different from C(char = 1byte)

So, you can use 💩 as char in Rust.(can not use in C)

## String in Rust
https://doc.rust-lang.org/std/string/struct.String.html

String is wrapper of Vec<u8>.

source ~> https://doc.rust-lang.org/src/alloc/string.rs.html#365

You can not use index.
↓
https://stackoverflow.com/questions/24542115/how-to-index-a-string-in-rust

## CStr and CString
#### CStr
https://doc.rust-lang.org/std/ffi/struct.CStr.html

> This type represents a borrowed reference to a nul-terminated array of bytes. It can be constructed safely from a &[u8] slice, or unsafely from a raw *const c_char. It can then be converted to a Rust &str by performing UTF-8 validation, or into an owned CString.

In this repository, you use ```*const c_char``` type as argument. From ```*const c_char```, create Rust string.

> Use std::ffi::CStr to wrap the pointer. CStr will compute the length of the string based on the terminating NUL. This **requires an unsafe block** as we will be dereferencing a raw pointer, which the Rust compiler cannot verify meets all the safety guarantees so the programmer must do it instead.

#### CString
https://doc.rust-lang.org/std/ffi/struct.CString.html#method.as_ptr

> A type representing an owned, C-compatible, nul-terminated string with no nul bytes in the middle.
> This type serves the purpose of being able to safely generate a C-compatible string from a Rust byte slice or vector. An instance of this type is a static guarantee that the underlying bytes contain no interior 0 bytes (“nul characters”) and that the final byte is 0 (“nul terminator”).

CString is for creating C-compatibel string **from** Rust.
