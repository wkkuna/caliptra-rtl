
// This file was autogenerated by PeakRDL-uvm
package kv_reg_uvm;
    `include "uvm_macros.svh"
    import uvm_pkg::*;
    `include "kv_reg_covergroups.svh"
    // Reg - kv_reg::kvCtrl
    class kv_reg__kvCtrl extends uvm_reg;
        protected uvm_reg_data_t m_current;
        protected uvm_reg_data_t m_data;
        protected bit            m_is_read;

        kv_reg__kvCtrl_bit_cg lock_wr_bit_cg[1];
        kv_reg__kvCtrl_bit_cg lock_use_bit_cg[1];
        kv_reg__kvCtrl_bit_cg clear_bit_cg[1];
        kv_reg__kvCtrl_bit_cg rsvd0_bit_cg[1];
        kv_reg__kvCtrl_bit_cg rsvd1_bit_cg[5];
        kv_reg__kvCtrl_bit_cg dest_valid_bit_cg[8];
        kv_reg__kvCtrl_bit_cg last_dword_bit_cg[4];
        kv_reg__kvCtrl_fld_cg fld_cg;
        rand uvm_reg_field lock_wr;
        rand uvm_reg_field lock_use;
        rand uvm_reg_field clear;
        rand uvm_reg_field rsvd0;
        rand uvm_reg_field rsvd1;
        rand uvm_reg_field dest_valid;
        rand uvm_reg_field last_dword;

        function new(string name = "kv_reg__kvCtrl");
            super.new(name, 32, build_coverage(UVM_CVR_ALL));
        endfunction : new
        extern virtual function void sample_values();
        extern protected virtual function void sample(uvm_reg_data_t  data,
                                                      uvm_reg_data_t  byte_en,
                                                      bit             is_read,
                                                      uvm_reg_map     map);

        virtual function void build();
            this.lock_wr = new("lock_wr");
            this.lock_wr.configure(this, 1, 0, "RW", 0, 'h0, 1, 1, 0);
            this.lock_use = new("lock_use");
            this.lock_use.configure(this, 1, 1, "RW", 0, 'h0, 1, 1, 0);
            this.clear = new("clear");
            this.clear.configure(this, 1, 2, "RW", 0, 'h0, 1, 1, 0);
            this.rsvd0 = new("rsvd0");
            this.rsvd0.configure(this, 1, 3, "RW", 1, 'h0, 1, 1, 0);
            this.rsvd1 = new("rsvd1");
            this.rsvd1.configure(this, 5, 4, "RW", 0, 'h0, 1, 1, 0);
            this.dest_valid = new("dest_valid");
            this.dest_valid.configure(this, 8, 9, "RO", 1, 'h0, 1, 1, 0);
            this.last_dword = new("last_dword");
            this.last_dword.configure(this, 4, 17, "RO", 1, 'h0, 1, 1, 0);
            if (has_coverage(UVM_CVR_REG_BITS)) begin
                foreach(lock_wr_bit_cg[bt]) lock_wr_bit_cg[bt] = new();
                foreach(lock_use_bit_cg[bt]) lock_use_bit_cg[bt] = new();
                foreach(clear_bit_cg[bt]) clear_bit_cg[bt] = new();
                foreach(rsvd0_bit_cg[bt]) rsvd0_bit_cg[bt] = new();
                foreach(rsvd1_bit_cg[bt]) rsvd1_bit_cg[bt] = new();
                foreach(dest_valid_bit_cg[bt]) dest_valid_bit_cg[bt] = new();
                foreach(last_dword_bit_cg[bt]) last_dword_bit_cg[bt] = new();
            end
            if (has_coverage(UVM_CVR_FIELD_VALS))
                fld_cg = new();
        endfunction : build
    endclass : kv_reg__kvCtrl

    // Reg - kv_reg::keyReg
    class kv_reg__keyReg extends uvm_reg;
        protected uvm_reg_data_t m_current;
        protected uvm_reg_data_t m_data;
        protected bit            m_is_read;

        kv_reg__keyReg_bit_cg data_bit_cg[32];
        kv_reg__keyReg_fld_cg fld_cg;
        rand uvm_reg_field data;

        function new(string name = "kv_reg__keyReg");
            super.new(name, 32, build_coverage(UVM_CVR_ALL));
        endfunction : new
        extern virtual function void sample_values();
        extern protected virtual function void sample(uvm_reg_data_t  data,
                                                      uvm_reg_data_t  byte_en,
                                                      bit             is_read,
                                                      uvm_reg_map     map);

        virtual function void build();
            this.data = new("data");
            this.data.configure(this, 32, 0, "WO", 1, 'h0, 1, 1, 0);
            if (has_coverage(UVM_CVR_REG_BITS)) begin
                foreach(data_bit_cg[bt]) data_bit_cg[bt] = new();
            end
            if (has_coverage(UVM_CVR_FIELD_VALS))
                fld_cg = new();
        endfunction : build
    endclass : kv_reg__keyReg

    // Reg - kv_reg::CLEAR_SECRETS
    class kv_reg__CLEAR_SECRETS extends uvm_reg;
        protected uvm_reg_data_t m_current;
        protected uvm_reg_data_t m_data;
        protected bit            m_is_read;

        kv_reg__CLEAR_SECRETS_bit_cg wr_debug_values_bit_cg[1];
        kv_reg__CLEAR_SECRETS_bit_cg sel_debug_value_bit_cg[1];
        kv_reg__CLEAR_SECRETS_fld_cg fld_cg;
        rand uvm_reg_field wr_debug_values;
        rand uvm_reg_field sel_debug_value;

        function new(string name = "kv_reg__CLEAR_SECRETS");
            super.new(name, 32, build_coverage(UVM_CVR_ALL));
        endfunction : new
        extern virtual function void sample_values();
        extern protected virtual function void sample(uvm_reg_data_t  data,
                                                      uvm_reg_data_t  byte_en,
                                                      bit             is_read,
                                                      uvm_reg_map     map);

        virtual function void build();
            this.wr_debug_values = new("wr_debug_values");
            this.wr_debug_values.configure(this, 1, 0, "RW", 0, 'h0, 1, 1, 0);
            this.sel_debug_value = new("sel_debug_value");
            this.sel_debug_value.configure(this, 1, 1, "RW", 0, 'h0, 1, 1, 0);
            if (has_coverage(UVM_CVR_REG_BITS)) begin
                foreach(wr_debug_values_bit_cg[bt]) wr_debug_values_bit_cg[bt] = new();
                foreach(sel_debug_value_bit_cg[bt]) sel_debug_value_bit_cg[bt] = new();
            end
            if (has_coverage(UVM_CVR_FIELD_VALS))
                fld_cg = new();
        endfunction : build
    endclass : kv_reg__CLEAR_SECRETS

    // Addrmap - kv_reg
    class kv_reg extends uvm_reg_block;
        rand kv_reg__kvCtrl KEY_CTRL[32];
        rand kv_reg__keyReg KEY_ENTRY[32][12];
        rand kv_reg__CLEAR_SECRETS CLEAR_SECRETS;

        function new(string name = "kv_reg");
            super.new(name);
        endfunction : new

        virtual function void build();
            this.default_map = create_map("reg_map", 0, 4, UVM_NO_ENDIAN);
            foreach(this.KEY_CTRL[i0]) begin
                this.KEY_CTRL[i0] = new($sformatf("KEY_CTRL[%0d]", i0));
                this.KEY_CTRL[i0].configure(this);
                
                this.KEY_CTRL[i0].build();
                this.default_map.add_reg(this.KEY_CTRL[i0], 'h0 + i0*'h4);
            end
            foreach(this.KEY_ENTRY[i0, i1]) begin
                this.KEY_ENTRY[i0][i1] = new($sformatf("KEY_ENTRY[%0d][%0d]", i0, i1));
                this.KEY_ENTRY[i0][i1].configure(this);
                
                this.KEY_ENTRY[i0][i1].build();
                this.default_map.add_reg(this.KEY_ENTRY[i0][i1], 'h600 + i0*'h30 + i1*'h4);
            end
            this.CLEAR_SECRETS = new("CLEAR_SECRETS");
            this.CLEAR_SECRETS.configure(this);

            this.CLEAR_SECRETS.build();
            this.default_map.add_reg(this.CLEAR_SECRETS, 'hc00);
        endfunction : build
    endclass : kv_reg

    `include "kv_reg_sample.svh"
endpackage: kv_reg_uvm