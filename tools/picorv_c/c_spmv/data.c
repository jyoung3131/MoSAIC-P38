// *************************************************************************
// 
// *** Copyright Notice ***
//
// P38 heterogeneous multi-tiled system with support for message queues 
// (MoSAIC) Copyright (c) 2024, The Regents of the University of California, 
// through Lawrence Berkeley National Laboratory (subject to receipt of
// any required approvals from the U.S. Dept. of Energy). All rights reserved.
// 
// If you have questions about your rights to use or distribute this software,
// please contact Berkeley Lab's Intellectual Property Office at
// IPO@lbl.gov.
//
// NOTICE.  This Software was developed under funding from the U.S. Department
// of Energy and the U.S. Government consequently retains certain rights.  As
// such, the U.S. Government has been granted for itself and others acting on
// its behalf a paid-up, nonexclusive, irrevocable, worldwide license in the
// Software to reproduce, distribute copies to the public, prepare derivative 
// works, and perform publicly and display publicly, and to permit others 
// to do so.
//
// *************************************************************************


#include <stdint.h>
#include <stdbool.h>
#include "define_inputs.h"
#include "Matrix.h"
#include "macgyver.h"

int num_threads = IN_NUM_THREADS;

#include "helper_f.h"
#include "mq_wrap.h"

int main (int argc, char *argv[])
{
   ConstructLaplace2D5pt();

   //for (uint32_t i = 0; i < 14; i++){
      MsgQ_Put(0,0);
   //}

   return 0;
}
