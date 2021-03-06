// This may look like C code, but it is really -*- C++ -*-
/* 
Copyright (C) 1988 Free Software Foundation
    written by Doug Lea (dl@rocky.oswego.edu)

This file is part of GNU CC.

GNU CC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY.  No author or distributor
accepts responsibility to anyone for the consequences of using it
or for whether it serves any particular purpose or works at all,
unless he says so in writing.  Refer to the GNU CC General Public
License for full details.

Everyone is granted permission to copy, modify and redistribute
GNU CC, but only under the conditions described in the
GNU CC General Public License.   A copy of this license is
supposed to have been given to you along with GNU CC so you
can know your rights and responsibilities.  It should be in a
file named COPYING.  Among other things, the copyright notice
and this notice must be preserved on all copies.  
*/

#ifdef __GNUG__
#pragma implementation
#endif
#include <builtin.h>
#include "<T>.PQ.h"



<T> <T>PQ::deq()
{
  <T> x = front();
  del_front();
  return x;
}

Pix <T>PQ::seek(<T&> item)
{
  for (Pix i = first(); i != 0 && !(<T>EQ((*this)(i), item)); next(i));
  return i;
}

int <T>PQ::owns(Pix idx)
{
  if (idx == 0) return 0;
  for (Pix i = first(); i; next(i)) if (i == idx) return 1;
  return 0;
}

void <T>PQ::clear()
{
  while (count != 0) del_front();
}

int <T>PQ::contains (<T&> item)
{
  return seek(item) != 0;
}


void <T>PQ::error(const char* msg)
{
  (*lib_error_handler)("PQ", msg);
}

