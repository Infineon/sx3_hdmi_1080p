--VHDL instantiation template

component aud_buf is
    port (aud_buffer_Data: in std_logic_vector(15 downto 0);
        aud_buffer_Q: out std_logic_vector(15 downto 0);
        aud_buffer_AlmostFull: out std_logic;
        aud_buffer_Clock: in std_logic;
        aud_buffer_Empty: out std_logic;
        aud_buffer_Full: out std_logic;
        aud_buffer_RdEn: in std_logic;
        aud_buffer_Reset: in std_logic;
        aud_buffer_WrEn: in std_logic
    );
    
end component aud_buf; -- sbp_module=true 
_inst: aud_buf port map (aud_buffer_Data => __,aud_buffer_Q => __,aud_buffer_AlmostFull => __,
            aud_buffer_Clock => __,aud_buffer_Empty => __,aud_buffer_Full => __,
            aud_buffer_RdEn => __,aud_buffer_Reset => __,aud_buffer_WrEn => __);
