/// @desc shorthand for part_type_size
/// @param minSize
/// @param maxSize
/// @param optionalIncr
/// @param optionalWiggle

var inc = 0;
var wiggle = 0;
if (argument_count > 2) {
    inc = argument[2];
}

if (argument_count > 3) {
    wiggle = argument[3];
}

part_type_size(global.__part_gen_type, argument[0], argument[1], inc, wiggle);