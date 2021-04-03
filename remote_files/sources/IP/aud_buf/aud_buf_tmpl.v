//Verilog instantiation template

aud_buf _inst (.aud_buffer_Data(), .aud_buffer_Q(), .aud_buffer_AlmostFull(), 
        .aud_buffer_Clock(), .aud_buffer_Empty(), .aud_buffer_Full(), 
        .aud_buffer_RdEn(), .aud_buffer_Reset(), .aud_buffer_WrEn());