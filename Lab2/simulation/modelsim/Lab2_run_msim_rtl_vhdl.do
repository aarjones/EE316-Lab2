transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/jones/Desktop/EE316-Lab2/Lab2/btn_debounce_toggle.vhd}
vcom -93 -work work {C:/Users/jones/Desktop/EE316-Lab2/Lab2/PWM.vhd}
vcom -93 -work work {C:/Users/jones/Desktop/EE316-Lab2/Lab2/HEX_to_ASCII.vhd}
vcom -93 -work work {C:/Users/jones/Desktop/EE316-Lab2/Lab2/system_controller.vhd}
vcom -93 -work work {C:/Users/jones/Desktop/EE316-Lab2/Lab2/i2c_master_2.1.vhd}
vcom -93 -work work {C:/Users/jones/Desktop/EE316-Lab2/Lab2/SRAM_Controller.vhd}
vcom -93 -work work {C:/Users/jones/Desktop/EE316-Lab2/Lab2/ROM1Port.vhd}
vcom -93 -work work {C:/Users/jones/Desktop/EE316-Lab2/Lab2/reset_delay.vhd}
vcom -93 -work work {C:/Users/jones/Desktop/EE316-Lab2/Lab2/LCD_User_Logic.vhd}
vcom -93 -work work {C:/Users/jones/Desktop/EE316-Lab2/Lab2/LCD_Transmitter.vhd}
vcom -93 -work work {C:/Users/jones/Desktop/EE316-Lab2/Lab2/DE2_115.vhd}
vcom -93 -work work {C:/Users/jones/Desktop/EE316-Lab2/Lab2/top_level.vhd}
vcom -93 -work work {C:/Users/jones/Desktop/EE316-Lab2/Lab2/address_counter.vhd}
vcom -93 -work work {C:/Users/jones/Desktop/EE316-Lab2/Lab2/i2c_user_logic.vhd}

