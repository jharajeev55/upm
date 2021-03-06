%module javaupm_lsm303agr
%include "../upm.i"
%include "typemaps.i"
%include "../upm_vectortypes.i"

%ignore getMagnetometer(float *, float *, float *);
%ignore getAccelerometer(float *, float *, float *);

%include "lsm303agr_defs.h"
%include "lsm303agr.hpp"
%{
    #include "lsm303agr.hpp"
%}

%pragma(java) jniclasscode=%{
    static {
        try {
            System.loadLibrary("javaupm_lsm303agr");
        } catch (UnsatisfiedLinkError e) {
            System.err.println("Native code library failed to load. \n" + e);
            System.exit(1);
        }
    }
%}
