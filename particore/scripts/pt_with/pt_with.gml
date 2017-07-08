/// @desc Set the current particle context, call this before any other pt_ function
/// @param partType
/* @example
 * var part = part_type_create();
 * pt_with(part);
 * pt_direction(100);
 * pt_speed(2);
 * ...
 */
gml_pragma("forceinline");
global.__part_gen_type = argument0;