# Particore

Simplified particle type generation for GameMaker: Studio and GameMaker: Studio 2

## Usage

To use Particore, download [the latest release](https://github.com/gm-core/particore/releases), and add the scripts to your project. The easiest way to do this is to drag the scripts into the editor.

## What Particore Does

Particore is largely a convenience wrapper around the `part_type` functions. The `part_type` functions require you to always provide the particle ID you want to customize, and require a lot of arguments, which can often be useless. Particore wraps these functions to provide a quick control flow as well as reasonable defaults for most of these values, so that you only specify what you need to.

Example:

```gml
// Create a new particle and mark it as the active particle type
partType = pt_new();

// Set some properties on this particle type!
pt_color(c_red);
pt_speed(2, 5);
pt_sprite(spr_particle);
pt_direction(PT.Any);
pt_orientation(PT.Relative);
pt_life(60, 120);
```

### Defaulting

Since Particore allows you to omit most arguments, it uses a defaulting strategy that is as follows:

1. For `min` and `max` values, omitting the max sets it to the min value.
2. For boolean values, the default is false.
3. For numeric values (besides min/max), the default is 0. (Few exceptions)
4. For particle functions with a `2` and `3` version (`color` and `alpha`), argument count determines which function is used.

## API

### `pt_new()`

Creates a new particle type and sets it as the current working particle.

### `pt_with(partType)`

Sets the given part type as the current working particle.

```gml
var part = part_type_create();
pt_with(part);
pt_color(c_red);
```

### `pt_shape(shape)`

Shorthand for `part_type_shape`. Sets the shape of the current working particle to one of the built-in particle shapes.

```gml
var part = pt_new();
pt_shape(pt_shape_cloud);
```

### `pt_blend(additive)`

Shorthand for `part_type_blend`. It takes a boolean, `true` for additive blending, `false` for normal.

```gml
var part = pt_new();
pt_blend(true);
```

### `pt_sprite(sprite, optionalAnimate, optionalStretch, optionalRandom)`

Shorthand for `part_type_sprite`. Only the first argument is required.

```gml
var part = pt_new();
pt_sprite(spr_particle);
```

### `pt_size(minSize, optionalMaxSize, optionalIncr, optionalWiggle)`

Shorthand for `pt_type_size`. Only the first argument is required.

```gml
var part = pt_new();
pt_size(.75, 1.25);
```

### `pt_speed(minSpeed, optionalMaxSpeed, optionalIncr, optionalWiggle)`

Shorthand for `part_type_speed`. Only the first argument is required.

```gml
var part = pt_new();
pt_speed(2, 4);
```

### `pt_direction(minDir, optionalMaxDir, optionalIncr, optionalWiggle)`

Shorthand for `part_type_direction`. Only the first argument is required.

You can also pass in only `PT.Any` for a default set of `0, 364, 0, 0` if you want to make a particle that just goes any direction.

```gml
var straightPart = pt_new();
pt_direction(90);

var allDirPart = pt_new();
pt_direction(PT.Any);
```

### `pt_orientation(minDir, optionalMaxDir, optionalIncr, optionalWiggle)`

Shorthand for `part_type_orientation`. Only the first argument is required.

You can pass in `PT.Any` here for a default set of `0, 364, 0, 0`.

You can also pass in `PT.Relative` to enable relative orientation to the direction.

```gml
var downPart = pt_new();
pt_orientation(270);

var anyPart = nt_new();
pt_orientation(PT.Any);

var relativePart = pt_new();
pt_orientation(PT.Relative);
```

### `pt_life(minLife, optionalMaxLife)`

Shorthand for `part_type_life`. Only the first argument is required. Omitting a max lifespan sets the max and min to be the same.

```gml
var part = pt_new();
pt_life(60, 120);
```

### `pt_step(stepPart, optionalStepCount)`

Shorthand for `part_type_step`. Only the first argument is required.

`optionalStepCount` defaults to `1`.

```gml
var stepPart = pt_new();

var part = pt_new();
pt_step(stepPart);
```

### `pt_death(deathPart, optionalDeathCount)`

Shorthand for `part_type_death`. Only the first argument is required.

`optionalDeathCount` defaults to `1`.

```gml
var deathPart = pt_new();

var part = pt_new();
pt_death(deathPart);
```

### `pt_color(color, optionalColor2, optionalColor3)`

Shorthand for `part_type_color`, `part_type_color2`, and `part_type_color3` depending on how many arguments have been provided.

```gml
var part = pt_new();
pt_color(c_red, c_yellow);
```

### `pt_alpha(alpha, alpha2, alpha3)`

Shorthand for `part_type_alpha`, `part_type_alpha2`, and `part_type_alpha3` depending on how many arguments have been provided.

```gml
var part = pt_new();
pt_alpha(1, 0);
```

### `pt_free(partType)`

Shorthand for `part_type_destroy`

```gml
var part = pt_new();
pt_free(part);
```

## GM Core

Particore is a part of the [GM Core](https://github.com/gm-core) project.

## License

Copyright (c) 2017 Michael Barrett

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
