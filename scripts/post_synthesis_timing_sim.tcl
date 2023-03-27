#----------------------------------------------------------------------------------------------------
#   Herramientas de flujo de diseño con vivado (2019.1)
#----------------------------------------------------------------------------------------------------
#--
#-- Componente:  Script de simulacion post-sintesis-logica 
#-- Autor:       Pablo Mendoza Ponce (pmendoza@itcr.ac.cr)
#-- Archivo:     post_synthesis_timing.tcl
#-- Descripción: Ejecuta una simulacion post-sintesis-logica usando modelos de retardo
#--
#----------------------------------------------------------------------------------------------------
#-- Revisión    Fecha        Revisor    Comentarios
#-- 0           27-03-2023   PMP        Original
#----------------------------------------------------------------------------------------------------

# Typical usage: vivado -mode tcl -source post_synthesis_timing.tcl
source ./scripts/globals.tcl

after 1

file delete {*}[glob *backup.jou]
file delete {*}[glob *backup.log]

# if needed, re-define TOP simulation unit
#set SIMULATION_TOP "counter_tb"


open_project ./$VIVADO_FOLDER/$VIVADO_FOLDER.xpr

set_property top $SIMULATION_TOP [get_filesets sim_1]

set_property -name xelab.more_options -value {-debug all} -objects [get_filesets sim_1]
set_property runtime {0} [get_filesets sim_1]

launch_simulation -simset sim_1 -mode post-synthesis -type timing

# Add waves to the diagram
# you can add as many waves as needed, make reference to modules hierarchically
# e.g.: /$SIMULATION_TOP/dut/mod1/mod2/signal_a  --> imports signal_a into the diagram (signal_a is part of instance mod2 which is part of instance mod1 inside instance dut)
# e.g.: /$SIMULATION_TOP/dut/mod1/* --> import all signals from instance mod1

add_wave /$SIMULATION_TOP/*

#wave dividers can be added.
#add_wave_divider <name>

# Open the graphical environment for visualization
# Remove if not needed (e.g. autoverificacion)
after 10000
start_gui

# If the simulation only needs to print messages to terminal
# e.g. in autoverification, then you can run the simulation 
# for a given time or until it finishes (using -all)
# for time units you can use ps, ns, us, ms, s 
#do not use together with GUI option
#run 1 us
#run -all

exit