# Autogenerated wrapper script for Xorg_libXtst_jll for i686-linux-gnu
export libXtst

using Xorg_inputproto_jll
using Xorg_libXext_jll
using Xorg_libXfixes_jll
using Xorg_libXi_jll
using Xorg_recordproto_jll
using Xorg_util_macros_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libXtst`
const libXtst_splitpath = ["lib", "libXtst.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libXtst_path = ""

# libXtst-specific global declaration
# This will be filled out by __init__()
libXtst_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libXtst = "libXtst.so.6"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    append!.(Ref(PATH_list), (Xorg_inputproto_jll.PATH_list, Xorg_libXext_jll.PATH_list, Xorg_libXfixes_jll.PATH_list, Xorg_libXi_jll.PATH_list, Xorg_recordproto_jll.PATH_list, Xorg_util_macros_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (Xorg_inputproto_jll.LIBPATH_list, Xorg_libXext_jll.LIBPATH_list, Xorg_libXfixes_jll.LIBPATH_list, Xorg_libXi_jll.LIBPATH_list, Xorg_recordproto_jll.LIBPATH_list, Xorg_util_macros_jll.LIBPATH_list,))

    global libXtst_path = abspath(joinpath(artifact"Xorg_libXtst", libXtst_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libXtst_handle = dlopen(libXtst_path)
    push!(LIBPATH_list, dirname(libXtst_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

