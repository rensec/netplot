
/*============================================================================
Name:					netplot_test01_padgett
Task: 				test of netplot standard procedures
Project:			netplot 
Author:			 	Rense Corten, 15 aug 2013 
=============================================================================*/

// Log
capture log close
log using  netplot_test01_padgett, replace text

// Setup
version 12
clear all
macro drop _all
set linesize 120
set seed  889977452
cd
//----------------------------------------------------------------------------/

// #1
use Padgett_marital02_undir.dta

netplot from to
graph rename nooptions

netplot from to, type(mds)
graph rename mds

netplot from to, type(circle)
graph rename circle

netplot from to, type(circle) label
graph rename circlelabel

netplot from to, type(circle) arrow
graph rename circlearrow

netplot from to, iterations(4)
graph rename iterations

graph combine nooptions mds circle circlelabel circlearrow iterations

graph export netplot_test01_padgett.pdf
 



//----------------------------------------------------------------------------/
log close
exit

