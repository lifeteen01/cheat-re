#include "game_helpers_analysis.hpp"
#include <xmmintrin.h>
#include <cstdio>
using namespace rust_internal_re;
__attribute__((noinline)) static float add(float a,float b){return _mm_cvtss_f32(_mm_add_ss(_mm_set_ss(a),_mm_set_ss(b)));}
__attribute__((noinline)) static float sub(float a,float b){return _mm_cvtss_f32(_mm_sub_ss(_mm_set_ss(a),_mm_set_ss(b)));}
__attribute__((noinline)) static float mul(float a,float b){return _mm_cvtss_f32(_mm_mul_ss(_mm_set_ss(a),_mm_set_ss(b)));}
int main(){
    const Orientation q{1,std::bit_cast<float>(0x7fc00011u),1,std::bit_cast<float>(0x7fc00022u)};
    const Vec3 v{0,1,0};
    const auto result=quaternion_vector_2ef834(q,v);
    // [C] Independent native z register sequence2ef8c5..2ef9aa.
    const auto zz=mul(add(q.z,q.z),q.z),yy=mul(add(q.y,q.y),q.y),xx=mul(add(q.x,q.x),q.x);
    const auto xw=mul(add(q.x,q.x),q.w),yz=mul(add(q.z,q.z),q.y);
    const auto xz=mul(add(q.z,q.z),q.x),yw=mul(add(q.y,q.y),q.w);
    const auto native=add(add(mul(add(xw,yz),v.y),mul(sub(xz,yw),v.x)),mul(sub(1,add(yy,xx)),v.z));
    std::printf("C++ z=%08x; instruction-order SSE oracle z=%08x; zz=%g\n",std::bit_cast<unsigned>(result.z),std::bit_cast<unsigned>(native),zz);
    return 0;
}
