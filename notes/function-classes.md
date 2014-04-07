Retro 12 provides three basic function classes.

Name       Usage
---------  ----------------------------------------------------
.function  Used for all standard functions. When compiler is
           on, this lays down a call to the function. If the
           compiler is not active, it will call the function.

.immediate Used for compiler macros and functions that are
           intended for use in modifying syntax. Functions
           with this class are always called when encountered.

.data      Used for data structures. If compiler is active this
           will compile a literal to push the value to the
           stack. If not, it simply leaves the value on the
           stack and returns.
---------  ----------------------------------------------------

Additional classes can be added later. For instance, a class to
inline primitives could be added:

: .primitive
  dup @ 0 = [ compiler @ -1 = [ 2 + @ ] ifTrue ] ifTrue .function ;
