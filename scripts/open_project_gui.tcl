#----------------------------------------------------------------------------------------------------
#   Herramientas de flujo de diseño con vivado (2019.1)
#----------------------------------------------------------------------------------------------------
#--
#-- Componente:  Script para abrir proyecto en el GUI
#-- Autor:       Pablo Mendoza Ponce (pmendoza@itcr.ac.cr)
#-- Archivo:     open_project_gui.tcl
#-- Descripción: Abre el proyecto en el GUI de Vivado
#--
#----------------------------------------------------------------------------------------------------
#-- Revisión    Fecha        Revisor    Comentarios
#-- 0           27-03-2023   PMP        Original
#----------------------------------------------------------------------------------------------------


# Typical usage: vivado -mode tcl -source open_project_gui.tcl
# Create the project and directory structure
source ./scripts/globals.tcl

after 1

#file delete {*}[glob *backup.jou]
#file delete {*}[glob *backup.log]

open_project ./$VIVADO_FOLDER/$VIVADO_FOLDER.xpr



# Open GUI for visualization
after 1000;
start_gui -verbose
#exit