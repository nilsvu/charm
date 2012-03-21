XLC_TYPICAL_PRE=/soft/compilers/ibmcmp-feb2012/
XLC_PRE=$XLC_TYPICAL_PRE

XLC_TYPICAL_POST_BG=vacpp/bg/12.1/bin/bg
XLC_TYPICAL_POST=vacpp/bg/12.1/bin
XLC_POST=$XLC_TYPICAL_POST_BG

# if no floor set, use typical floor path
if test -n "$BGQ_XLC_PRE"
then
  XLC_PRE=$BGQ_XLC_PRE
fi

XLC_F=$XLC_PRE/xlf/bg/14.1/bin
CMK_CC="$XLC_PRE/${XLC_POST}xlc_r -qcpluscmt -qhalt=e $BGQ_INC"
CMK_CXX="$XLC_PRE/${XLC_POST}xlC_r -qhalt=e $BGQ_INC"
CMK_LD="$CMK_CC"
CMK_LDXX="$CMK_CXX"
CMK_CF77="$XLC_F/bgxlf "
CMK_CF90="$XLC_F/bgxlf90  -qsuffix=f=f90" 
CMK_CF90_FIXED="$XLC_F/bgxlf90 " 
CMK_C_OPTIMIZE='-O3 -Q'
CMK_CXX_OPTIMIZE='-O3 -Q'
CMK_AR='ar cq'
CMK_NM='nm '
CMK_QT="aix"
#CMK_NATIVE_CC="/opt/ibmcmp/vacpp/bg/9.0/bin/xlc"
#CMK_NATIVE_CXX="/opt/ibmcmp/vacpp/bg/9.0/bin/xlC"
CMK_NATIVE_LD="$CMK_NATIVE_CC"
CMK_NATIVE_LDXX="$CMK_NATIVE_CXX"
CMK_RANLIB="ranlib"
CMK_F90LIBS="-L$XLC_F/lib -lxlf90 -lxlopt -lxl -lxlfmath"
