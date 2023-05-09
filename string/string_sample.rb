require 'ffi'

module FromRust
  extend FFI::Library
  ffi_lib 'target/debug/libstring.dylib'
  attach_function :string_count, [:string], :uint32
end

puts FromRust.string_count('hello world')
