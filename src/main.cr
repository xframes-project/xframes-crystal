puts "Hello, Crystal World!"

@[Link("kernel32")]
lib Kernel32
  fun Beep(freq : UInt32, duration : UInt32) : Int32
end

Kernel32.Beep(750, 300)  # Beep sound
