require 'ffi'

module MyLib
  extend FFI::Library
  ffi_lib 'target/debug/libinteger.dylib'
  attach_function :n_sum, [:uint64], :uint64
end

n = gets.to_i
puts MyLib.n_sum(n)
