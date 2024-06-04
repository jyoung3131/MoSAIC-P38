#!/usr/bin/perl
# *************************************************************************
# 
# *** Copyright Notice ***
#
# P38 heterogeneous multi-tiled system with support for message queues 
# (MoSAIC) Copyright (c) 2024, The Regents of the University of California, 
# through Lawrence Berkeley National Laboratory (subject to receipt of
# any required approvals from the U.S. Dept. of Energy). All rights reserved.
# 
# If you have questions about your rights to use or distribute this software,
# please contact Berkeley Lab's Intellectual Property Office at
# IPO@lbl.gov.
#
# NOTICE.  This Software was developed under funding from the U.S. Department
# of Energy and the U.S. Government consequently retains certain rights.  As
# such, the U.S. Government has been granted for itself and others acting on
# its behalf a paid-up, nonexclusive, irrevocable, worldwide license in the
# Software to reproduce, distribute copies to the public, prepare derivative 
# works, and perform publicly and display publicly, and to permit others 
# to do so.
#
# *************************************************************************

use lib "$ENV{PWD}";
use gen_mosaic;
use POSIX;

###########################################
#- Set hash for parameters: Do not modify
###########################################

%param;

############################
#- Test case: Modify
############################

#- 2x2 Tile array
$param{'r'} = 2;
$param{'c'} = 2;

@tile_array = (['pico', 'spad'],
               ['loop', 'pico']);

@pico_program  = ('pico_scratchpad_ddr4.hex', '', '', 'test_tile_nop.hex');

#- Simulation Time
$param{'sim_loop'}     = 400;

#- ddr4 parameters
$param{'ddr4_flag'}    = 1;   #- Yes, Tile memory manager

@checkers;
push(@checkers,'check_pico_spad.sh');
push(@checkers,'check_pico_ddr4_ctrl.sh');

#- Running with Icarus
$param{'run_sim'}        = 1;

#########################
#- Generate 
#########################

$param{'testcase'} = $0;
$param{'checkers'} = \@checkers;
$param{'tile_array'} = \@tile_array;
$param{'pico_program'} = \@pico_program; 

gen_all(\%param);
