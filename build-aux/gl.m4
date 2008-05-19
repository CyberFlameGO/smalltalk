dnl I'd like this to be edited in -*- Autoconf -*- mode...
dnl
AC_DEFUN([GST_HAVE_OPENGL], [

AC_REQUIRE([AC_PATH_XTRA])
AC_CHECK_HEADERS([OpenGL/gl.h GL/gl.h])

AC_CACHE_CHECK([how to link with OpenGL libraries], gst_cv_opengl_libs, [
  if test $ac_cv_header_OpenGL_gl_h = yes || \
     test $ac_cv_header_GL_gl_h = yes; then
    case $host in
      *-*-mingw* | *-*-cygwin*) gst_cv_opengl_libs='' ;;
      *-*-beos* | *-*-qnx*) gst_cv_opengl_libs='-lGL' ;;
      *-*-darwin*) gst_cv_opengl_libs='-Wl,-framework,OpenGL' ;;
      *) gst_cv_opengl_libs='-lGL -lGLU $(X_LIBS) $(X_PRE_LIBS) -lX11' ;;
    esac
  else
    gst_cv_opengl_libs='not found'
  fi
])

if test "$gst_cv_opengl_libs" != "not found"; then
  LIBOPENGL="$gst_cv_opengl_libs"
  AC_DEFINE(HAVE_OPENGL, 1, [Define if your system has OpenGL installed.])

  if test $ac_cv_header_OpenGL_gl_h = yes; then
    gst_cv_opengl_header_dir='OpenGL'
  else
    gst_cv_opengl_header='GL'
  fi
  AC_DEFINE_UNQUOTED(GL_GL_H, [<$gst_cv_opengl_header_dir/gl.h>], [Define to the #include directive for OpenGL.])
  AC_DEFINE_UNQUOTED(GL_GLU_H, [<$gst_cv_opengl_header_dir/glu.h>], [Define to the #include directive for OpenGL glu functions.])
fi
AC_SUBST(LIBOPENGL)
])dnl
