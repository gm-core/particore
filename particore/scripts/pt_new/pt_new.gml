/// @desc Create a new particle type and set it as the current working particle
gml_pragma("forceinline");
var genPartType = part_type_create();
pt_with(genPartType);
return genPartType;