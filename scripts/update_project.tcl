#----------------------------------------------------------------------------------------------------
#   Herramientas de flujo de diseño con vivado (2019.1)
#----------------------------------------------------------------------------------------------------
#--
#-- Componente:  Script de actualizacion de proyecto
#-- Autor:       Pablo Mendoza Ponce (pmendoza@itcr.ac.cr)
#-- Archivo:     update_project.tcl
#-- Descripción: Actualiza el proyecto con nuevos archivos
#--
#----------------------------------------------------------------------------------------------------
#-- Revisión    Fecha        Revisor    Comentarios
#-- 0           27-03-2023   PMP        Original
#----------------------------------------------------------------------------------------------------

# Typical usage: vivado -mode tcl -source update_project.tcl
# Create the project and directory structure
source ./scripts/globals.tcl

after 1

file delete {*}[glob *backup.jou]
file delete {*}[glob *backup.log]

open_project ./$VIVADO_FOLDER/$VIVADO_FOLDER.xpr
#
# Add various sources to the project
# If you need to check for subfolders remove the option -norecurse

# The -quiet option has been used to remove warnings about files existing
# remove this flag if suspecting a problem when adding the files to the project
# Design files
add_files -norecurse -fileset sources_1 $PROJECT_PATH/src/design
# Testbench files
add_files -norecurse -quiet -fileset sim_1 $PROJECT_PATH/src/testbench
# Constraint files
add_files -norecurse -quiet -fileset constrs_1 $PROJECT_PATH/src/constraints/


# Can open the graphical environment if visualization desired 
# start_gui
exit