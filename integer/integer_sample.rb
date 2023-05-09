require 'ffi'

module FromRust
  extend FFI::Library
  ffi_lib 'target/debug/libinteger.dylib'
  attach_function :n_sum, [:uint64], :uint64
end

n = gets.to_i
puts FromRust.n_sum(n)
