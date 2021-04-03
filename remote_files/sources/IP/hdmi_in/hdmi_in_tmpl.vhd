--VHDL instantiation template

component hdmi_in is
    port (ddr_in_datain: in std_logic_vector(15 downto 0);
        ddr_in_q: out std_logic_vector(31 downto 0);
        ddr_in_clkin: in std_logic;
        ddr_in_reset: in std_logic;
        ddr_in_sclk: out std_logic
    );
    
end component hdmi_in; -- sbp_module=true 
_inst: hdmi_in port map (ddr_in_datain => __,ddr_in_q => __,ddr_in_clkin => __,
            ddr_in_reset => __,ddr_in_sclk => __);
