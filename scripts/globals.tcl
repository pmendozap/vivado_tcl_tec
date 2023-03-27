#----------------------------------------------------------------------------------------------------
#   Herramientas de flujo de diseño con vivado (2019.1)
#----------------------------------------------------------------------------------------------------
#--
#-- Componente:  Variables globales para el flujo de trabajo
#-- Autor:       Pablo Mendoza Ponce (pmendoza@itcr.ac.cr)
#-- Archivo:     globals.tcl
#-- Descripción: Carga variables globales a los scripts
#--
#----------------------------------------------------------------------------------------------------
#-- Revisión    Fecha        Revisor    Comentarios
#-- 0           27-03-2023   PMP        Original
#----------------------------------------------------------------------------------------------------

#global variables 

set DESIGN_TOP "counter"
set SIMULATION_TOP "counter_tb"

set PROJECT_PATH "."

set VIVADO_FOLDER "vivado_project"

set REPORTS_FOLDR "rpt"

#FPGA model, choose accordingly
#nexys 4
set FPGA_MODEL "XC7A100TCSG324-1"
#basys 3
#set FPGA_MODEL "XC7A35TCPG236-1"

#Modify according to your PC capacity
set JOBS "12"