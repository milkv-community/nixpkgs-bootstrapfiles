[
  # 0ccf520d349a82dafca0deb3d307a1080e8589a0: RISC-V: Optimze the reverse conditions of rotate shift

  # {
  #   # Unrelated change, needed for dbcbc858c
  #   # RISC-V: add a new parameter in riscv_first_stack_step.
  #   url = "https://github.com/gcc-mirror/gcc/commit/a782346757c54a5a3cfb9f416a7ebe3554a617d7.diff";
  #   hash = "sha256-N67OFei6pkTrlNqw2oMafHYruBvzvVcS8OA3yH1bHWU=";
  # }

  # 60524be1e3929d83e15fceac6e2aa053c8a6fb20: RISC-V: optimize stack manipulation in save-restore  
  # 3f0f4e0fa0b1f9c6217bf5018df4d0836cad84c7: RISC-V: make the stack manipulation codes more readable.
  # 07e2576d6f344acab338deeb051845c90c1cf6a3: [PR target/108248] [RISC-V] Break down some bitmanip insn types
  # 98d66b204932e343bbf940990914b949e8fccbd5: riscv: Fix <bitmanip_insn> fallout.
  # 0530254413f8d356805442f659c6d2921739284d: riscv: relax splitter restrictions for creating pseudos
  # 065be0ffbcd676b635d492f4679e635b6ece4fe4: RISC-V: Add divmod expansion support

  # {
  #   # Unrelated change, needed for dbcbc858c
  #   # RISC-V: decouple stack allocation for rv32e w/o save-restore
  #   url = "https://github.com/gcc-mirror/gcc/commit/a5b2a3bff8152aa34408d8ce40add82f4d22ff87.diff";
  #   hash = "sha256-XB/RHxd4njs2OultMjuxm3+NaKpT06JQzHOLGgq/dOQ=";
  # }

  # 4990cf84c460f064d6281d0813f20b0ef20c7448: RISC-V: Enforce subword atomic LR/SC SEQ_CST
  # d199d2e56da2379004e7e0457150409c0c99d3e6: RISC-V: Enforce atomic compare_exchange SEQ_CST
  # a61a067b15221de981afd4df8433e96a8cf32341: RISC-V: Add AMO release bits
  # 6a2383f47ae70c31f91775142b9fb03f697741c2: RISC-V: Strengthen atomic stores
  # 08c5d1804a027f1e4bee4ed5fda25522d9ac8806: RISC-V: Eliminate AMO op fences
  # 942ab49b5f8955371cf5db23608ba5f5f5244152: RISC-V: Weaken LR/SC pairs
  # bff7c77386447936dd614ebc7086b826c99c6642: RISC-V: Weaken mem_thread_fence
  # b90e030a3cef2158579618ad883783170ef58fa0: RISC-V: Weaken atomic loads
  # 4bd434fbfc7865961a8e10d7e9601b28765ce7be: riscv: fix error: control reaches end of non-void function
  # 7b0073c6a4c21a558936c06a06ab1c6def9769ae: RISC-V: Remove trailing spaces on lines.
  # c104ef4b5eb1f781bbef953e3c282ef1ca94c4f1: RISC-V: improve codegen for large constants with same 32-bit lo and hi parts [2]
  # 259b4b7d349dd3fd560144bd4617f526458b45dc: RISC-V: Remove masking third operand of rotate instructions

  {
    # IMPORTANT
    # Fix riscv_expand_conditional_move.
    url = "https://github.com/gcc-mirror/gcc/commit/55914b016de8c8514c58eb59822677a69e44135c.diff";
    hash = "sha256-tqkGIR9ptruAQoCCuPRTwxb8CPBJW2GdppKlhd+rBg0=";
  }

  # 10680bc36aca7bfaee542a653a78813cf0d4fb1f: RISC-V: Use extension instructions instead of bitwise "and"

  {
    # Performance patch
    # RISC-V: Optimize TARGET_XTHEADCONDMOV
    url = "https://github.com/gcc-mirror/gcc/commit/a1806f0918c0d3612c99b6193b9703d4b4c82c21.diff";
    hash = "sha256-C5yPpk6kTyyDW3cfU0SOQ9pCy8XVhMUMMjYRwdsCZMk=";
  }

  # b1b92e72cdad1dc51058a26f1dadddd406fb8472: RISC-V: Fix warning in riscv.md
  # 37ff12b96d7c1ee5fe135253c7b9db7e2ba61b71: RISC-V: Fix warning in predicated.md
  # f5c82bff5ef2930583eccc008cf73653720987b5: RISC-V: Fix warning in predicated.md

  {
    # Cleanup patch
    # Remove unnecessary md pattern for TARGET_XTHEADCONDMOV
    url = "https://github.com/gcc-mirror/gcc/commit/e1d2493f5912c340b50f49e4c2d928870faa172b.diff";
    hash = "sha256-luhyj2dZ9L55vnEVMpivndzaYilJie93A0VyicLBS2M=";
  }

  # 5681872057f0b725ec8a7c8a1eec8fee205ad673: [RISC-V] fix cfi issue in save-restore.
  # 17c796c7174bfc4a13a2aa74714cd295bf228668: [RISC-V] correct machine mode in save-restore cfi RTL.

  # {
  #   # IMPORTANT?? General RISC-V platform fix. Needed for b70ad8c1.
  #   # RISC-V: Save and restore FCSR in interrupt functions to avoid program errors.
  #   url = "https://github.com/gcc-mirror/gcc/commit/dbcbc858c71f69da76d1f36d6bb5d72f2db11eda.diff";
  #   hash = "sha256-iE449jI5OzdD3NjJD7O9OT4D3P1gXvuHhL/VNMQ3Vt8=";
  # }

  {
    # This is in principle a performance patch, but required to make 0e25761b, d8bdc978 apply cleanly.
    # riscv: xtheadbb: Add sign/zero extension support for th.ext and th.extu
    url = "https://github.com/gcc-mirror/gcc/commit/d05c8b016fb96cdcc445406469867b757776894e.diff";
    hash = "sha256-CJP2GYIzXDm4oUFxW1U539ItLlGM23yKvHlVm9dKYic=";
  }

  # {
  #   # IMPORTANT. This one has been backported to the gcc-13 release branch and can be dropped for gcc>=13.3.
  #   # riscv: xtheadmempair: Fix CFA reg notes
  #   url = "https://github.com/gcc-mirror/gcc/commit/93973e4c5d3bcde1f84cad3b42a8c36e23900d19.diff";
  #   hash = "sha256-ggIQZ5O7bS8wvNb9pQdMABGM5RWPdf58Ve1WVk3ypps=";
  # }

  # e15a82a1fea3a68f47d9a5a8634265eeec1562a8: riscv: xtheadmempair: Fix doc for th_mempair_order_operands()

  {
    # riscv: thead: Adjust constraints of th_addsl INSN
    url = "https://github.com/gcc-mirror/gcc/commit/208e10bf8a90f49aa40152ab7fcebe8cd7c5d31a.diff";
    hash = "sha256-niZLiTdMbLRCQ79LLLas26q4ZD2hB+ncNUy0oJu0hYw=";
  }

  # b621883620b127caf20e88e59fa73e666960013e: riscv: Simplify output of MEM addresses
  # a3480aacc4ab01651725a63e05829a43bc23d549: riscv: Define Xmode macro
  # 96ad6ab29b3d6d8646c97760cc87a17f405e09d2: riscv: Move address classification info types to riscv-protos.h
  # 423604278ed550f07f80c9687a441c58a6cd6e85: riscv: Prepare backend for index registers

  # {
  #   # Cleanup patch
  #   # riscv: thead: Factor out XThead*-specific peepholes
  #   url = "https://github.com/gcc-mirror/gcc/commit/96d32c111e63b7cde38410f4e316512771c8ecff.diff";
  #   hash = "sha256-CjuXu9vJt2G60s6y3e1hwMDi87VIlChGxbXfhOanj2A=";
  # }

  # 601a412ef0fe59ce48fb8635ebdaa58b58512a5a: RISC-V: Remove the redundant expressions in the and<mode>3.
  # c29584fc29df0c5075ad57cce5bea447b1d061a3: riscv: Fix warning in riscv_regno_ok_for_index_p
  # 70742d08832eb7db4d90f52465966111a19ce3a5: RISC-V: Ensure all implied extensions are included [PR110696]
  # ecfa870ff29d979bd2c3d411643b551f2b6915b0: RISC-V: optim const DF +0.0 store to mem [PR/110748]
  # a16dc729fda9fabd6472d50cce45791cb3b6ada8: RISC-V: Folding memory for FP + constant case
  # f088b768d01ae42385697584a2bcac141685dce2: RISC-V: Handle no_insn in TARGET_SCHED_VARIABLE_ISSUE.

  {
    # Performance patch
    # riscv: xtheadbb: Enable constant synthesis with th.srri
    url = "https://github.com/gcc-mirror/gcc/commit/af5cb06ec17780736749ed51cfc6dfad9397156c.diff";
    hash = "sha256-jwhQBpMWcglRyFvZJjeKIR9eumB/sv+8Nw0K2gCqGzQ=";
  }
  {
    # Performance patch
    # riscv: Synthesize all 11-bit-rotate constants with rori
    url = "https://github.com/gcc-mirror/gcc/commit/102dd3e8067f12beee1b8b0bec6848733d107aee.diff";
    hash = "sha256-tanjVHf1Xq/vBWITGGHKwI42lsYp6OEKUZ26WbOAE+o=";
  }
  {
    # riscv: thead: Fix mode attribute for extension patterns
    url = "https://github.com/gcc-mirror/gcc/commit/0e25761b373f075a41d43b9462366a653dbf1121.diff";
    hash = "sha256-u38nFdQWUvchckcxDzOyZPSmBb7Fo2hAl5zs9JOhaaA=";
  }
  {
    # IMPORTANT
    # riscv: xtheadbb: Fix extendqi<SUPERQI> insn
    url = "https://github.com/gcc-mirror/gcc/commit/d8bdc978dc9cd4a6210997edacedb954375af70d.diff";
    hash = "sha256-DN/kV48Vk0Tvz6RzjLCFpEFOaRJLM23ToEQnGF0vilw=";
  }
  {
    # RISC-V: Add Types to Un-Typed Thead Instructions
    url = "https://github.com/gcc-mirror/gcc/commit/316d57da5bb9205b946afc56d78582fee874e4b5.diff";
    hash = "sha256-eqx7DW2CMBYE749mA+B05gCSZ/cA0/7OSQ6BmEEaTY4=";
  }
  {
    # THead: Fix missing CFI directives for th.sdd in prologue.
    url = "https://github.com/gcc-mirror/gcc/commit/578aa2f80056175b902671b30cc77e38945e3ba4.diff";
    hash = "sha256-Wt7sa/jJ66NSyzjTVsSO675M4CSEaPawMFLQ1y+lXWo=";
  }

  # {
  #   # IMPORTANT??
  #   # RISC-V: XTheadMemPair: Fix missing fcsr handling in ISR prologue/epilogue
  #   url = "https://github.com/gcc-mirror/gcc/commit/b70ad8c19aa8be672cdba6afe9cbab2d1254d127.diff";
  #   hash = "sha256-syy+IsSbwinbVIexlehdAzcAC5M/zXtD2raGfXtNuoY=";
  # }

  # {
  #   # RISC-V: THEAD: Fix improper immediate value for MODIFY_DISP instruction on 32-bit systems.
  #   url = "https://github.com/gcc-mirror/gcc/commit/4ac00b7c809ca70775a04708863b9101d94af5c2.diff";
  #   hash = "sha256-RueNREpsztTvypsZic+L+p+r8/9rCZKnCoAXjcg79GQ=";
  # }
]
