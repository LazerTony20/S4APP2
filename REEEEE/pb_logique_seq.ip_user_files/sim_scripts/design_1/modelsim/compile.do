vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/util_vector_logic_v2_0_1
vlib modelsim_lib/msim/xlconcat_v2_1_4
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/xlslice_v1_0_2

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1
vmap xlconcat_v2_1_4 modelsim_lib/msim/xlconcat_v2_1_4
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap xlslice_v1_0_2 modelsim_lib/msim/xlslice_v1_0_2

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_registre_24bits_droite_0/sim/design_1_registre_24bits_droite_0.vhd" \
"../../../bd/design_1/ip/design_1_registre_24bits_gauche_0/sim/design_1_registre_24bits_gauche_0.vhd" \
"../../../bd/design_1/ip/design_1_registre_decalage_24bits_0/sim/design_1_registre_decalage_24bits_0.vhd" \
"../../../bd/design_1/ip/design_1_compteur_7bits_0/sim/design_1_compteur_7bits_0.vhd" \
"../../../bd/design_1/ip/design_1_MEF_decodeur_i2s_0/sim/design_1_MEF_decodeur_i2s_0.vhd" \
"../../../bd/design_1/ip/design_1_mef_cod_i2s_vsb_0_0_1/sim/design_1_mef_cod_i2s_vsb_0_0.vhd" \
"../../../bd/design_1/ip/design_1_mux2_0_0_1/sim/design_1_mux2_0_0.vhd" \
"../../../bd/design_1/ip/design_1_reg_dec_24b_fd_0_0_1/sim/design_1_reg_dec_24b_fd_0_0.vhd" \

vlog -work util_vector_logic_v2_0_1  -incr \
"../../../../pb_logique_seq.gen/sources_1/bd/design_1/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0_1/sim/design_1_util_vector_logic_0_0.v" \

vlog -work xlconcat_v2_1_4  -incr \
"../../../../pb_logique_seq.gen/sources_1/bd/design_1/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr \
"../../../bd/design_1/ip/design_1_xlconcat_0_0_1/sim/design_1_xlconcat_0_0.v" \

vlog -work xlconstant_v1_1_7  -incr \
"../../../../pb_logique_seq.gen/sources_1/bd/design_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr \
"../../../bd/design_1/ip/design_1_xlconstant_0_0_1/sim/design_1_xlconstant_0_0.v" \

vlog -work xlslice_v1_0_2  -incr \
"../../../../pb_logique_seq.gen/sources_1/bd/design_1/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr \
"../../../bd/design_1/ip/design_1_xlslice_0_0_1/sim/design_1_xlslice_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_compteur_nbits_0_0_1/sim/design_1_compteur_nbits_0_0.vhd" \
"../../../bd/design_1/ip/design_1_M10_conversion_affichage_0/sim/design_1_M10_conversion_affichage_0.vhd" \
"../../../bd/design_1/ip/design_1_M7_parametre_3_0/sim/design_1_M7_parametre_3_0.vhd" \
"../../../bd/design_1/ip/design_1_Multiplexeur_choix_fonction_0/sim/design_1_Multiplexeur_choix_fonction_0.vhd" \
"../../../bd/design_1/ip/design_1_Multiplexeur_choix_parametre_0/sim/design_1_Multiplexeur_choix_parametre_0.vhd" \
"../../../bd/design_1/ip/design_1_M4_fonction3_0/sim/design_1_M4_fonction3_0.vhd" \
"../../../bd/design_1/ip/design_1_M2_fonction_distortion_dure1_0/sim/design_1_M2_fonction_distortion_dure1_0.vhd" \
"../../../bd/design_1/ip/design_1_M3_fonction_distorsion_dure2_0/sim/design_1_M3_fonction_distorsion_dure2_0.vhd" \

vlog -work xil_defaultlib  -incr \
"../../../bd/design_1/ip/design_1_parametre_0_0/sim/design_1_parametre_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_M5_parametre_1_0/sim/design_1_M5_parametre_1_0.vhd" \
"../../../bd/design_1/ip/design_1_M6_parametre_2_0/sim/design_1_M6_parametre_2_0.vhd" \
"../../../bd/design_1/ip/design_1_M8_commande_0/sim/design_1_M8_commande_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

