set mdldir [file dirname [info script]]

puts "Adding DSP Builder System Add_Frame to project\n"
set importdir [file join $mdldir "DSPBuilder_Add_Frame_import" ]
if { [file exist $importdir] == 0 } {
	puts "Warning expected IP Import directory '$importdir' not found.\n"
}

set_global_assignment -name "QIP_FILE" [file join $mdldir "Add_Frame.qip" ]

if { [file exist [file join $mdldir "Add_Frame_add_user.tcl" ]] } {
	source [file join $mdldir "Add_Frame_add_user.tcl" ]
}

source [file join $mdldir "DSPBuilder_Add_Frame_import/FrameControl_add.tcl" ]

# Add an index file for the Librarian
set ipDir "[get_project_directory]/ip/Add_Frame/";
if { ![file exists $ipDir] } {
	file mkdir $ipDir;
}
# Reference the file by relative path if possible
if { [file pathtype $mdldir] == "relative" } {
	set mdlIPX "../../$mdldir/Add_Frame.ipx"
} else {
	set mdlIPX "${mdldir}/Add_Frame.ipx"
}
set ipxFP [open "$ipDir/Add_Frame.ipx" w]
puts $ipxFP "<library><index file='$mdlIPX'/></library>"
close $ipxFP

foreach g [glob -nocomplain "[file join $mdldir "DSPBuilder_Add_Frame_import" ]/*.entityimport"] {
	file copy -force $g $ipDir
}
