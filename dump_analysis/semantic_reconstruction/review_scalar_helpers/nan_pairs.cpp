#include <xmmintrin.h>
#include <bit>
#include <cstdint>
#include <cstdio>
__attribute__((noinline)) float add(float a,float b){return _mm_cvtss_f32(_mm_add_ss(_mm_set_ss(a),_mm_set_ss(b)));}
__attribute__((noinline)) float sub(float a,float b){return _mm_cvtss_f32(_mm_sub_ss(_mm_set_ss(a),_mm_set_ss(b)));}
__attribute__((noinline)) float mul(float a,float b){return _mm_cvtss_f32(_mm_mul_ss(_mm_set_ss(a),_mm_set_ss(b)));}
int main(){for(auto a:{0x7fc00011u,0x7f800011u,0x3f800000u})for(auto b:{0x7fc00022u,0x7f800022u,0x3f800000u})std::printf("%08x %08x add=%08x sub=%08x mul=%08x\n",a,b,std::bit_cast<std::uint32_t>(add(std::bit_cast<float>(a),std::bit_cast<float>(b))),std::bit_cast<std::uint32_t>(sub(std::bit_cast<float>(a),std::bit_cast<float>(b))),std::bit_cast<std::uint32_t>(mul(std::bit_cast<float>(a),std::bit_cast<float>(b))));}
