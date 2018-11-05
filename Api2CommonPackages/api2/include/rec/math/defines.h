#ifndef _REC_MATH_DEFINES_H_
#define _REC_MATH_DEFINES_H_

#ifndef NOMINMAX
#define NOMINMAX
#endif
//#define _USE_MATH_DEFINES
//#include <math.h>

#include <cfloat>

namespace rec
{
	namespace math
	{
		typedef float Real;
		static const Real PI = 3.14159265358979323846f;
		static const Real PI_2 = 1.57079632679489661923f;
		static const Real TWOPI = 2 * PI;
		static const Real SQRT2 = 1.41421356237309504880f;
		static const Real SQRT1_2 = 0.707106781186547524401f;
		static const Real E = 2.718281828459f;
		static const Real RealEpsilon = FLT_EPSILON;
	}
}

#endif
