#if SWIG_VERSION >= 0x030009
    %include <swiginterface.i>
    %interface_impl(upm::ICO2Sensor);
#endif

%include "javaupm_interfaces.i"
%include "javaupm_iModuleStatus.i"

%include "iCO2Sensor.hpp"
