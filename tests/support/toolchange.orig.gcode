PRINT_START MMU_TOOLS_USED=!mmu_inject_tools_used!
T0
G1 F1200
G1 X167.759 Y180.16 E.00802
G1 X167.263 Y180.262 E.02305
G1 X166.979 Y180.193 E.0133
T1
G1 X166.433 Y179.911 E.02797
G1 X165.996 Y179.509 E.02703
G1 X165.321 Y178.61 E.05117
G1 X164.865 Y178.289 E.02538
G1 X164.172 Y177.944 E.03524
G1 X163.551 Y177.578 E.03281

; T7
; The above shouldn't count
G1 X162.963 Y177.124 E.03382
G1 X162.489 Y176.633 E.03107
T12 ; Testing 2-digit numbers
G1 X162.239 Y176.218 E.02205
G1 X162.031 Y175.724 E.0244
MMU_CHANGE_TOOL TOOL=3
MMU_CHANGE_TOOL FOO=bar TOOL=4 BAZ=quz
G1 X162.025 Y174.997 E.03309
G1 X162.042 Y174.657 E.0155
G1 X162.144 Y174.141 E.02394
SHOULDNT_COUNT ARG=T7
G1 X162.313 Y174.145 E.0077
G1 X162.633 Y174.049 E.01521
G1 X162.964 Y174.006 E.01519
; simulating slicer metadata below (should not be replaced)
; start_gcode: PRINT_START MMU_TOOLS_USED=!mmu_inject_tools_used!
