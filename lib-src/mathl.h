/******************************** -*- C -*- ****************************
 *
 *      Declarations for long double functions
 *
 *
 ***********************************************************************/

/***********************************************************************
 *
 * Copyright 2002 Free Software Foundation, Inc.
 * Written by Paolo Bonzini.
 *
 * This file is part of GNU Smalltalk.
 *
 * GNU Smalltalk is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation; either version 2, or (at your option) any later
 * version.
 *
 * GNU Smalltalk is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * GNU Smalltalk; see the file COPYING.  If not, write to the Free Software
 * Foundation, 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
 *
 ***********************************************************************/

#ifndef GST_MATHL_H
#define GST_MATHL_H

extern long double acosl(long double x);
extern long double asinl (long double x);
extern long double atanl (long double x);
extern long double ceill(long double x);
extern long double cosl(long double x);
extern long double expl (long double x);
extern long double floorl(long double x);
extern long double frexpl(long double x, int *exp);
extern long double ldexpl(long double x, int exp);
extern long double logl(long double x);
extern long double sinl (long double x);
extern long double sqrtl(long double x);
extern long double tanl (long double x);

#endif
