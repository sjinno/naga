#version 310 es

precision highp float;
precision highp int;

struct AlignedWrapper {
    int value;
};
struct Baz {
    mat3x2 m;
};
layout(std430) buffer Bar_block_0Fragment {
    mat4x3 _matrix;
    mat2x2 matrix_array[2];
    int atom;
    uvec2 arr[2];
    AlignedWrapper data[];
} _group_0_binding_0_fs;

layout(std430) buffer type_9_block_1Fragment { ivec2 _group_0_binding_2_fs; };

layout(location = 0) out vec4 _fs2p_location0;

float read_from_private(inout float foo_1) {
    float _e4 = foo_1;
    return _e4;
}

float test_arr_as_arg(float a[5][10]) {
    return a[4][9];
}

void assign_through_ptr_fn(inout uint p) {
    p = 42u;
    return;
}

void main() {
    _group_0_binding_0_fs._matrix[1][2] = 1.0;
    _group_0_binding_0_fs._matrix = mat4x3(vec3(0.0), vec3(1.0), vec3(2.0), vec3(3.0));
    _group_0_binding_0_fs.arr = uvec2[2](uvec2(0u), uvec2(1u));
    _group_0_binding_0_fs.data[1].value = 1;
    _group_0_binding_2_fs = ivec2(0, 0);
    _fs2p_location0 = vec4(0.0);
    return;
}

