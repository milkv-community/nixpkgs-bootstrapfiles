# Patches on the gcc master branch for the gcc/config/riscv folder starting
# from the merge base with the releases/gcc-13 branch. Can be generated with:
#   git log --format="  # %H: %s" --reverse \
#     $(git merge-base releases/gcc-13 master)..master gcc/config/riscv

[
  # 0ccf520d349a82dafca0deb3d307a1080e8589a0: RISC-V: Optimze the reverse conditions of rotate shift

  # {
  #   # Unrelated change, needed for dbcbc858c
  #   # RISC-V: add a new parameter in riscv_first_stack_step.
  #   rev = "a782346757c54a5a3cfb9f416a7ebe3554a617d7";
  #   hash = "sha256-N67OFei6pkTrlNqw2oMafHYruBvzvVcS8OA3yH1bHWU=";
  # }

  # 60524be1e3929d83e15fceac6e2aa053c8a6fb20: RISC-V: optimize stack manipulation in save-restore
  # 3f0f4e0fa0b1f9c6217bf5018df4d0836cad84c7: RISC-V: make the stack manipulation codes more readable.
  # 9874ceed091a0ce17b23d8d77b5bf90b8902a3c0: Add TARGET_ZBKB to the condition of bswapsi2, bswapdi2 and rotr<mode>3 patterns
  # 9fdea28d6ace8c8e5ac64a55685d310ba8dfa3cf: RISC-V: Support 128 bit vector chunk
  # a2d12abedc89a9439fd6aadc38730fdadca0684f: RISC-V: Fix wrong check of register occurrences [PR109535]
  # 7b206ae7f17455b69349767ec48b074db260a2a7: RISC-V: Fix RVV register order
  # 07e2576d6f344acab338deeb051845c90c1cf6a3: [PR target/108248] [RISC-V] Break down some bitmanip insn types
  # d51f2456ee51bd59a79b4725ca0e488c25260bbf: RISC-V: Add local user vsetvl instruction elimination [PR109547]
  # 98d66b204932e343bbf940990914b949e8fccbd5: riscv: Fix <bitmanip_insn> fallout.
  # d06e9264b0192c2c77e07d7fb0fe090efcb510c0: RISC-V: Defer vsetvli insertion to later if possible [PR108270]
  # 4eae76d10433b12bdb6944c2b3be818ccc3b5986: RISC-V: Optimize fault only first load
  # c5a1fa59ae3f44059a79086cbc506800d4149b69: RISC-V: Add function comment for cleanup_insns.
  # ff8f95449350372b584cfcd28a7d9d71f52eea50: RISC-V: Eliminate redundant vsetvli for duplicate AVL def
  # 0530254413f8d356805442f659c6d2921739284d: riscv: relax splitter restrictions for creating pseudos
  # 392200f807fe2ee377ecc451ff75894b89335c33: avoid splitting small constants in bcrli_nottwobits patterns
  # 2fb7df82b8edd64ea31417592619c4cee00b05bc: RISC-V: Add auto-vectorization compile option for RVV
  # a010f0e08501b267ecb925ff88450f58e01dd991: RISC-V: Fine tune gather load RA constraint
  # 4f9eac2f262dfe938edf52045ef3fcdcf925af2d: RISC-V: Fix redundant vmv1r.v instruction in vmsge.vx codegen
  # 06792c142c5ac8424db1ca36d11b0b9d42de3f21: RISC-V: Optimize comparison patterns for register allocation
  # 5fce06b868ec0d4f75530a17d6fe6b12b7c9b5f0: RISC-V: Fine tune vmadc/vmsbc RA constraint
  # a8e1551bdb372aa3cfe754429b5efd6229ae5fdb: RISC-V: Legitimise the const0_rtx for RVV load/store address
  # f797260adaf52bee0ec0e16190bbefbe1bfc3692: RISCV: Inline subword atomic ops
  # 2a26872984c109a98d0ad733b0c68c3e1648ec86: RISC-V: Fix sync.md and riscv.cc whitespace errors
  # 8b84d87969ef2443516a79a80c22d2b6dba04630: RISC-V: Allow RVV VMS{Compare}(V1, V1) simplify to VMCLR
  # 1966741378d5f456d0245960fa09074b6320b4d6: RISC-V: Eliminate redundant zero extension of minu/maxu operands
  # d9df45a66b2c8f543106be0a2387bbe6195b00a6: RISC-V: Added support clmul[r,h] instructions for Zbc extension.
  # 065be0ffbcd676b635d492f4679e635b6ece4fe4: RISC-V: Add divmod expansion support

  # {
  #   # Unrelated change, needed for dbcbc858c
  #   # RISC-V: decouple stack allocation for rv32e w/o save-restore
  #   rev = "a5b2a3bff8152aa34408d8ce40add82f4d22ff87";
  #   hash = "sha256-XB/RHxd4njs2OultMjuxm3+NaKpT06JQzHOLGgq/dOQ=";
  # }

  # 87c347c2897537a6aa391efbfc5ed00c625434fe: RISC-V: fix build issue with gcc 4.9.x
  # 1adb1a653d6739589b12337c974c7e741cfb187c: RISC-V: ICE for vlmul_ext_v intrinsic API
  # f37a36bce81b50a43ec1613c1d08d803642f7506: RISC-V: Eliminate SYNC memory models
  # 4990cf84c460f064d6281d0813f20b0ef20c7448: RISC-V: Enforce subword atomic LR/SC SEQ_CST
  # d199d2e56da2379004e7e0457150409c0c99d3e6: RISC-V: Enforce atomic compare_exchange SEQ_CST
  # a61a067b15221de981afd4df8433e96a8cf32341: RISC-V: Add AMO release bits
  # 6a2383f47ae70c31f91775142b9fb03f697741c2: RISC-V: Strengthen atomic stores
  # 08c5d1804a027f1e4bee4ed5fda25522d9ac8806: RISC-V: Eliminate AMO op fences
  # 942ab49b5f8955371cf5db23608ba5f5f5244152: RISC-V: Weaken LR/SC pairs
  # bff7c77386447936dd614ebc7086b826c99c6642: RISC-V: Weaken mem_thread_fence
  # b90e030a3cef2158579618ad883783170ef58fa0: RISC-V: Weaken atomic loads
  # 12847288da55965ce684c5dd1c53cc38a2d0a8a9: RISC-V: Add tuple types support
  # cb7f6ec9524ced259199ea049949f05f1ed999a5: RISC-V: Add tuple type vget/vset intrinsics
  # 6313b0457394172b13978b9772d49eea1d68d3a1: RISC-V: Support segment intrinsics
  # 203f3060dd363361b172f7295f42bb6bf5ac0b3b: riscv/linux: Don't add -latomic with -pthread
  # 4bd434fbfc7865961a8e10d7e9601b28765ce7be: riscv: fix error: control reaches end of non-void function
  # d875d75653ed67e125e70dd8530182ce7872af65: RISC-V: Fix PR109615
  # 3365956d55a6484097ff40fb81acb2345322044c: RISC-V: Allow RVV VMS{Compare}(V1, V1) simplify to VMSET
  # 0c1eaac3fd35eafedc8fb5638af30af0aea199d3: RISC-V: Legitimise the const0_rtx for RVV indexed load/store
  # 8421f279e9eb00a2342ee3630dcdaf735b734fe8: RISC-V: Fix incorrect demand info merge in local vsetvli optimization [PR109748]
  # 2d76f2b45d6649174748d862a31bb95c53ee1117: RISC-V: Enable basic RVV auto-vectorization support.
  # b3e5cb9dc33628c7fee225c6a1bab68d2679d108: RISC-V: autovec: Add new predicates and function prototypes
  # 6ad9e5e0c7b77938348eee0ede77cb5522a914ac: RISC-V: autovec: Export policy functions to global scope
  # bc73bf831ef512b6a1c07ae150a7cbf2daed9fd6: RISC-V:autovec: Add auto-vectorization support functions
  # b9b7981f3d6919518372daf4c7e8c40dfc58f49d: Remove duplicated definition in risc-v vector support.
  # 9217e0dde1b7dbcff456d513334496404e626437: RISC-V:autovec: Add target vectorization hooks
  # 4c05f966a098744db9fa1e73074d7c08ace446fd: Delete duplicated riscv definition.
  # 17d683d4d3dc95d13096ec52ad9937a2b011f9a4: RISC-V: Handle multi-lib path correclty for linux
  # bf839c154d6cdee62f222277fa29c38509f25912: RISC-V: Fix ugly && incorrect codes of RVV auto-vectorization
  # c139f5e106fcdcd5e820541f357937c6edd7b161: RISC-V: Factor out vector manager code in vsetvli insertion pass. [NFC]
  # 69f3914414a303f0e2c8246e08925f90c207846c: RISC-V: Fix dead loop for user vsetvli intrinsic avl checking [PR109773]
  # a2676383adf31a7b4b64b7b1817428f953041d73: RISC-V: Fix incorrect implementation of TARGET_VECTORIZE_SUPPORT_VECTOR_MISALIGNMENT
  # 046551108378a00ee09cc2a071dd83b3fc7c35cf: RISC-V: Insert vsetivli zero, 0 for vmv.x.s/vfmv.f.s instructions satisfying REG_P(operand[1]) in -O0.
  # 003f388cddbbd3c8ff936f98355a90acda619030: RISC-V: Support const series vector for RVV auto-vectorization
  # b75c9e10379481b1b1e9dfdcc6aa81c9ba58cb1a: RISC-V: Add vectorized binops and insn_expander helpers.
  # 84d2899638a7207bc01159553e9489de7d65b494: RISC-V: Clarify vlmax and length handling.
  # 8c08201f06e67d80a12dca9e5dc33334631285a6: RISC-V: Split off shift patterns for autovectorization.
  # 44564a4ab7b403598791ed9f0e866e94093a0b9d: RISC-V: Update RVV integer compare simplification comments
  # 6445f1224509861f2d471a66134b98f26290586e: RISC-V: Allow vector constants in riscv_const_insns.
  # 1c1a9d8ed840dc7d7467b30a8547967854c6c45f: RISC-V: Add basic vec_init for VLS RVV auto-vectorization
  # c919d059fcb67747d3c0bd539c7044e874b03fb7: RISC-V: Optimize vsetvli of LCM INSERTED edge for user vsetvli [PR 109743]
  # ea7a9f361e71b0176ae7e6b6bdaaa95789cc7942: RISC-V: Improve vector_insn_info::dump for LMUL and policy
  # 1d339ce8d002920fe8f1c968a04bb8b0c2580b0e: RISC-V: Pull out function call with side effect from gcc_assert.
  # 1871740c7803c2aea20f651f57b413bc425a051c: RISC-V: Refactor the or pattern to switch cases
  # f2afe68a1755fe627ae7dca9cc6c3a72bb8222f9: RISC-V: Support TARGET_VECTORIZE_PREFERRED_VECTOR_ALIGNMENT to optimize codegen of both VLA && VLS auto-vectorization
  # e9ea407c474b52722cb135f3f6b265ef01aede04: RISC-V: Optimize vsetvl AVL for VLS VLMAX auto-vectorization
  # 5ed880788ba33302de5d78574464201e0fecbc70: RISC-V: Add rounding mode operand for fixed-point patterns
  # 8cd140d3658c29df9571e5f926464f742d87e0c4: RISC-V: Add FRM and rounding mode operand into floating point intrinsics
  # e0f2f4711794e3117db9e97164c674bd96a52fe6: RISC-V: Support RVV VREINTERPRET from v{u}int*_t to vbool1_t
  # 01d62e9b6c3e9fd3132f1616843103ccf81778ed: RISC-V: Add rounding mode enum for fixed-point intrinsics
  # 24bd7168112f96e363cacaf593b3ac0c38c238f9: RISC-V: Introduce rounding mode operand into fixed-point intrinsics
  # e682d300261c0f2c8a5cc51151adabfe98e1006c: RISC-V: Add mode switching target hook to insert rounding mode config for fixed-point instructions
  # 6da6ed95c9ca247d405da3dfb737b743686fe5e6: RISC-V: Remove masking third operand of rotate instructions
  # 7b0073c6a4c21a558936c06a06ab1c6def9769ae: RISC-V: Remove trailing spaces on lines.
  # 9907413a3a6aa30a4a6db4756c445b40f04597f3: gcc/config/*: use _P() defines from tree.h
  # 64d6a4dfd983377c6a91f1711ead71dc59aaefac: RISC-V: Allow more loading of const vectors.
  # c104ef4b5eb1f781bbef953e3c282ef1ca94c4f1: RISC-V: improve codegen for large constants with same 32-bit lo and hi parts [2]
  # 259b4b7d349dd3fd560144bd4617f526458b45dc: RISC-V: Remove masking third operand of rotate instructions
  # 9000da00dd70988f30d43806bae33b22ee6b9904: RISC-V: Fix CTZ unnecessary sign extension [PR #106888]
  # 31cc55f4ff32475f8552205cbf341d4af8bb4fb7: Add bext pattern for ZBS

  {
    # IMPORTANT
    # Fix riscv_expand_conditional_move.
    rev = "55914b016de8c8514c58eb59822677a69e44135c";
    hash = "sha256-tqkGIR9ptruAQoCCuPRTwxb8CPBJW2GdppKlhd+rBg0=";
  }

  # 660754a820465583df32a5f9601df7389c941920: RISC-V: Support RVV VREINTERPRET from v{u}int*_t to vbool[2-64]_t
  # 7b0986acf20ebe261221b800b6196acbf87f5ca2: RISC-V: Reorganize the code of CONST_VECTOR handling in riscv.cc
  # 776d94f0b14235bf85d0cce4020eea86a20c91f7: RISC-V: Add "m_" prefix for private member
  # 51fd69ec2d57721ed502344ebe68b1643d9e7f34: RISC-V: Refactor the framework of RVV auto-vectorization
  # 751da44bd9032878e3dbebc63f20aafec8794bd2: RISC-V: Fix warning of vxrm pattern
  # 658938f3a173f4f9b3c8c8d22401fb7e31433f23: RISC-V: Fix magic number of RVV auto-vectorization expander
  # 2203da5175851c20cac3c8ce1f342519e090de37: RISC-V: Fix incorrect code of reaching inaccessible memory address
  # 0d76b785222a9d49a54c007537b636455072d37f: RISC-V: Support RVV VREINTERPRET from vbool*_t to vint*m1_t
  # bed61b5646f3f62861879ae361ff9022957dcc1d: RISC-V: Support RVV VREINTERPRET from vbool*_t to vuint*m1_t
  # e0600a02fc3eda109d12bdfccf1408c5bf2994db: RISC-V: Add RVV comparison autovectorization
  # ec40410d98e57fc6650241d4e05119a1f0af6a41: RISC-V: Add RVV mask logic auto-vectorization
  # 29a60c13f8ed9982483b477b2c44ec1c2d2f9b1f: RISC-V: Add FRM_ prefix to dynamic rounding mode enum
  # 53bd7622de70a4ca4a25cac953da3be2a24bc3c8: RISC-V: Remove FRM_REGNUM dependency for rtx conversions
  # 5bd67d7abddca87198b11efccedee42f82e9f3a9: RISC-V: Fix zero-scratch-regs-3.c fail
  # 25907509787e3ef68cd8054460893cd316a8186a: RISC-V: Add autovec sign/zero extension and truncation.
  # a1b23dcf2337ab8666fac7d1e191ca987710d184: RISC-V: Implement autovec abs, vneg, vnot.
  # 272f920b78f5a9ff80755861fa07ec9eb1aa4b58: RISC-V: Add ZVFHMIN extension to the -march= option
  # c0df96b3cda5738afbba3a65bb054183c5cd5530: RISC-V: Fix incorrect VXRM configuration in mode switching for CALL and ASM
  # f8af48d8755018272cdb0cf2f250cf278829d7be: RISC-V: Fix ternary instruction attribute bug
  # c48d7a6e3209021ec3a3d9c23601250405d94d96: RISC-V: Add RVV FMA auto-vectorization support
  # e9fd9efc8d64f944cb480322ee5ed2d0a46db87d: RISC-V: Fix VSETVL PASS ICE on SLP auto-vectorization
  # a99dc11fe272f6a1214f357b82f3f7eb5c7dabc3: RISC-V: Using merge approach to optimize repeating sequence in vec_init
  # 3f4c3c929fe6a5c3b24a886ffb8380cbe4d09896: RISC-V: Eliminate the magic number in riscv-v.cc
  # 6b828454246c5aef7f984bb6a2888699f8dcfb2d: RISC-V: Refactor comments and naming of riscv-v.cc.
  # 10680bc36aca7bfaee542a653a78813cf0d4fb1f: RISC-V: Use extension instructions instead of bitwise "and"

  {
    # Performance patch
    # RISC-V: Optimize TARGET_XTHEADCONDMOV
    rev = "a1806f0918c0d3612c99b6193b9703d4b4c82c21";
    hash = "sha256-C5yPpk6kTyyDW3cfU0SOQ9pCy8XVhMUMMjYRwdsCZMk=";
  }

  # 908546602e33e8810e98acd7634b22013346aa18: RISC-V: Add RVV FNMA auto-vectorization support
  # b1b92e72cdad1dc51058a26f1dadddd406fb8472: RISC-V: Fix warning in riscv.md
  # 52577a301ef1b86d0a3fda9fed2477b4d46a124a: RISC-V: Add floating-point to integer conversion RVV auto-vectorization support
  # 21a07620f4bfe38f12e6d5be8b1eeecc29fa6852: riscv: update riscv_asan_shadow_offset
  # 32a0266cc54a404007fca0d44dc9a299bbe70c1f: RISC-V: Allow all const_vec_duplicates as constants.
  # 5a98afec536ccc8e4530575edc5cf3420a4416b3: RISC-V: Add ZVFH extension to the -march= option
  # e2a326227977dd361bb3b52b8409ebc57240a2a7: RISC-V: Remove FRM for vfncvt.rod instruction
  # b65458005dfb38f2efdca52e42f3dbf4760f91bd: RISC-V: Remove FRM for vfwcvt.f.x<u>.v (RVV integer to float widening conversion)
  # 57920ae9653e8ef2b3f5f68c22894f5e65a3673d: RISC-V: Remove FRM for vfwcvt (RVV float to float widening conversion)
  # e1240bda3e0bb10ea6d24b278660fb3c6797f4f2: RISC-V: Add vwadd<u>/vwsub<u>/vwmul<u>/vwmulsu.vv lowering optimizaiton for RVV auto-vectorization
  # 443613caa80d807250e5fbcbee961442c0c2ffbb: RISC-V: Add RVV FRM enum for floating-point rounding mode intriniscs
  # 0b317a60abe7181713ec70c20a0ef12aeb41e703: RISC-V: Introduce vfloat16m{f}*_t and their machine mode.
  # bf9eee73f3d849e249fd7eb1fd9ebe7314bbbc62: RISC-V: Support RVV permutation auto-vectorization
  # 91430b73a059f58de83a82bba1a9ec2b750c48f9: RISC-V: Add vwadd.wv/vwsub.wv auto-vectorization lowering optimization
  # d5ea84cdd9a45e83b144442cdf9eb50efea9e28e: RISC-V: Add __RISCV_ prefix to VXRM and FRM enum
  # 37ff12b96d7c1ee5fe135253c7b9db7e2ba61b71: RISC-V: Fix warning in predicated.md
  # 265357d401fb7215e8fea820d29a48eacdd75ad1: RISC-V: Optimize reverse series index vector
  # a06b9435b9652ea1b0d30e6fa176c91df314954f: RISC-V: Add _mu C++ overloaded intrinsics for load && viota && vid
  # 2e3401bd71b59ca0e03f051c5db286c32299b940: RISC-V: Add pseudo vwmul.wv pattern to enhance vwmul.vv instruction optimizations
  # f5c82bff5ef2930583eccc008cf73653720987b5: RISC-V: Fix warning in predicated.md

  {
    # Cleanup patch
    # Remove unnecessary md pattern for TARGET_XTHEADCONDMOV
    rev = "e1d2493f5912c340b50f49e4c2d928870faa172b";
    hash = "sha256-luhyj2dZ9L55vnEVMpivndzaYilJie93A0VyicLBS2M=";
  }

  # 5681872057f0b725ec8a7c8a1eec8fee205ad673: [RISC-V] fix cfi issue in save-restore.
  # 8bdfa8a67a54545be1d90c46fb88a676695f25dc: RISC-V: Support RVV zvfh{min} vfloat16*_t mov and spill
  # 1330977166aa8b3035b6314f5d3bac362f77be6b: RISC-V: Move optimization patterns into autovec-opt.md
  # 5c9cffa3a4aeeac1e462dbc8a35a5c4986f3381e: RISC-V: Support RVV FP16 ZVFHMIN intrinsic API
  # a96ba6b958a00ad59c43cae10be65b263b5d0d2d: RISC-V: Remove redundant vlmul_ext_* patterns to fix PR110109
  # 2418cdfcf60b527dbfdabdda8523bf480ff295c4: RISC-V: Split arguments of expand_vec_perm
  # c7fe7ad612bb6aac1d078d215d5700ec4ef70e3c: RISC-V: Reorganize riscv-v.cc
  # 71ea7a3030590567938a3884583f7c0dd885f50c: RISC-V: Support RVV FP16 ZVFH floating-point intrinsic API
  # 6d4b6f7b5368858df316a2dc154a746a83be48ec: RISC-V: Fix some typo in vector-iterators.md
  # da2d75af6013bdbf347b0b1b1e88d8e4c2f771b2: RISC-V: Fix 'REQUIREMENT' for machine_mode 'MODE' in vector-iterators.md.
  # 17c796c7174bfc4a13a2aa74714cd295bf228668: [RISC-V] correct machine mode in save-restore cfi RTL.
  # 7805890428c3b3adfbf37143a262f76b1557e4f0: RISC-V: Support RVV FP16 ZVFH Reduction floating-point intrinsic API
  # 88604bd17c3d0c82792020b4b0da95627b1caa9d: RISC-V: Add RVV vwmacc/vwmaccu/vwmaccsu combine lowering optmization
  # 42eb371286fa4f1f8419ff9e8059576e574c7a2c: RISC-V: Fix ICE when include riscv_vector.h with rv64gcv
  # 631e86b7adb55fb5ce418ce4cb5a59a1a3a6faa7: RISC-V: Support RVV VLA SLP auto-vectorization
  # ae6c2d1edf289a8a04557e8fbfd4a61841c53345: riscv: Fix insn cost calculation
  # 7f26e76c9848aeea9ec10ea701a6168464a4a9c2: riscv: Fix scope for memory model calculation
  # 99bfdb072e67fa3fe294d86b4b2a9f686f8d9705: RISC-V: Eliminate extension after for *w instructions
  # 7f4644f8c683b6a60462a5e10ab67a0598945c37: RISC-V: Fix one warning of frm enum.
  # cb33116afc2da3024cffdeed5d90b69c3820017b: RISC-V: Refactor requirement of ZVFH and ZVFHMIN.
  # 55dcf277b5dc10702593b7c2fc0fc63917ce14f7: RISC-V: Enable select_vl for RVV auto-vectorization
  # 20c85207abd543c76818032632a5f1b3aea5495b: RISC-V: Rework Phase 5 && Phase 6 of VSETVL PASS
  # 7fc2b9ea2c41ae28154288c0a56e3e5c53b7df5b: RISC-V: Support RVV FP16 MISC vlmul ext intrinsic API
  # 6631fe419c6e47121e54fa3bbcc330dc04efd9a0: RISC-V: Add RVV narrow shift right lowering auto-vectorization
  # 145b5db151277133a2cfdb2d32d1756ff7df241b: RISC-V: Support RVV FP16 MISC vget/vset intrinsic API
  # d150afb4791e8dff4fc1d4e4b10938b55e58cb16: RISC-V: Enhance RVV VLA SLP auto-vectorization with decompress operation
  # de5f3bbf95674c2e6688b2ce7e7a01cdc236ea41: RISC-V: Fix V_WHOLE && V_FRACT iterator requirement
  # 1d4d302acd915a81f4b7d7a6db44999531f2fd31: RISC-V: Add vector psabi checking.
  # cbe7f069e6a1a5c4f17019f4449da35a182775fc: RISC-V: Fix bug of VLA SLP auto-vectorization
  # a07dadba85f1b15e270c227dfa70e2fdf331494f: RISC-V: Add comments of some functions
  # 06a0f07220cea449b4683f9bb9cce2e5de1e5a35: RISC-V: Remove duplicate `#include "riscv-vector-switch.def"`
  # 8a3a4fb273f9c69b8f9f6c303508610d34b3ebf1: RISC-V: Bugfix for vec_init repeating auto vectorization in RV32
  # 41738a1b3f333d0283fe911f715194f602d318f6: RISC-V: Align the predictor style for define_insn_and_split
  # 0ec3fbb5903ac3ad735b3154e814b46724fe1a27: RISC-V: Ensure vector args and return use function stack to pass [PR110119]
  # 9e3607e19bcd34e1fc857ca44ae30a8a1a4f5e20: RISC-V: Use merge approach to optimize vector permutation
  # 27612ce352921d74086102d9ad4d3e011923f837: RISC-V: Fix one warning of maybe-uninitialized in riscv-vsetvl.cc
  # dd6e1cbac8682106c5167c105f2807014288b852: RISC-V: Fix VL operand bug in VSETVL PASS[PR110264]
  # d0cf0c6c8449009697ad29dd7cb60e7f655628f2: RISC-V: Bugfix for RVV integer reduction in ZVE32/64.
  # 8a96f240d71d367a2955ab9e0f0fef3a0b0e2a74: RISC-V:Add float16 tuple type support
  # fcf4e50f852e6c3e7ce777573b282c26b85a7d77: RISC-V: Fix one typo for reduc expand GET_MODE_CLASS
  # 51795b91073798c718df6fafb01303861641a5af: RISC-V: Implement vec_set and vec_extract.
  # 9b24611acf2cda332378a84a1858752c51f61411: RISC-V: Add sign-extending variants for vmv.x.s.
  # 47ffabaf669e0c3950c7b1904f0873b006664d99: RISC-V: Add autovec FP binary operations.
  # da6cc50819c6652e9612cf5b35886afc284afb38: RISC-V: Add autovec FP unary operations.
  # 2ba7347aba59faa119345c7b374fbbf1f35bae85: RISC-V: Bugfix for RVV float reduction in ZVE32/64
  # 26bb67fc4d4b4bbefe298e21c965d41bb412eeb6: RISC-V: Bugfix for RVV widenning reduction in ZVE32/64
  # 5fad77857198981c16d9e5eae81e02a45113cca8: RISC-V: Fix VWEXTF iterator requirement

  # {
  #   # IMPORTANT?? General RISC-V platform fix. Needed for b70ad8c1.
  #   # RISC-V: Save and restore FCSR in interrupt functions to avoid program errors.
  #   rev = "dbcbc858c71f69da76d1f36d6bb5d72f2db11eda";
  #   hash = "sha256-iE449jI5OzdD3NjJD7O9OT4D3P1gXvuHhL/VNMQ3Vt8=";
  # }

  # 1d2308d68571ad7f84b2319574f381c486a58a3a: RISC-V: Add tuple vector mode psABI checking and simplify code
  # 4a6c44f4ad4198382b7c70f4d40eefb69e71132e: RISC-V: Fix compiler warning of riscv_arg_has_vector
  # 1c0b118babcd56dc886976b81727a9a77fc311c3: RISC-V: Optimize codegen of VLA SLP
  # cb421ffff66914e56a270dfb1cedb9bb890b43c2: RISC-V: Set the natural size of constant vector mask modes to one RVV data vector.
  # 0a3b1a095d451427571299fc78f29dec94c6931c: RISC-V: Support RVV floating-point auto-vectorization
  # 95a2e5328e5aa15724ab8da4aa622a0bfc40c9e5: RISC-V: Refactor the integer ternary autovec pattern
  # f9ab5d62c94547499de52c800ab914cc8e802212: RISC-V:Add float16 tuple type abi
  # ae10eb041da70d39f9cd0feb1b704e5c9d6a62aa: Revert "RISC-V:Add float16 tuple type support"
  # 319e6fe96027f53719fd07b5ed057100b19ac802: Revert "RISC-V:Add float16 tuple type abi"
  # d42d199e9ea72fb220ea00195dffb5c142226188: RISC-V: Enable len_mask{load, store} and remove len_{load, store}
  # b23ec2de3b992784c3e376da8f51f962daca4d86: RISC-V: fix expand function of vlmul_ext RVV intrinsic
  # 9326a49c9e9d6316bc960505a55da2dd06bc10af: RISC-V: Optimize VSETVL codegen of SELECT_VL with LEN_MASK_{LOAD, STORE}
  # 9f76f04be40adffb2d3498010a23051502031140: RISC-V: Remove redundant vcond patterns
  # a024176a97b0176f526862836c33e283b8db4197: RISC-V: Remove duplicated extern function_base decl
  # 2d1a3629ba3034cc16599eafb530cdada426bab3: RISC-V: Support const vector expansion with step vector with base != 0
  # 201c6c322f3e88367ac9b6f476cf76b755d3c4b1: RISC-V: Split VF iterators for Zvfh(min).
  # b95dcaa5a7491e6f97e5fac902d55e8a58e068d3: RISC-V: Implement autovec copysign.
  # 1f3d97bdf1e2ac3770468127fb39645bb68f6291: RISC-V: Add autovec FP int->float conversion.
  # a9b40612baf2f936ac1d211fbc0b3e46404cefa7: RISC-V: Add autovec FP widening/narrowing.
  # 5fad4da8d968bbb198d593ff93ab485939ca1a28: RISC-V: Add autovect widening/narrowing Integer/FP conversions.
  # d35702d90e559f20f6c17d55cb0276c4fc60766c: RISC-V: Support floating-point vfwadd/vfwsub vv/wv combine lowering
  # b7ab876fa96ce3b48120c14f327c1e199356e955: RISC-V: Support vfwmacc combine lowering
  # 4d1e97f5838b0b6c12d256883e24a8cb3258a134: RISC-V: Allow rounding mode control for RVV floating-point add
  # e714af12e3bee0032d8d226f87d92c9bc46f0269: RISC-V: Support vfadd static rounding mode by mode switching
  # 1cde8e5d45d74cf7ba85772b99b41a7c81769ff4: RISC-V: Refactor vxrm_mode attr for type attr equal
  # 3d95a524d4746ceb3065f92f30a5679afb88d16a: RISC-V: Fix one typo of FRM dynamic definition
  # 47e6dcb597b2d4abcab13c9dea0cc7d2131b6419: RISC-V: Support vfwnmacc/vfwmsac/vfwnmsac combine lowering
  # 14fa8c1d651a2e9fd3d9e75ab746589a36c86986: Revert "RISC-V: Support vfwnmacc/vfwmsac/vfwnmsac combine lowering"
  # bc32918b063b9fa3dffc8815478a81df6ad999ca: RISC-V: Support vfwmul.vv combine lowering
  # 49485639c25c77b116d35c2f9c3dbfb8bf4cf814: RISC-V: Support vfwnmacc/vfwmsac/vfwnmsac combine lowering
  # b8806f6ffbe72ed8fb7aba3b3a9196ec4d13e614: Middle-end: Change order of LEN_MASK_LOAD/LEN_MASK_STORE arguments
  # 7c521f6751e47d9dfaca2c8288c65f94e2f54d3d: RISC-V: Add support for vector crypto extensions
  # c26f275861378cb4e339563b22e06cc8e2dc8120: RISC-V: Optimize local AVL propagation
  # eed9eeaab30fd7b9e509ec3cf78f5f3c881b0abf: Revert "RISC-V: Fix one typo of FRM dynamic definition"
  # 0af87afb3fd10c6fcfbed3ba85d575889477a968: RISC-V:Add float16 tuple type support
  # 8377cf1bf41a0a9d9d49de807b2341f0bf5d30cf: RISC-V:Add float16 tuple type abi
  # 429905d809bbf2398bf666d65322b87ac7381e43: RISC-V: Change truncate to float_truncate in narrowing patterns.
  # 70b041684a2222b8f19200cc240a13d703b210a7: RISC-V: Use FRM_DYN when add the rounding mode operand
  # df9a6cbb087d674ccee545d642e688f1979dcb3a: RISC-V: Allow variable index for vec_set.
  # 573bb719bb82d1d61ca54eb4fddf82eccfd56470: RISC-V: Support variable index in vec_extract.
  # f58819c9aabfe23fa0e6ba422b39a00a980f991e: RISC-V: Fix one typo of FRM dynamic definition
  # 55900189ab517906efe08f8d17f3e4a310ee7fff: RISC-V: Fix one bug for floating-point static frm
  # a3ad2301d2f4aab2deeb286fa5bd0282260bfd0a: GCSE: Export 'insert_insn_end_basic_block' as global function
  # 9aabf81f40f0ee130646ab5e60d158218d1276cc: RISC-V: Optimize permutation codegen with vcompress

  {
    # This is in principle a performance patch, but required to make 0e25761b, d8bdc978 apply cleanly.
    # riscv: xtheadbb: Add sign/zero extension support for th.ext and th.extu
    rev = "d05c8b016fb96cdcc445406469867b757776894e";
    hash = "sha256-CJP2GYIzXDm4oUFxW1U539ItLlGM23yKvHlVm9dKYic=";
  }

  # {
  #   # IMPORTANT. This one has been backported to the gcc-13 release branch and can be dropped for gcc>=13.3.
  #   # riscv: xtheadmempair: Fix CFA reg notes
  #   rev = "93973e4c5d3bcde1f84cad3b42a8c36e23900d19";
  #   hash = "sha256-ggIQZ5O7bS8wvNb9pQdMABGM5RWPdf58Ve1WVk3ypps=";
  # }

  # e15a82a1fea3a68f47d9a5a8634265eeec1562a8: riscv: xtheadmempair: Fix doc for th_mempair_order_operands()

  {
    # riscv: thead: Adjust constraints of th_addsl INSN
    rev = "208e10bf8a90f49aa40152ab7fcebe8cd7c5d31a";
    hash = "sha256-niZLiTdMbLRCQ79LLLas26q4ZD2hB+ncNUy0oJu0hYw=";
  }

  # b621883620b127caf20e88e59fa73e666960013e: riscv: Simplify output of MEM addresses
  # a3480aacc4ab01651725a63e05829a43bc23d549: riscv: Define Xmode macro
  # 96ad6ab29b3d6d8646c97760cc87a17f405e09d2: riscv: Move address classification info types to riscv-protos.h
  # 423604278ed550f07f80c9687a441c58a6cd6e85: riscv: Prepare backend for index registers

  # {
  #   # Cleanup patch
  #   # riscv: thead: Factor out XThead*-specific peepholes
  #   rev = "96d32c111e63b7cde38410f4e316512771c8ecff";
  #   hash = "sha256-CjuXu9vJt2G60s6y3e1hwMDi87VIlChGxbXfhOanj2A=";
  # }

  # c1b3b5a056b8940f845123a8e80ef8e646f40682: RISC-V: Support integer mult highpart auto-vectorization
  # 44f244e4672578be6cc513104473981790a1c164: RISC-V: Support COND_LEN_* patterns
  # f048af2aa3dccec4d28c32056a1d5972f4049806: RISC-V: RISC-V: Support gather_load/scatter RVV auto-vectorization
  # 880676d603979852f30b76b1e2a3532b95f08048: RISC-V: Refactor riscv mode after for VXRM and FRM
  # 601a412ef0fe59ce48fb8635ebdaa58b58512a5a: RISC-V: Remove the redundant expressions in the and<mode>3.
  # ad0518d97cfc857183e524fabc104ebeec9e8ccd: RISC-V: Recognized zihintntl extensions
  # 0d2673e995f0dd69f406a34d2e87d2a25cf3c285: RISC-V: Enable COND_LEN_FMA auto-vectorization
  # c29584fc29df0c5075ad57cce5bea447b1d061a3: riscv: Fix warning in riscv_regno_ok_for_index_p
  # da93c41c4ea124d61d41fb8629b801f74886284c: RISC-V: Support non-SLP unordered reduction
  # 70742d08832eb7db4d90f52465966111a19ce3a5: RISC-V: Ensure all implied extensions are included [PR110696]
  # c1244ceed99bc37069baf164d008ff91f63d3115: RISC-V: Add TARGET_MIN_VLEN > 4096 check
  # 45dd1d91671cbc4a868ec41ada5f070aa487d02d: RISC-V: Support basic floating-point dynamic rounding mode
  # 48b7404707186856523b908f1720488bf87f6b49: RISC-V: Enable SLP un-order reduction
  # bd93ef7f1a178079c6cdaccdf953f79a3365b028: RISC-V: Dynamic adjust size of VLA vector according to TARGET_MIN_VLEN
  # c283c4774d1cbfd12c2a15b51b18347463694ad0: RISC-V: Throw compilation error for unknown extensions
  # 879c52c9dab5940a81aae8374831a6e4f78605ee: RISC-V: Refactor RVV machine modes
  # bb0da4542df887a530d5a75e08abf5cbb821fe6b: RISC-V: Align the pattern format in vector.md
  # bb42f05d0738bddc721e838ebe9993df39ff2e0f: RISC-V: Fix one incorrect match operand for RVV reduction
  # bd68b33f80ae4726393dbd6e12025f99dc269c12: cleanup: Change LEN_MASK into MASK_LEN
  # 363bb3dca429e885ce3d134fc50f8ab05aacda0f: cleanup: make all cond_len_* and mask_len_* consistent on the order of mask and len
  # 1d96b11e4aef1727b3bd3215d0d8140a504d8eb7: RISC-V: Fix redundant variable declaration.
  # ecfa870ff29d979bd2c3d411643b551f2b6915b0: RISC-V: optim const DF +0.0 store to mem [PR/110748]
  # 73ff915a169bf3f4b15c75fa3b6e658f7fe86b46: RISC-V: Bugfix for allowing incorrect dyn for static rounding
  # 8390a2af1397ba86ea2cf80d58007b8b69a9a6eb: RISC-V: Support in-order floating-point reduction
  # aa1e2d543869a07580f9b2112f2d7367f83a6753: [committed][RISC-V] Fix minor issues in diagnostic message
  # ad0dde0af107aaf6a91e37f3aa31249e34df6ce0: RISC-V: Fixbug for fsflags instruction error using immediate.
  # adbac207e917e42dac7b30553d91f3bd1196bbee: RISC-V: Fix vector tuple intrinsic
  # aee2817ecd261ac2fd2717a2a36db81906ff2346: [PATCH 1/5] [RISC-V] Recognize Zicond extension
  # 74290c664d1d4c067a996253fe505555ec671668: [PATCH 2/5] [RISC-V] Generate Zicond instruction for basic semantics
  # cdc65458334faad1a2f00cf17e64e39b25d697ca: RISC-V: Fix uninitialized and redundant use of which_alternative
  # d0ae71c26ab9e383768160ea266f56db2e2ae43c: RISC-V: Remove unnecessary vread_csr/vwrite_csr intrinsic.
  # 33b153ff521e2f33acf7d076f8625d85319b731d: RISC-V: Enable basic VLS modes support
  # 1d6af545bf7fa34c9bdd17b41e81abd019d073a8: RISC-V: Remove vxrm parameter for vsadd[u] and vssub[u]
  # 92a891e869d35c940d2a7b92355af02d78c9a86e: RISC-V: Enable basic VLS auto-vectorization
  # 9f63862184b14a5f04a6e91c8c055687f2720d73: RISC-V: Bugfix for RVV floating-point rm suffix sequence
  # 1349f530753be963043d77c1d51da161133d5afe: RISC-V: Return machine_mode rather than opt_machine_mode for get_mask_mode, NFC
  # 5a770748e8eea38a4ed1f3c4dd8d807aa1640536: RISC-V: Drop unused variable
  # 85699f1d23aa71cbfeb13d72ec987e5217d410c2: RISC-V: Support RVV VFSUB and VFRSUB rounding mode intrinsic API
  # 46a508ec7aee5038cc0a8800b756838ebef7f6d2: RISC-V: Support CALL for RVV floating-point dynamic rounding
  # e15d0b6680d10d7666195e9db65581364ad5e5df: [PATCH 3/5] [RISC-V] RISC-V Conditional Move costing [was:Generate Zicond instruction for select pattern with condition eq or neq to 0]
  # 2d73f2eb80caf328bc4dd1324d475e7bf6b56837: [committed] [RISC-V] Avoid sub-word mode comparisons with Zicond
  # 5b501863ac7da57858fdd464dfb7a776143f22a2: [PATCH 3/5] [RISC-V] Cost model for Zicond.
  # 21c2815605fb0ec43ea65b1104990cf03248013e: RISC-V: Support RVV VFWADD rounding mode intrinsic API
  # 1d5bc3285e8a115538442dc2aaa34d2b509e1f6e: [committed][RISC-V] Fix 20010221-1.c with zicond
  # cba9db950371e810e32e75425707beceb85bb0f0: RISC-V: Support RVV VFWSUB rounding mode intrinsic API
  # 1b53748c61a8b6489ca9a56a25037131335d3cc6: RISC-V: Remove redudant extern declaration in function base
  # 373600087df596b26c10d18eb0c5082c2788808b: RISC-V: Support RVV VFMUL rounding mode intrinsic API
  # 39663298b5934831a0125e12f113ebd83248c3be: RISCV: Add -m(no)-omit-leaf-frame-pointer support.
  # 93fd44fde638a4d5fc34547c25aa02f346170430: RISC-V: Fix one comment for binop_frm insn
  # d61efa3cd3378be38738bfb5139925d1505c1325: [committed][RISC-V] Remove errant hunk of code
  # 9e3fd332959930efd3cabf222afbac910507d2f3: [PATCH 3/5] [RISC-V] Generate Zicond instruction for select pattern with condition eq or neq to 0
  # b7ab3938c638bf5aacfe926ed19aba1627702a71: RISC-V: Support RVV VFDIV and VFRDIV rounding mode intrinsic API
  # dd03fb9962e4776286d7654df09549c0e712465e: RISC-V: Support RVV VFWMUL rounding mode intrinsic API
  # 51e5a5cefb11d8a7b2216e866abcc225ba16d127: RISC-V: Support RVV VFMACC rounding mode intrinsic API
  # 62d9c1dd8eb1152d8fbe0e1df101b99c9141417a: RISC-V: Support RVV VFNMACC rounding mode intrinsic API
  # dccd7e8a7215f3f2e295e11b20680d3add08cd7e: RISC-V: Support RVV VFMSAC rounding mode intrinsic API
  # 236ec7aac051a062dc961b3c1482925893ee6e21: RISC-V: Support RVV VFNMSAC rounding mode intrinsic API
  # 098d6fbe6477820f32e1ca3eb3de870ef4861b89: Revert "RISC-V: Support RVV VFNMSAC rounding mode intrinsic API"
  # b87a4739a4c043e8063f2955a706b949dcc20dae: Revert "RISC-V: Support RVV VFMSAC rounding mode intrinsic API"
  # 7a6b4d87d8aa50ef644414fe224c3540c540c2d4: Revert "RISC-V: Support RVV VFNMACC rounding mode intrinsic API"
  # 2d2f090e67b26457596e7d5aabe629e3da58db94: Revert "RISC-V: Support RVV VFMACC rounding mode intrinsic API"
  # 4e87c953d16377457b31b65b6c3268d932e462ab: [PATCH v3] [RISC-V] Generate Zicond instruction for select pattern with condition eq or neq to 0
  # 8ae83274d8cc60547e8c92a41a4f4716b045f57a: [committed] [RISC-V] Handle more cases in riscv_expand_conditional_move
  # 18c453f0e633abb9b317947b011ec6e07780fba8: [committed][RISC-V]Don't reject constants in cmov condition
  # 9cba4fce837b9fa0b52af64de0bac60ea1906900: RISC-V: Support VLS basic operation auto-vectorization
  # 99e47791a901e71eb2475e3987c51d07f37430a5: RISC-V: Support VLS shift vectorization
  # 8f4d2a4c984f168b8444672aa8f4a103e845dfbf: RISC-V: Support neg VLS auto-vectorization
  # 25c4b1620ebc10fceabd86a34fdbbaf8037e7e82: RISC-V: Fix a bug that causes an error insn.
  # 6ae5565e78c96868ea6f9a7bb38767b3800d22c9: RISC-V: Support CALL conditional autovec patterns
  # 20659be04c2749f9f47b085f1789eee0d145fb36: [committed] [RISC-V] Fix bug in condition canonicalization for zicond
  # 165b1f6ad1d3969e2c23417797362d0528e65c79: targhooks: Extend legitimate_address_p with code_helper [PR110248]
  # c4d618143048ac781f435638ef6e788ba870dc53: RISC-V: Support NPATTERNS = 1 stepped vector[PR110950]
  # a16dc729fda9fabd6472d50cce45791cb3b6ada8: RISC-V: Folding memory for FP + constant case
  # f088b768d01ae42385697584a2bcac141685dce2: RISC-V: Handle no_insn in TARGET_SCHED_VARIABLE_ISSUE.
  # 83c77b31b8aa57c189febf441d3906e402e7da7a: RISC-V: Fix VLMAX AVL incorrect local anticipate [VSETVL PASS]
  # 4cede0de9a19ee1a911b27dbe0916e67f1f3d7c9: RISC-V: Refactor RVV frm_mode attr for rounding mode intrinsic
  # 6bdbf1722a312b90a48dea19af545815f0069e86: RISC-V: Add missing modes to the iterators
  # 887f13916b18f46b563d527ad5001c6384e44a60: RISC-V: Support TU for integer ternary OP[PR110964]
  # 07e93224f5dceb3423f38a58c2a1923c200cd5c8: RISC-V: Support RVV VFMACC rounding mode intrinsic API
  # 6176527a7528ec626fa1e7afb381124867881388: RISC-V: Support RVV VFNMACC rounding mode intrinsic API
  # da7b43fb0224cdce5157a747fdd6975b7c81c6cf: RISC-V: Add MASK vec_duplicate pattern[PR110962]
  # 0ac323238e91c6093709ce8f4176c0c8fb1a693d: RISC-V: Add Ztso atomic mappings
  # ee8a844d02e39912e0a303bcf46a0584d144ad6a: RISC-V: Support RVV VFMSAC rounding mode intrinsic API
  # cd9150e2a821ec67a04844b7b2c1946b64994aa4: RISC-V: Support RVV VFNMSAC rounding mode intrinsic API
  # 797334e931362174eb8ad15ded79cdf8e846e744: RISC-V: Support RVV VFMADD rounding mode intrinsic API
  # bcda361daaec8623c91d0dff3ea8e576373b5f50: RISC-V: Support RVV VFNMADD rounding mode intrinsic API
  # 6a8203b7dc0ab694c3f3f4aef503107975bb59aa: RISC-V: Support RVV VFMSUB rounding mode intrinsic API
  # e80c55e4ca68867ddb3cb3720f857bd22762768c: RISC-V: Allow CONST_VECTOR for VLS modes
  # 685abdb4a1fe46a12da5cc9ae1d5aaef9344a339: RISC-V: Fix vec_series expander[PR110985]
  # 9890f377013cf1e4f5b9fab8a7287a5380dade1f: RISC-V: Add TAREGT_VECTOR check into VLS modes
  # 4ecc18554bbf789174efe4c9e0be40182898a8ce: RISC-V: Support RVV VFNMSUB rounding mode intrinsic API
  # d15840aa05bc16580b2c79b356012974928e07a4: RISC-V: Support RVV VFWMACC rounding mode intrinsic API
  # a66873593817f72bbccd86f41128dc5ae404e8b9: RISC-V: Support RVV VFWNMACC rounding mode intrinsic API
  # d9577b4b4c2a7b4e8bc869d33b7de98a0e507e7c: RISC-V: Support RVV VFWMSAC rounding mode intrinsic API
  # c944ded09595946290778a26794074e69cc65f3e: RISC-V: Support RVV VFWNMSAC rounding mode intrinsic API
  # 9be93b80585fc875a2fc6b7d490b640b7fe04365: RISC-V: Support RVV VFSQRT rounding mode intrinsic API
  # 17c22f466162d3a1759f8c607b7e81e7dd631cd9: RISC-V: Minimal support for ZC* extensions.
  # 6e46fcdf24f99ce1272305aac93cac51d45c04d6: RISC-V: Enable compressible features when use ZC* extensions.
  # 469711f06865979854e587263d3d43137f256b57: RISC-V: Support RVV VFREC7 rounding mode intrinsic API
  # 0618adfa80fcd2fd7ae03b30553c60a6b1abf573: RISC-V: Fix autovec_length_operand predicate[PR110989]
  # c6f65ce9483131b1996cbddf8aaaebe0d8e5141c: RISC-V: Support RVV VFCVT.X.F.V rounding mode intrinsic API
  # fe5788862ba8d5ac4551658d842f2d038bd8d363: RISC-V: Support MASK_LEN_{LOAD_LANES,STORE_LANES}
  # 567258f057913229084c21396b84c219f3fef05d: RISC-V: Support RVV VFCVT.XU.F.V rounding mode intrinsic API
  # dc2529e8243859faf35c66d994756c40978f0ce5: RISC-V: Support RVV VFCVT.F.X.V and VFCVT.F.XU.V rounding mode intrinsic API
  # f2bec0ac481fb97fc88b976d8255cc85bff7e20e: RISC-V: Support RVV VFWCVT.X.F.V rounding mode intrinsic API
  # ac6b74e9a5a40c28aeb715f43d117a7c4d32f43f: RISC-V: Fix one build error for template default arg
  # 1b7418ba1baf0d43fff6c6a68b8134813a35c1d9: RISC-V: Support RVV VFWCVT.XU.F.V rounding mode intrinsic API
  # 694242930906d9f7ad15977cac6dcbeae1f3d3f2: RISC-V: Implement vector "average" autovec pattern.
  # 29547511f7bae06f9f424f8c8583014878240016: RISC-V: Fix incorrect VTYPE fusion for floating point scalar move insn[PR111037]
  # 3d18a528bfd05f0bfdb27f52c2f6c2445f15e4ca: RISC-V: Support RVV VFNCVT.X.F.W rounding mode intrinsic API
  # 72fc7e9d6aefbc4de1d3827062e47277fca83ef5: RISC-V: Support RVV VFNCVT.XU.F.W rounding mode intrinsic API
  # 20e1db413ee8bb4d5233d97484e19e4e1d85f4ac: RISC-V: Support RVV VFNCVT.F.{X|XU|F}.W rounding mode intrinsic API
  # 3d903a26d7b6b4e32ad9f1f8c6fb5adf766c7cc7: RISC-V: Support RVV VFREDUSUM.VS rounding mode intrinsic API
  # 3a68ef2cccb8a7f15ca188dbffd754d112d75898: RISC-V: Support RVV VFREDOSUM.VS rounding mode intrinsic API
  # c6259c4975e84b30d7de1f64afaece614d7c4500: RISC-V: Support RVV VFWREDOSUM.VS rounding mode intrinsic API
  # c43916857c6586e65f10713fdc5a65909918a8cc: RISC-V: Forbidden fuse vlmax vsetvl to DEMAND_NONZERO_AVL vsetvl
  # 86d80395cf3c8832b669135b1ca7ea8258790c19: RISC-V: Revert the convert from vmv.s.x to vmv.v.i
  # 3709ca091bec43ee3203b96146585652c5d84728: RISC-V: Add the missed half floating-point mode patterns of local_pic_load/store when only use zfhmin or zhinxmin
  # 39491441a3aca7725d5a6dfeea4b01229d30c899: [RISCV][committed] Remove spurious newline in ztso sequence
  # 36788c9ff6d044210ddee23154306ba54bc3087b: [PATCH] RISC-V: Add Types to Missing Bitmanip Instructions
  # 1d17e3d66736cc8d875bf02530f3f6aa498f0d09: RISC-V: Support RVV VFWREDUSUM.VS rounding mode intrinsic API
  # 47f95bc4be4eb14730ab3eaaaf8f6e71fda47690: RISC-V: Add multiarch support on riscv-linux-gnu
  # 3571cc93511b39f7a403fe5eab0e316cd7e86220: RISC-V: output Autovec params explicitly in --help ...
  # b817bfad31b3bb8701ad1b6bd350b841e45693df: RISC-V: Add riscv-vsetvl.def to t-riscv
  # 10a7d31dd5cdb2689272b5664627daece9b154ee: RISC-V: Clang format riscv-vsetvl.cc[NFC]
  # ea1eb12a38f09e494d5ef072e55653a6463d57eb: RISC-V: Add attribute to vtype change only vsetvl
  # 29487eb237b893c673e9ecc6409b175e22792f13: RISC-V: Fix VTYPE fuse rule bug
  # 3beef5e6b5b12b5c90040c8485f1836e2dd6cf83: RISC-V: Fix potential ICE of global vsetvl elimination
  # 92f2ec417c57e980b92b8966226fc2bfbf042af8: RISC-V: Add conditional unary neg/abs/not autovec patterns
  # 18befd6f050e70f11ecca1dd58624f0ee3c68cc7: [PATCH] RISC-V:add a more appropriate type attribute
  # 0345152f922c3a58ae0a8ee014e37dcfab35592c: RISC-V: Refactor RVV class by frm_op_type template arg
  # 1c51805e2468bc10057bc0f2fc12fab909d21d04: RISC-V: Fix one typo in autovec.md pattern comment
  # b6ba0cc9339f2cc81398863ae779daa6c8853ad6: RISC-V: Allow const 17-31 for vector shift.
  # a047513c9222f14adc6e5a015e038b207bb9a653: RISC-V: Enable pressure-aware scheduling by default.
  # 1fbcae1c6452c9939a4be818a64cd01883abd80e: RISC-V: Add COND_LEN_FNMA/COND_LEN_FMS/COND_LEN_FNMS testcases
  # 449ab115dece8ac8e8f27d2d7b5bc653a2c75d3a: RISC-V: Add early continue for ENTRY and EXIT block
  # b41d7eb0e14785ff0ad6e6922cbd4c880e680bf9: RISC-V: Enable Hoist to GCSE simple constants
  # 30699b999e94b66ff8706d3b07a35b2a9554d10c: [PATCH v10] RISC-V: Add support for the Zfa extension
  # df177510665c4e1045bdaadf10d837f1bdc4ea06: RISC-V: Add Types to Un-Typed Sync Instructions:
  # e7545cadbedfc167749d801bd574cf9fe22ed5c5: RISC-V: Support LEN_FOLD_EXTRACT_LAST auto-vectorization
  # e030af3e6f6d3ae555d6f70047ea3a2bf5744b7e: RISC-V: Refactor Phase 3 (Demand fusion) of VSETVL PASS
  # e7b585a468aa4980955ae25fa9f4b41a3dc2995e: RISC-V: Disable user vsetvl fusion into EMPTY or DIRTY (Polluted EMPTY) block
  # 421cf6109ad23ae0f5d3da9adb582eb464e8826c: RISC-V: Fix uninitialized probability for GIMPLE IR tests
  # c2d04dd659c499d8df19f68d0602ad4c7d7065c2: RISC-V: __builtin_riscv_pause for all environment
  # 973eb0deb467c79cc21f265a710a81054cfd3e8c: RISC-V: Fix error combine of pred_mov pattern
  # 818cc9f2d2f3dbbd4004ff85d3125d92d1e430c9: RISC-V: Fix AVL/VL get ICE[VSETVL PASS]
  # b3176bdc86c04da6545a4bd8e2fb7f38d3f2db8d: RISC-V: Refactor and clean expand_cond_len_{unop,binop,ternop}
  # d16af3ebea84749ac673db29a4124d2dc7cd369e: RISC-V: Fix one ICE for vect test vect-multitypes-5
  # 4b70c7c849331d45c0d6a1a4e1cf96b103be9aa6: RISC-V: Add Types to Un-Typed Vector Instructions
  # 6e23440b5df4011bbe1dbee74d47641125dd7d16: RISC-V: generate builtin macro for compilation with strict alignment
  # fce74ce2535aa3b7648ba82e7e61eb77d0175546: RISC-V: Added zvfh support for zfa extensions.
  # 94b950df6f8c46925799f642e5c44f42638f2b5e: RISC-V: Use splitter to generate zicond in another case
  # 260f743aa476abce8f88cceaca12abcb8115b02f: RISC-V: Enable movmisalign for VLS modes
  # 7accc6208befae77699a56f67a94da1e247ed069: RISC-V: Make sure we get VL REG operand for VLMAX vsetvl
  # 3d1d3132b9d4dc8b6069ad95dad624371124f297: RISC-V: support cm.push cm.pop cm.popret in zcmp
  # b27d323a368033f0b37e93c57a57a35fd9997864: RISC-V: support cm.popretz in zcmp
  # 490bf0b9756368b34221348b0260e061634e497b: RISC-V: support cm.mva01s cm.mvsa01 in zcmp
  # f7bff24905a6959f85f866390db2fff1d6f95520: RISC-V: Remove movmisalign pattern for VLA modes
  # ac55f9710fe82a4ed8cb132f57303775ce60e5d1: RISC-V: Fix vsetvl pass ICE
  # 79ab19bcbae6e54c91bfca4ffa45cbc5eb0374bc: RISC-V: Refactor and clean emit_{vlmax,nonvlmax}_xxx functions
  # e69d050fd990f8e72e19e6dfb1bf7da2f09236f7: RISC-V: Change vsetvl tail and mask policy to default policy
  # 4da3065a6422062b029df9660a226297802455f4: RISC-V: Add Vector cost model framework for RVV
  # 0337555c7a2524bd334bafdc06dd801818eb34b6: RISC-V: Add vector_scalar_shift_operand
  # 3e37e8231849ded7e214042f60f59fdcec75d7d3: RISC-V: Support rounding mode for VFMADD/VFMACC autovec
  # 625962440ba5c737d6f35f7a1c9af1e9ef6bef3a: RISC-V: Support rounding mode for VFMSAC/VFMSUB autovec
  # a7cefeaead68e5d89f65ba3a558eddef9b0b0f75: RISC-V: Support rounding mode for VFNMSAC/VFNMSUB autovec
  # af0c625f6085567522cf55b2ced05f07ec7be67a: RISC-V: Support rounding mode for VFNMADD/VFNMACC autovec
  # ed60ffd814c86a225a4586da649f6e76718490db: RISC-V: Support FP ADD/SUB/MUL/DIV autovec for VLS mode
  # ef4e916b526a65411a577126d34c3b0bb97b6111: RISC-V: Add dynamic LMUL compile option
  # ffbb19c6afc016f6dc001ad0f567d3216ff601b1: RISC-V: Add vec_extract for BI -> QI.
  # 5f2098cce6c75117927fef317c714dd2088b0189: RISC-V: Enable VECT_COMPARE_COSTS by default
  # 4d1c8b04ec8731b57ddbc80d76e40a61d8fa3324: RISC-V: Adjust expand_cond_len_{unary,binop,op} api
  # a1e5fd2c9adc35ef435dcc96991320d69453919a: RISC-V: Add conditional autovec convert(INT<->INT) patterns
  # 75a243c7c7c7efa9f12038480b46260ada739202: RISC-V: Add conditional autovec convert(FP<->FP) patterns
  # 258af9c7004cdc7963f783dd510404e79f0b5362: RISC-V: Add conditional autovec convert(INT<->FP) patterns
  # a7d052b3200c7928d903a0242b8cfd75d131e374: RISC-V: Support FP MAX/MIN autovec for VLS mode
  # d99a868a9b100ab5a4b270a1acece60b5b6153a3: RISC-V: Support FP16 for RVV VRGATHEREI16 intrinsic
  # 6f94ef6c86074a8348ec21d8aade04ce67b4e292: RISC-V: Fix Dynamic LMUL compile option
  # 509c10a62546b9b3430040e455b7258322a024e6: RISC-V: Export functions as global extern preparing for dynamic LMUL patch use
  # a7b048c0f42198a0f8d4244f1bd25211cf48383f: RISC-V: Support FP SGNJ autovec for VLS mode
  # fba0f47e4617e164716d3bce587fc6948088e225: RISC-V: Emit .note.GNU-stack for non-linux target as well
  # e87212ead5e9f36945b5e2d290187e2adca34da5: RISC-V: zicond: Fix opt2 pattern

  {
    # Performance patch
    # riscv: xtheadbb: Enable constant synthesis with th.srri
    rev = "af5cb06ec17780736749ed51cfc6dfad9397156c";
    hash = "sha256-jwhQBpMWcglRyFvZJjeKIR9eumB/sv+8Nw0K2gCqGzQ=";
  }

  # c85db606d46774283ca4ec037dc3051719828f41: RISC-V: Add Types to Un-Typed Pic Instructions
  # decbf9ec81f33052be12296b89cd86ea65ae10da: RISC-V: Add Types to Un-Typed Risc-v Instructions
  # fbc01748ba46eb26074388a8fb7b44d25a414a72: RISC-V: Expose bswapsi for TARGET_64BIT

  {
    # Performance patch
    # riscv: Synthesize all 11-bit-rotate constants with rori
    rev = "102dd3e8067f12beee1b8b0bec6848733d107aee";
    hash = "sha256-tanjVHf1Xq/vBWITGGHKwI42lsYp6OEKUZ26WbOAE+o=";
  }

  # ce65641354d98fc80912d5516b7fea87c344c2cc: RISC-V: Fix Zicond ICE on large constants
  # 254100a9a003a16255a58eec3fa24168e6dc7124: RISC-V: typo: add closing paren to a comment
  # c1597e7fb9f9ecb9d7c33b5afa48031f284375de: RISC-V: Add conditional sqrt autovec pattern
  # 94a4b93292f8ab19910c844bb9b63e4a68b55d33: RISC-V: Part-1: Select suitable vector registers for vector type args and returns
  # fdd59c0f73e9e681cd5f4d0eee2dd58d60d8dbe1: RISC-V: Part-2: Save/Restore vector registers which need to be preversed
  # 4abcc5009c1ad852e235f368f535c0bf6bfa7697: RISC-V: Part-3: Output .variant_cc directive for vector function
  # 9ee40b9a7bee83394fc7ba6fef71cb76d91b49c8: RISC-V: Keep vlmax vector operators in simple form until split1 pass
  # ee21f79f72980732214156bae2eb5daf7e089bda: RISC-V: Remove unreasonable TARGET_64BIT for VLS modes with size = 64bit
  # 1b4c70d4271a00514ae20970d483c3b78d9d66ef: RISC-V: Fix VSETVL PASS AVL/VL fetch bug[111295]
  # 6b96de22d6bcadb45530c1898b264e4738afa4fd: RISC-V: Fix incorrect mode tieable which cause ICE in RA[PR111296]
  # af88776caa20342482b11ccb580742a46c621250: RISC-V: Add support for 'XVentanaCondOps' reusing 'Zicond' support
  # 572abb52f5761a647035ee39d0e443c1c3622e75: RISC-V: Remove incorrect earliest vsetvl post optimization[PR111313]
  # 6aba1fa7a4ceaf66adc587da23834d1f317f871d: RISC-V: Add VLS mask modes mov patterns
  # f9cb357ae962ba2922b8507f4d96227780a063b9: RISC-V: Fix incorrect nregs calculation for VLS modes
  # a0e042d61dadc6bdcbeaa3b712b7a83415a12547: RISC-V: Suppress bogus warning for VLS types
  # 0c37fef39fa0a8f77ea4fc67d1bbf5067d4bddb9: riscv: bitmanip: Remove duplicate zero_extendhi<GPR:mode>2 pattern

  {
    # riscv: thead: Fix mode attribute for extension patterns
    rev = "0e25761b373f075a41d43b9462366a653dbf1121";
    hash = "sha256-u38nFdQWUvchckcxDzOyZPSmBb7Fo2hAl5zs9JOhaaA=";
  }
  {
    # IMPORTANT
    # riscv: xtheadbb: Fix extendqi<SUPERQI> insn
    rev = "d8bdc978dc9cd4a6210997edacedb954375af70d";
    hash = "sha256-DN/kV48Vk0Tvz6RzjLCFpEFOaRJLM23ToEQnGF0vilw=";
  }

  # df9a25384e6c484643b48b59b4e6e07504889b61: RISC-V: Fix VLS floating-point operations predicate
  # 0d50facd937bda26e3083046dc5dec8fca47e1e6: RISC-V: Fix dump FILE of VSETVL PASS[PR111311]
  # e390872aebcfebb7c9bc95d8fb7e44f2bec996d3: RISC-V: Avoid unnecessary slideup in compress pattern of vec_perm
  # 108779056eb4b56e715a094fac48a699d2dc91b3: RISC-V: Expand fixed-vlmax/vls vector permutation in targethook
  # 4ab2520ec424fa097ec839f2cde33522b220e93a: RISC-V: Add missing VLS mask bool mode reg -> reg patterns
  # d05aac047e0643d5c32b706c4c3b12e13f35e19a: RISC-V: Add VLS modes VEC_PERM support[PR111311]
  # 7f9083ffe262cb14c49d042fc6363514badea6cb: RISC-V: Use dominance analysis in global vsetvl elimination
  # 48d4ab698036de859e194edc037faed2ef9b58a5: RISC-V: Remove redundant functions
  # 88a0a883960910530bfefa750461168f539f4a00: RISC-V: Enable RVV scalable vectorization by default[PR111311]
  # aa512cc0146d1be957ccc35a8f4a45ebad0de598: RISC-V: Update Types for Vector Instructions
  # d8751d9e32214380e6fdbb9e47f13192cc899469: RISC-V: Add Types for Un-Typed zc Instructions
  # 4074aede45e3d8fbdb8fe28e1f084e869d3546f5: RISC-V: Add Types to Un-Typed Zicond Instructions
  # 25c30049f5896ef6312cf45a1c058ee3e3079e6a: RISC-V: Update Types for RISC-V Instructions

  {
    # RISC-V: Add Types to Un-Typed Thead Instructions
    rev = "316d57da5bb9205b946afc56d78582fee874e4b5";
    hash = "sha256-eqx7DW2CMBYE749mA+B05gCSZ/cA0/7OSQ6BmEEaTY4=";
  }

  # 721021a18e2ac004140ddd93113c11075ea890c6: RISC-V: enable muti push and pop for Zcmp when shrink-wrap-separate is ineffective
  # c1e4efd8ae3488c5a2c11ac42d4670b67e1f7bf4: RISC-V: Add vcreate intrinsics for RVV tuple types
  # b90a4c3dd502974f352084c23a6cdfd767e1340b: RISC-V: Elimilate warning in class vcreate
  # df48285b2484eb4f8e0570c566677114eb0e553a: riscv: Add support for strlen inline expansion
  # 949f1ccf1ba9d1f33ca3809424e97429b717950a: riscv: Add support for str(n)cmp inline expansion
  # af6d089b4ded96b529c7063bd7873e4630a3a64d: RISC-V: Support Dynamic LMUL Cost model
  # 75f069a6403b5d4217fb5b654a9c656b4dca9dc1: RISC-V: Remove unused structure in cost model
  # 360c8cad6a727d5afd43017ca1ce9a84c6db61c5: RISC-V: Finish Typing Un-Typed Instructions and Turn on Assert
  # 701b9309b687ed46188b9caeb7d88ad60b0212e5: RISC-V: Support VECTOR BOOL vcond_mask optab[PR111337]
  # feb23a37e6142016c3463aa3be3e900d45bc3ea5: RISC-V: Bugfix PR111362 for incorrect frm emit
  # 6737a51728881790b54e490494b468267f04a608: RISC-V: Support cond vfsgnj.vv autovec patterns
  # 842e4d51c11ff5ac842d925e73f4094901f4a9be: RISC-V: Support cond vnsrl/vnsra autovec patterns
  # c0a70df6403397a69204cba1df82114a9ddf7076: RISC-V: Support cond vmulh.vv and vmulu.vv autovec patterns
  # d03773c8efea216c67b3ac8870fcac2662c522fe: RISC-V: Support VLS modes VEC_EXTRACT auto-vectorization
  # 7c4f6ebe54f4da0097acd07f41782ff6cc39e9a4: RISC-V: Format VSETVL PASS code
  # 53ad1bd520759580b9a5cc590a81a1a30b9e2e28: RISC-V: Fix ICE in get_avl_or_vl_reg
  # 8ebb02dd6c9d190c84bf40259201e8e7327291f8: RISC-V: Support VLS modes mask operations
  # 14c481f7fc0a90de7e5b7aec109e12b7b5220d65: RISC-V: Cleanup redundant reduction patterns after refactor vector mode
  # 6223ea766daf7c9155106b9784302442e2ff98d3: RISC-V: Refactor vector reduction patterns
  # 68cb873fd360dbb64f2a6dfb28e79399ff99d07d: RISC-V: Support combine extend and reduce sum to widen reduce sum
  # e6413b5dc5b786391802368207ec86945eef2ae0: RISC-V: Refactor expand_reduction and cleanup enum reduction_type
  # dd6e5d29cbdbed25e4e52e5f06b1bfa835aab215: RISC-V: Fix using wrong mode to get reduction insn vlmax
  # d7b6020276a843e97f6135259b4ab3b53a5850e2: fix PR 111259 invalid zcmp mov predicate.
  # 23224f06c980533d474b3a29d2437e5537916fc0: RISC-V: Support FP SGNJX autovec for VLS mode
  # a1751681867a3ce760ea6924c3c632f1b81db97e: RISC-V: Make bit manipulation value / round number and shift amount types for builtins unsigned
  # 9882b81410f247604fbfd5883894a96127f461ac: RISC-V: Make SHA-256, SM3 and SM4 builtins operate on uint32_t
  # 86451305d8b2a25e7c6ea6c2f1ee69c419cba3ef: RISC-V: Expand VLS mode to scalar mode move[PR111391]
  # 5761dce5d71e3dd013ce4db4c5e9b5e49c6cba23: RISC-V: Remove redundant codes of VLS patterns[NFC]
  # fafd2502c5416fe4f69daf13224ab1efbf256a1c: RISC-V: Support VLS modes reduction[PR111153]
  # 4e679b9ceac22cf369a57ebb4f9175c1d02b2466: RISC-V: Remove autovec-vls.md file and clean up VLS move modes[NFC]
  # 1f9bf6f372da48c75d42f2669ba92f3fd4370fda: RISC-V: Support VLS modes vec_init auto-vectorization
  # 8fbc0871da26fac1668ba939f4492876794734ac: RISC-V: Fix VSETVL PASS fusion bug
  # 71e0f38dcb73e4cdfe61fc28821551b325320302: RISC-V: Support VLS reduction
  # 4260f4af4dde6dbf85c28da7e8aaf03985b3d171: RISC-V: Remove redundant vec_duplicate pattern
  # 28f16f6d9b4fc1391275f4ba24dc2019ee64fc22: RISC-V: Bugfix for scalar move with merged operand
  # aad0c3e197f21fac169917e187c61764a8a3ff3d: RISC-V: Support VLS mode for vec_set
  # f45cca26263c3563e9db15e0ba64d4a114316808: RISC-V: Add builtin .def file dependencies
  # 7f4fc87086b5ad57edaaf628ba6cb92649d14453: RISC-V: Fix typos on comments (SVE -> RVV)
  # 95d2ce05fb32e663bc7553438ccee7f4d4e36a35: RISC-V: Refactor and cleanup fma patterns
  # 8e09480193ef870745f91f48a44ed0307757fb3c: RISC-V: Support integer FMA/FNMA VLS modes autovectorization
  # 28569e79e34ac8760833640abcb21c5b36add2b3: RISC-V: Support VLS floating-point FMA/FNMA/FMS auto-vectorization
  # 5b945243c77e3ecd8dfab4b8b44f21daa3de8fe1: RISC-V: Support VLS unary floating-point patterns
  # e1817426e85f2181a97ac4f71a87baaa9645b1b5: RISC-V: Fix RVV can change mode class bug
  # 5b554c559d0103bfc1a68777907945ec3035a2bd: RISC-V: Fix --enable-checking=rtl ICE on rv32gc bootstrap
  # bea89f78f2f02a0dabe4993ccf1c7cdb48be040b: RISC-V: Extend VLS modes in 'VWEXTI' iterator
  # d024a31a09d18d2586769602205a60ff3afe568c: RISC-V: Fixed ICE caused by missing operand
  # 264ff8182580c57f77c6bc60381cfb2c3842b46c: RISC-V: Reorganize and rename combine patterns in autovec-opt.md
  # c3d2b6bc913803d3eccacb9e354f37eef1cee212: RISC-V: Fix Demand comparison bug[VSETVL PASS]
  # b34397857adb7b3ae72e2701879bcb4e19165d63: RISC-V: Support VLS floating-point extend/truncate
  # 66c13521f56fee1ec6db7ddd9fb053cf852a84a1: RISC-V: Support VLS INT <-> FP conversions
  # 4e35cf2ea1fbcdf798b37b2e00d9977683b17b8a: RISC-V: Rename predicate vector_gs_scale_operand_16/32 to more generic names
  # 47065ff360292c683670efb96df4b61f57dc1d9a: RISC-V: Optimized for strided load/store with stride == element width[PR111450]
  # 38048fc501b3d53fc38c701ae4625024cd93bd1d: RISC-V: Fix SUBREG move of VLS mode[PR111486]
  # 9b5b2c9f95056f97cf95f0e8d970015aa586497b: RISC-V: Enable undefined support for RVV auto-vectorization[PR110751]
  # 5ff4431675c0d0c800d4a983254e94a6b401c14d: RISC-V: Adjusting the comments of the emit_vlmax_insn/emit_vlmax_insn_lra/emit_nonvlmax_insn functions
  # 94982a6b9cf4c61357eabebd14866969ef4c2b6e: RISC-V: Support VLS mult high
  # 1df81f01e45c8b16cf3995cf63c766124a0729ea: RISC-V: Add VLS integer ABS support
  # 8bf5636e4fca947527a302813fdf08e1bbc82fa3: RISC-V: Support ceil and ceilf auto-vectorization
  # e99cdab81bd3df7979d9b6917c06c80d73dff1e0: RISC-V: Split VLS avl_type from NONVLMAX avl_type
  # 5bc8c83d30b852a09eaf604464711054c11d9a51: RISC-V: Support combine cond extend and reduce sum to widen reduce sum
  # 0ed05db7cee8f92604b5d7761713b7a7161e0db0: RISC-V: Optimization of vrgather.vv into vrgatherei16.vv[PR111451]
  # 8a87ba0b4fe72acbf34e48898652d0f78b9e235e: RISC-V: Add VLS conditional patterns support
  # 6eb55cab2956d130d2e18c895e4f67fc9381199e: RISC-V: Remove @ of vec_duplicate pattern
  # dc607a0d861c2d6e3067c6b2b5a106d07bba1980: RISC-V: Add VLS widen binary combine patterns
  # 4c496020764057453415f1ae599950724ec0e871: RISC-V: Refine the code gen for ceil auto vectorization.
  # 83441e756734cd86b017e73a396ad8a0155a1bd1: RISC-V: Suport FP floor auto-vectorization
  # 648347be1fdaaeb866607dbac02fba97d62b839b: RISC-V: Add VLS unary combine patterns
  # e4aa1a49010fb55f3e90731464d21b05baeb6855: RISC-V: Support full coverage VLS combine support
  # deb844c67f1e2b116518f9742a6acbe6f19ea28f: RISC-V: Fix fortran ICE/PR111546 when RV32 vec_init
  # 9d5f20fc4a6b3254d2d379309193da4be2747987: RISC-V: Fix AVL/VL bug of VSETVL PASS[PR111548]
  # c983744307527793b09138420553bd18210c08ef: RISC-V: Rename rounding const fp function for refactor
  # e2023d2d5ff2e703a025ab5a8d12e27d96efd002: RISC-V: Support FP nearbyint auto-vectorization
  # e4cf5f54cac52f937b7929ba2fac71c059a77f7a: RISC-V: Support FP rint auto-vectorization
  # d324984f9fa50e0055e3818f29d8c019df08cecf: RISC-V: Support FP round auto-vectorization
  # 1c4ca595d817ae1e1139145f86cfb58899d376bd: RISC-V: Support FP trunc auto-vectorization
  # fcbbf158ee90400877f81185bb40b5870dca1558: RISC-V: Support FP roundeven auto-vectorization
  # 110ffb2d8d3a64b32dd56ac995c2e30e8f64d4dc: RISC-V: Bugfix for RTL check[PR111533]
  # 88d8829e4f435bfc844db5a9df730e20faf7c2c7: RISC-V: Support {U}INT64 to FP16 auto-vectorization
  # 51d09e67df52164c2025afa24531cf79820ff4c8: RISC-V: Replace not + bitwise_imm with li + bitwise_not
  # 44efc743acc01354b6b9eb1939aedfdcc44e71f3: Fix INSN costing and more zicond tests
  # d6fe757b39297c1c0cf243acee860d045726c184: RISC-V: Add type attribute in *<optab>_not_const<mode> pattern
  # 04e772bbdcbc1cea67cd498c1a45e4360bf5f8e1: RISC-V: Use safe_grow_cleared for vector info [PR111649]
  # f416a3fdbee32ae12b055b8e3e4ee11c3df7c117: Make riscv_vector::legitimize_move adjust SRC in the caller.
  # e4a4b8e983bac865eb435b11798e38d633b98942: RISC-V:Optimize the MASK opt generation
  # 9464e72bcc9123b619215af8cfef491772a3ebd9: cpymem for RISC-V with v extension
  # 0bda3f25147203d04724fa375daf3d1110da5c3f: RISC-V: Remove @ of vec_series
  # f05b68b8f009c644521d6ff2fde940342029b830: RISC-V: Update comments for FP rounding related autovec
  # c1bc7513b1d76812752f70cc2ef7e0173dfb0014: RISC-V: const: hide mvconst splitter from IRA
  # a809a556dc0792a34fca7b754ff96ea3ea7d1e7f: RISC-V: Bugfix for legitimize address PR/111634
  # b20e59f49b51b7baf05e1b727be5da947e617496: RISC-V: add static-pie support
  # 841668aa02a05deca06e68a5931408d970f5c8b2: RISC-V: Refine bswap16 auto vectorization code gen

  {
    # THead: Fix missing CFI directives for th.sdd in prologue.
    rev = "578aa2f80056175b902671b30cc77e38945e3ba4";
    hash = "sha256-Wt7sa/jJ66NSyzjTVsSO675M4CSEaPawMFLQ1y+lXWo=";
  }

  # dee55cf59ceea989f47e7605205c6644b27a1f78: RISC-V: Support movmisalign of RVV VLA modes
  # f8498436d6dd77f3c993e68536a3f6864793829c: RISC-V: Add initial pipeline description for an out-of-order core.
  # 5255273ee8b14ea565eb43f067a86370d25df114: RISC-V: Add VLS BOOL mode vcond_mask[PR111751]
  # 71f906498ada9ec2780660b03bd6e27a93ad350c: RISC-V: far-branch: Handle far jumps and branches for functions larger than 1MB
  # d1e5566685ac9bf8271ccf39d69e81e7ba9ae70d: RISC-V: Support FP lrint/lrintf auto vectorization
  # f6c5e247b2913f0a7b3be986fe96afbed29c1d5e: RISC-V: Fix incorrect index(offset) of gather/scatter
  # 400efdddf3d8499d7c7969d26bedb537a625c070: [PATCH v4 1/2] RISC-V: Add support for XCVmac extension in CV32E40P
  # 5ef248c15ec3490f4b98cda4bc27a667a8cf8206: [PATCH v4 2/2] RISC-V: Add support for XCValu extension in CV32E40P
  # 9452d13b1afb295c3764bb1134f3ac1a1d804989: RISC-V: Refactor riscv_option_override and riscv_convert_vector_bits. [NFC]
  # faae30c49560f1481f036061fa2f894b0f7257f8: RISC-V: Extend riscv_subset_list, preparatory for target attribute support
  # a3e50ee96dc3e25ca52608e58c4e653f9976cb4e: RISC-V Adjust long unconditional branch sequence
  # 06f36c1d83a7e8b6da47d3c5b325a963baee6aab: RISC-V: Add TARGET_MIN_VLEN_OPTS to fix the build
  # d6b7fe11efe9c7bf44dfe57ded6c86df5ec7e2c7: RISC-V: Support FP irintf auto vectorization
  # 2cc4f58a7c12c9b7a82194279c201ebe389f6dba: RISC-V: Support FP lround/lroundf auto vectorization
  # 51f7bfaac74e1311e35555c95ac056637373f112: RISC-V: Support FP lceil/lceilf auto vectorization
  # 8f52040e5f08ae0bbc63ee49c07212f07997a59f: RISC-V: Support FP lfloor/lfloorf auto vectorization
  # 0f40e59f193f96f1bb0fa3e1c2d160567ed29b32: RISC-V: Fix the riscv_legitimize_poly_move issue on targets where the minimal VLEN exceeds 512.
  # 78dd49f387c515a6b28ef3fcb989605a168ff752: RISC-V: Remove redundant iterators.
  # 77faa3e198a6b6f9a55a8010bef1c394d2e3cf8e: RISC-V: Fix vsingle attribute
  # a5fe9f063de64aa2755c9ae9e90ed1ff64ee0f47: RISC-V: Use VLS modes if the NITERS is known and smaller than VLS mode elements.
  # 328745607c5d403a1c7b6bc2ecaa1574ee42122f: RISC-V: NFC: Move scalar block move expansion code into riscv-string.cc
  # b25b43caf2503a160a928d61318dff837efabd97: RISC-V: Fix unexpected big LMUL choosing in dynamic LMUL model for non-adjacent load/store
  # cf7739d4a6ba0b88068877d14439436c22b57630: RISC-V: Enable more tests for dynamic LMUL and bug fix[PR111832]
  # c51040cb43404f411d4234abe7cf1a238b6e0d34: RISC-V: Optimize consecutive permutation index pattern by vrgather.vi/vx
  # 29331e72d0ce9fe8aabdeb8c320b99943b9e067a: RISC-V: Refactor and cleanup vsetvl pass
  # f0e28d8c13713f509fde26fbe7dd13280b67fb87: RISC-V: Fix failed hoist in LICM of vmv.v.x instruction
  # 4fd09aed384df6acb141ee1f319a500c239626a4: RISC-V: Rename some variables of vector_block_info[NFC]
  # 66c26e5cfdf65ae024fcb658629dc5a9a10f3f85: RISC-V: Support partial VLS mode when preference fixed-vlmax [PR111857]
  # 85858c71a89dfe0d9e7d96fc9f7bdf1a18df65ba: RISC-V: Bugfix for merging undefined tmp register in math
  # 75322a6d0cf6d611973d3730fd888ce37407c41f: RISC-V: Fix AVL_TYPE attribute of tuple mode mov<mode>
  # 4cd4c34acda411e4b3bd03a43d68921f38ce9822: RISC-V: Fix typo[VSETVL PASS]
  # 996785db50a4e2df0b0e892cfe39dcf4130fb87d: RISC-V: Bugfix for merging undef tmp register for trunc
  # 0c4bd1321a6def5eb44c530e83b01a415633b660: RISC-V: Fix ICE for the fusion case from vsetvl to scalar move[PR111927]
  # 82bbbb73c67f79582d38a1aa63984987dcd0923a: RISC-V: Add popcount fallback expander.
  # 7b2984ad76cac67b962eeb39eab62b6dacf7845e: RISC-V: Fix ICE of RTL CHECK on VSETVL PASS[PR111947]
  # b44d4ff7b43ff6a34d5c074c7ade03c4a38974fa: RISC-V: Fix ICE of RVV vget/vset intrinsic[PR111935]
  # 5e71499275525283f2255b4574599316b7ae8a78: RISC-V: Change MD attribute avl_type into avl_type_idx[NFC]
  # 8064e7e2b5033073911c8d669638a7c61167c0e5: RISC-V: Export some functions from riscv-vsetvl to riscv-v[NFC]
  # e37bc2cf00671e3bc4d82f2627330c0f885a6f29: RISC-V: Add AVL propagation PASS for RVV auto-vectorization
  # 446efa52a8cadb56d1d994da5c4de394efaff462: RISC-V: Move lmul calculation into macro
  # 9c032218107675291d05be28f8c08a32e3a17b95: RISC-V: Add rawmemchr expander.
  # 7bcdb777e6a0d1a0159f25616c5d8e35e7cb5fb6: [PATCH] RISC-V: Fix wrong tune parameters on int_div
  # b8b63e87669ef835e367f7b8ad437c6d1a6791f1: RISC-V: Fix one range-loop-construct warning of avlprop
  # eb1cdb3e43f43a7311c324e0acf85ceaf79314e5: RISC-V: Fix bugs of handling scalar of SEW64 vx instruction in RV32
  # 5ee894130fd0103b3d95fbca19ea1acc4e68d828: RISC-V: Add the missed combine of [u]int64 -> _Float16 and vcond
  # 5de05bdaa7130a2fb14b90ef4e5669f418642a3c: RISC-V: Add vector fmin/fmax expanders.
  # 2d65622fda5cbfdc5f9a12822af6e54336f37cb3: riscv: thead: Add support for the XTheadMemIdx ISA extension
  # 60d6c63df00e047ebee74b7bad9b076e55e50f28: riscv: thead: Add support for the XTheadFMemIdx ISA extension
  # b93fddba394cf19d8a9fd1739314b6c57425be01: RISC-V: Let non-atomic targets use optimized amo loads/stores
  # 084ea7ea5aa9054569c6bbb980ba1cfa59b3e5f1: RISC-V: Support vundefine intrinsics for tuple types
  # 7560f2b4e387ef43ef45ee9fb06efbad6ca0fedf: RISC-V: fix TARGET_PROMOTE_FUNCTION_MODE hook for libcalls
  # 274c904471a11c493353a8b4f6e50d8fb7fef906: RISC-V: Use riscv_subword_address for atomic_test_and_set
  # 1a0af6e5a99cd895a663f0221c25321ae802413f: RISC-V: Allow dest operand and accumulator operand overlap of widen reduction instruction[PR112327]
  # d508a94167c186b2baacc679896e2809554c0b99: RISC-V: Support vcreate intrinsics for non-tuple types
  # 4ea36076d66eea0f5ccb9cbb9774028a667e122c: RISC-V: Fix redundant attributes
  # f6284ef38701920865de3c9e18bb3f6068fde4d1: RISC-V: Fix bug of AVL propagation PASS
  # 81a81abec5c28f2c08f986f1f17ac66e555cbd4b: RISC-V: Refactor prefix [I/L/LL] rounding API autovec iterator
  # a29ce9bf8d87e632840bacacb663ece90a5c7710: RISC-V: Add check for types without insn reservations
  # 1027c1c02069ef8310256d8d5521cd4703223327: Revert "RISC-V: Refactor prefix [I/L/LL] rounding API autovec iterator"
  # 5ea3c039b784b0676323243940fd9916b1f6d540: RISC-V: Fix redundant vsetvl in fixed-vlmax vectorized codes[PR112326]
  # c3847ca0571e5ace2f1d6e3baed67fee13d9f93d: RISC-V: Refactor prefix [I/L/LL] rounding API autovec iterator
  # 8d22ac6a18cf542cd541c06b2a7df8fdd293946d: RISC-V: Remove HF modes of FP to INT rounding autovec
  # 53010f6ff6dfbf7bcd40055cf00d9f8e653cc641: RISC-V: Fix bug of vlds attribute
  # 9acea4376fd98696ba51e59f417c94911a4d8248: RISC-V: Support FP rint to i/l/ll diff size autovec
  # 1a55724f7870719d51a7acc0ccada254fcfd1cda: RISC-V: Implement RESOLVE_OVERLOADED_BUILTIN for RVV intrinsic
  # 0c42741ad95af3a1e3ac07350da4c3a94865ed63: internal-fn: Add VCOND_MASK_LEN.
  # 418bd6427e3b7e06d031fef037bbc36d529be23f: RISC-V: Early expand DImode vec_duplicate in RV32 system
  # ffa0a73e152807a57fe4159a0d53ede25812fd1f: RISC-V: Support FP round to i/l/ll diff size autovec
  # fd56a9cc5e37bb51c725a83aa44de34b9c238e78: RISC-V: Support FP ceil to i/l/ll diff size autovec
  # f1e084c6c3ef1d1233e35823dacfdf9cee722430: RISC-V: Enhance AVL propagation for complicate reduction auto-vectorization
  # 71b1efd910d47362558defc31b92fc4cc80c0ec6: RISC-V: Fixed failed rvv combine testcases
  # 63dc25eda71c72586b81cb1cb22e1971ba09a3d1: RISC-V: Support FP floor to i/l/ll diff size autovec
  # f9148120048f4508156acfcd19a334f4dcbb96f0: RISC-V: Normalize user vsetvl intrinsics[PR112092]
  # 80f466aa1cce2759112c8b0121964d1bbb158f25: RISC-V: Eliminate unused parameter warning.
  # c2f2351494794a86360dfc7db97848de4638f9f6: RISC-V: Fix VSETVL VL check condition bug
  # 8cf7b936d44c37558b518cbbea4b21ed502b651e: RISC-V: Removed unnecessary sign-extend for vsetvl
  # 5b6f4e6f05d5ef64ecb918db02f5b8149cb2b0a0: RISC-V: Fix dynamic LMUL cost model ICE
  # 5e9fb75840e10bff5850ee610ca94c889c9a78e5: RISC-V: Fix the illegal operands for the XTheadMemidx extension.
  # 177ca16b615d285f419cf2ab0337bc01f7be09db: RISC-V: Refine frm emit after bb end in succ edges
  # 1fa7dde8d680f28ed66db47309ed5e8f2789054d: RISC-V: Move cond_copysign from combine pattern to autovec pattern
  # e7f4040d9d6ec40c48ada940168885d7dde03af9: RISC-V: Support vec_init for trailing same element
  # 040e5b0edbca861196d9e2ea2af5e805769c8d5d: Revert "RISC-V: Support vec_init for trailing same element"
  # 072a409803a270fd3e8f8aa1b4f9bb8e83789b85: RISC-V: Robustify vec_init pattern[NFC]

  # {
  #   # IMPORTANT??
  #   # RISC-V: XTheadMemPair: Fix missing fcsr handling in ISR prologue/epilogue
  #   rev = "b70ad8c19aa8be672cdba6afe9cbab2d1254d127";
  #   hash = "sha256-syy+IsSbwinbVIexlehdAzcAC5M/zXtD2raGfXtNuoY=";
  # }

  # 6aaf72ff533550dad68362e8da308b480a9e0f30: RISC-V: Add combine optimization by slideup for vec_init vectorization
  # c8bff398cf6c67753843fa39b3393d4ff3b15bcf: RISC-V: Fix indentation of "length" attribute for branches and jumps
  # 29d3e1892ebec8abce784077d1f1a3e21d763218: mode-switching: Pass set of live registers to the needed hook
  # 93d65f39bc5c3dc318deb6da0e3633f3a4c6c34d: mode-switching: Pass the set of live registers to the after hook
  # 5dfa501d2f2e58f2448466c75d6dbebce669638f: RISC-V: Support FP l/ll round and rint HF mode autovec
  # ed3ce1c3bbab096891012968cd6b938a45d83969: RISC-V: Optimize combine sequence by merge approach
  # 2020bce38cf2e02cbd1097faa8f1fd6586364a7e: RISC-V: vsetvl: Refine REG_EQUAL equality.
  # d85161a73b9bdd382e62ca1ba3f9f962971a9695: RISC-V: Disallow RVV mode address for any load/store[PR112535]
  # 319bbb3693787a5493cc46793804231d1670cdee: RISC-V: Refine the mask generation for vec_init case 2
  # e9fc877f6d4b89940dbfb9f18549b82720d0d992: RISC-V: Support trailing vec_init optimization
  # fb4e2c1648ea4cf1b1d34205a1da519702328d92: RISC-V: elide unnecessary sign extend when expanding cmp_and_jump
  # d1189ceefc1da1515e039c9cfd2f5a67b5820207: RISC-V: fix vsetvli pass testsuite failure [PR/112447]
  # defa8681d951c6d6c43c71e3636ce4db9de04a28: RISC-V: Save/restore ra register correctly [PR112478]
  # 5f1105612b592650566a54846dd5f9ccdfed01a9: RISC-V: Implement target attribute
  # a671095c208c7cf5eb934b6a31bd9fb6f6640a6b: RISC-V: Change unaligned fast/slow/avoid macros to misaligned [PR111557]
  # 07fe07935ddb9228b4426dbfdb62d4a7e7337efe: RISC-V: Refactor RVV iterators[NFC]
  # 5f4499606ea6ab49bec30e83209db71e52d0b267: RISC-V: Fix mismatched new delete for unique_ptr
  # af7fa3135b6b046fe3ba869993221042a65301eb: RISC-V: Fix bug of tuple move splitter
  # 07da9b7f13c92a21d12172a9df85ad762591b998: [committed] Fix missing mode on a few unspec/unspec_volatile operands
  # c177f28d601408180fdb2db0d5ba89d53b370b5e: [committed] RISC-V: Infrastructure for instruction fusion
  # bb6028b40bf19db1b42bf8c68c35eb82f40043b7: RISC-V: Optimize constant AVL for LRA pattern
  # e6269bb69c0734a5af716bfbded3621de6ca351d: RISC-V: Implement -mmemcpy-strategy= options[PR112537]
  # b3677563cd3ebc20c186650ff94171d321a52b30: RISC-V: Disallow 64-bit indexed loads and stores for rv32gcv.
  # a27f587816b6c3b8e46e4e46777abdc915ae00aa: RISC-V: Fix intermediate mode on slide1 instruction for SEW64 on RV32
  # 8faae311a60a552ed3d506de28c50c77fa49b229: RISC-V: Disallow COSNT_VECTOR for DI on RV32
  # 3bb4000c5f5f70cf5cb651314a939f1cbc65046d: RISC-V: Reorder comment on SFB patterns
  # 9f5aa4e210cbcb621ead82f4b56482deaa548c13: RISC-V: Sanitise NEED_EQ_NE_P case with `riscv_emit_int_compare'
  # 04c9c27c6f34a1ce1cd4900ccc8dc2521852e8e6: RISC-V: Fix `mode' usage in `riscv_expand_conditional_move'
  # 00a3bd4ccae4f7a7fd1d76db325808129208986b: RISC-V: Avoid repeated GET_MODE calls in `riscv_expand_conditional_move'
  # 5a21d507561883460411921a291bfd50a9a1d429: RISC-V: Use `nullptr' in `riscv_expand_conditional_move'
  # 35bea66d367520e6f62fc723bca6bf9cb291e581: RISC-V: Simplify EQ vs NE selection in `riscv_expand_conditional_move'
  # c1e8cb3d9f9475bf99fba6f12fc9d226a7ae5f57: RISC-V: Rework branch costing model for if-conversion
  # db9d825b212994e89dabc710c61944552eb1fe90: RISC-V: Also invert the cond-move condition for GEU and LEU
  # cfec7fc11017f964b9b5ece5692e30c2d3f0e7a1: RISC-V: Avoid extraneous EQ or NE operation in cond-move expansion
  # eeb112542f9a93974ee17d582ba649c50af95c86: RISC-V: Also accept constants for T-Head cond-move comparison operands
  # 566a2b3baa342c7e00b7de7112d92637baba9c75: RISC-V: Also accept constants for T-Head cond-move data input operands
  # 413ebfd660793ce16f0e6173b38ad91cd2f0cf64: RISC-V: Fold all the cond-move variants together
  # 4daeedcbaf5d596d00004ca6ec4835dc57bdd02a: RISC-V: Implement `riscv_emit_unary' helper
  # dc95b338c04281224f5c9c058acec170e4008b5c: RISC-V: Add `movMODEcc' implementation for generic targets
  # 40b243c4701e564d317ab35af7805ddd21a3e08f: RISC-V: Add `addMODEcc' implementation for generic targets
  # 7e126d8d0fbe5677070f02c32a1425849ce36298: RISC-V: Only use SUBREG if applicable in `riscv_expand_float_scc'
  # 37ff43c27344784caed28778fb847244a49644bd: RISC-V: Also allow FP conditions in `riscv_expand_conditional_move'
  # 2f825475b2a64fce716a2628bdc631491dd3a1e1: RISC-V: Provide FP conditional-branch instructions for if-conversion
  # 2f0c6252f4e697e187a35427b4b78ba55a830b3d: RISC-V: Avoid extraneous integer comparison for FP comparisons
  # 9a1a2e9857b144872798973fc83ef6e8648cfb08: RISC-V: Handle FP NE operator via inversion in cond-operation expansion
  # ae098dfeeefe74968530289d9f5e3ae6f78097bb: RISC-V: Remove duplicate `order_operator' predicate
  # d13e59b86c5cbeec6135ada3f6dc983289cac610: RISC-V: Fix permutation indice mode bug
  # de6f3e12bd188fee30bc79a5e323e16e0dbbe8ca: RISC-V: Fix incorrect use of vcompress in permutation auto-vectorization
  # 97ddebb6b4f6b132b0a8072b26d030077b418963: RISC-V: Refine some codes of riscv-v.cc[NFC]
  # 35a688f434159a923420310860c5bc721e29a741: RISC-V: Disable AVL propagation of vrgather instruction
  # ef296fb37cac12a5a10e83c16ae021a624e1238c: RISC-V: Add wrapper for emit vec_extract[NFC]
  # af7a422da457aa13df8eb1feb601dffafb76ed7c: RISC-V: Disable BSWAP optimization for NUNITS < 4
  # d83013b88b74d1f1f774d94ca950d3b6dba26e5d: RISC-V: Optimize a special case of VLA SLP
  # aea337cf740ec33022f3cabfa7dd4333d5ba78ee: RISC-V: Fix inconsistency among all vectorization hooks
  # 4e88c4809a3e050fccd21a4fd6248160d2d0376d: RISC-V: Fix typo
  # ec84a1e7a18f65858a1b129ff80cb32e64cf151b: RISC-V: Disable AVL propagation of slidedown instructions
  # 006e90e13441c3716b40616282b200a0ef689376: RISC-V: Initial RV64E and LP64E support
  # e02772344815e505c8c146ce48b1427dc9e9d190: RISC-V: Remove incorrect function gate gather_scatter_valid_offset_mode_p
  # 9c16ca93641ad460a576a9ed7daf2aadf596193c: RISC-V: Fix VSETVL PASS regression
  # 9f3f0b829b62f11f350867d2350e2af8639ec890: RISC-V: Disallow poly (1,1) VLA SLP interleave vectorization
  # 25a51e98fdd504826a40775a5e5b9ffb336b5aa1: RISC-V: Bugfix for ICE in block move when zve32f
  # 73a63efcdae4b979b4a1dcff2da7d68b905453a0: RISC-V: Add explicit braces to eliminate  warning.
  # bdad036da32f72b84a96070518e7d75c21706dc2: RISC-V: Support highpart register overlap for vwcvt
  # 62685890d8861b72f812bfe171a20332df08bd49: RISC-V: Support highpart overlap for vext.vf
  # e65aaf8efe1900f7bbf76235a078000bf2ec8b45: RISC-V: Rename vconstraint into group_overlap
  # 8614cbb253484e28c3eb20cde4d1067aad56de58: RISC-V: Support highpart overlap for floating-point widen instructions
  # 5a35152f87a36db480693884dfb27ff6a5d5d683: RISC-V: Remove earlyclobber for wx/wf instructions.
  # 303195e2a6b6f0e8f42e0578b61f9f37c6250beb: RISC-V: Support widening register overlap for vf4/vf8
  # 923a67f17badcbe6e2b2e5d3570a265443258c8e: RISC-V: Fix VSETVL PASS regression
  # 4418d55bcd1b7e0ef823981b6a781d7de5c38cce: RISC-V: Support highpart overlap for indexed load with SRC EEW < DEST EEW
  # a23415d7572774701d7ec04664390260ab9a3f63: RISC-V: Support highpart register overlap for widen vx/vf instructions
  # e5bbeedcf7020dfa3870d11cf2b85bc048655698: RISC-V: Bugfix for legitimize move when get vec mode in zve32f
  # 1461b431da51f80c90c3bea03d587d76e3e50843: RISC-V: Fix incorrect combine of extended scalar pattern
  # 193ef02a7f4f3e5349ad9cf8d3d4df466a99b677: RISC-V: Improve style to work around PR 60994 in host compiler.
  # 7fa24687aa3a683fd105ce5ff6b176f48dca3b6c: Allow target attributes in non-gnu namespaces
  # d3544cea63d0a642b6357a7be55986f5562beaa0: RISC-V: Robostify the W43, W86, W87 constraint enabled attribute
  # 26b1599d83ddd5b5ac6fb845549e66acc45981f6: RISC-V: Refine riscv_subset_list::parse [NFC]
  # ba94969bad24d57895b02cc2d4663462f8fb5bc5: RISC-V: Add sifive-x280 to -mcpu
  # fc98a41c8def1cab4f9b8359be84e8623eab88e2: prefer Zicond primitive semantics to SFB
  # 9448428b6871a4f7cbc9a1971077c3f9f3742e0d: RISC-V: Update crypto vector ISA info with latest spec
  # 7804b4e24cd16283067225d4c2c4a4483a2b31bc: RISC-V: Remove earlyclobber from widen reduction
  # 27fde325d64447a3a0d5d550c5976e5f3fb6dc16: RISC-V: Support highest-number regno overlap for widen ternary
  # 018ba3ac952bed4ae01344c060360f13f7cc084a: RISC-V: Fix overlap group incorrect overlap on v0
  # 4ae5a7336ac8e1ba57ee1e885b5b76ed86cdbfd5: RISC-V: Rename and unify stringop strategy handling.
  # cdb34bf5dd10df967b7f72a502a48cc34e284ef0: RISC-V: Fix rawmemchr implementation.
  # 8b93a0f3eb46cbc4ba8eece8eba58aaade4399b6: RISC-V: Add blocker for gather/scatter auto-vectorization
  # 33c1f7233af84f003a574650d0f8878acb84cdf3: RISC-V: FAIL:g++.dg/torture/vshuf-v[2|4]di.C -Os (execution test) on RV32
  # 2e7abd09621a4401d44f4513adf126bce4b4828b: RISC-V: Block VLSmodes according to TARGET_MAX_LMUL and BITS_PER_RISCV_VECTOR
  # 8a5ef148bbab3b5397e293cbc28f6d6ebc5bb596: RISC-V: Remove useless modes
  # 056cce412862f8d9b56a40dfbcbc3f9fa7f92883: RISC-V: Add vec_init expander for masks [PR112854].
  # c9d5b46a25547035e381b0246de5cb553ca8b02d: RISC-V: Fix VSETVL PASS bug
  # db642d60ee81cd99d55f4e228d01de704b5b7cfa: RISC-V: Fix PR112888 ICE
  # 8c09c73adf4c537876e8ef418378d6581b768a64: RISC-V: xtheadfmemidx: Disable if xtheadmemidx is not available
  # abded9bf3e1ebc1789d47ac2c445f5b613981a0e: RISC-V: Fix AVL propagation ICE for vleff/vlsegff
  # 71a5ac6703d1b7a0409936fcdec4e592d7cc06b0: RISC-V: Support interleave vector with different step sequence
  # b241d91f1e344a7324f66b216f11b40bbb65cf2e: RISC-V: Remove redundant check of better_main_loop_than_p in COST model
  # 51b8259212791dbea846706bc5e9db5310f1fc10: RISC-V: Fix ICE for incorrect mode attr in V_F2DI_CONVERT_BRIDGE
  # 2664964b2f695e947faea4c29dbddd3615cc4b0b: RISC-V: Add vectorized strlen.
  # d468718c9a097aeb8794fb1a2df6db2c1064d7f7: RISC-V: Add vectorized strcmp and strncmp.
  # 9363d91956931bb28735bed97035b9ec965c850f: RISC-V: Fix VLS mode movmiaslign bug
  # a536d235d2204f3ff9be126fec3acbc032db3086: RISC-V: Remove poly selftest when --preference=fixed-vlmax
  # 330bb06485b18bae3effe83b45b97dbdcd543367: RISC-V: Fix ICE in extract_single_source
  # 7e854b58084c131fceca9e8fa9dcc7469972e69d: RISC-V: Support highest overlap for wv instructions
  # d9dd06ad51b7479f09acb88adf404664a1e18b2a: RISC-V: Recognize stepped series in expand_vec_perm_const.
  # 4db744149b6ed46314107187bb25e142c729f442: RISC-V: Robostify shuffle index used by vrgather and fix regression
  # fda2e1ab60377ca1a6aff093355b29115cff5880: RISC-V: Move RVV POLY VALUE estimation from riscv.cc to riscv-v.cc[NFC]
  # ce7e66787b5b4ad385b21756da5a89171d233ddc: RISC-V: Add avail interface into function_group_info
  # 8b832bfb4f9e50c2793463d9756499124de2f3e6: RISC-V: Disable RVV VCOMPRESS avl propagation
  # 26250632df1526bad2af9f2620204427008ac433: RISC-V: Refactor Dynamic LMUL codes
  # 8501edba91ea63bdfc045f1cb66fb1c242e44e80: RISC-V: Apply vla vs. vls mode heuristic vector COST model
  # ef21ae5c45f3b79a36fadc1cb5723c095e2965ad: RISC-V: Postpone full available optimization [VSETVL PASS]
  # 6a737ec24a98b3aa13605988c54c827f1bdae308: RISC-V:Add crypto vector implied ISA info.
  # 5e0f67b84a615ba186ab234a9bc43df0df5a50b6: RISC-V: Add RVV builtin vectorization cost model
  # 203efd5097b86a1eb0e41ca1a6be357721d5f14d: Revert "RISC-V: Add avail interface into function_group_info"
  # 0a5170b5f596bb5fcedf25d93952b979d02d1f56: expmed: Use GET_MODE_PRECISION and expander's output mode.
  # 4bfafea6922dffea145d1aa1d5f5fa4814e66173: RISC-V: Tweak generic vector COST model
  # 5ddf651ad91d34b754dbe280e5ab2b19cf90f8ee: RISC-V: Fix vmerge optimization bug in vec_perm vectorization
  # 1ddf65c5fc6ba7cf5826e1c02c569c923a541c09: [PATCH] RISC-V: Add Zvfbfmin extension to the -march= option
  # 082835836cf763e74ed2fdf9645ac4f1f94d6d4f: Re: [PATCH] RISC-V: fix scalar crypto patterns
  # 14876d6aa73b9e9385313c857ab6f399e4823bf8: [PATCH v4 1/3] RISC-V: Add support for XCVelw extension in CV32E40P
  # e0fe3ab96848633e1e09f20ddbf32bdb6552db11: [PATCH v4 2/3] RISC-V: Update XCValu constraints to match other vendors
  # 2c3e4d18b2f75cce287c8566c4231c677a243161: RISC-V: Fix POLY INT handle bug
  # 73aeec31c5ef15b5a3877370353164a2a6aaa8a6: RISC-V: Add viota missed avl_type attribute
  # 2c0c3368de5f8e3951f14a21d2d9183f6998ead5: RISC-V: Bugfix for the RVV const vector
  # 10493cd4c1e852a4e89742b5c81e6d8bc2eef9a5: RISC-V: Fix natural regsize for fixed-vlmax of -march=rv64gc_zve32f
  # b3b2799b872bc4c1944629af9dfc8472c8ca5fe6: RISC-V: Support one more overlap for wv instructions
  # 15cb5204e4c5f79d1b7179ae2590bb65e24b745f: RISC-V: Add required_extensions in function_group
  # 1555a5e24cc3b6231491d9760e916a4193255b09: RISC-V: Refine some codes of expand_const_vector [NFC]
  # 1190de7ef8be629f9390ddbb69b01bd8ead43a57: RISC-V: Fix ICE of moving SUBREG of vector mode to DImode scalar register on RV32 system.
  # bfdadcb2991c8601671944e5a7834194d73d2c14: RISC-V: Bugfix for the const vector in single steps
  # 3dd6f73a231362a67ff6dee05510bb4fe6253820: RISC-V: Fix calculation of max live vregs
  # eef65d60a8bb2e9328fd9d2b6cd869618be4f08e: [PATCH] RISC-V: Fix RISCV_FUSE_ZEXTWS fusion condition
  # d07d0e992232d668ba6c27e15433f7616a69e5b5: RISC-V: Support -mcmodel=large.
  # d82bb518fa372cc30cc3352e0a124d0bd6deb36f: RISC-V: Fix bug of VSETVL fusion
  # 008b80e42eb7cb55c6a2ef55728241b8733dfd17: RISC-V: Optimize SELECT_VL codegen when length is known as smaller than VF
  # 290230034092898981488d0716ddae43bd36c09f: RISC-V: Make PHI initial value occupy live V_REG in dynamic LMUL cost model analysis
  # ed60b2868abdb7932bda1dd08477c12fe62a49cb: RISC-V: Move RVV V_REGS liveness computation into analyze_loop_vinfo
  # f83cfb8148bcf0876df76761a9a4545bc939667d: RISC-V: Some minior tweak on dynamic LMUL cost model
  # c4ac073d4fc7474e29d085bbd10971138ee7478e: RISC-V: Make known NITERS loop be aware of dynamic lmul cost model liveness information
  # 76f5542c48315cca5dfcbff2f22c94f8d145bde6: RISC-V: Make dynamic LMUL cost model more accurate for conversion codes
  # d1eacedc6d9ba9f5522f2c8d49ccfdf7939ad72d: RISC-V: Disallow transformation into VLMAX AVL for cond_len_xxx when length is in range [0, 31]
  # 9a29b00365a07745c4ba2ed2af374e7c732aaeb3: RISC-V: Count pointer type SSA into RVV regs liveness for dynamic LMUL cost model
  # d3d6a96d45108d30395b6506fe4b3a91cd40f573: RISC-V: Add crypto machine descriptions
  # d2e40f2867da1d2c6a42122c057ee980e74a5440: RISC-V: Declare STMT_VINFO_TYPE (...) as local variable
  # 6be6305fb6f1a0bf0c088302cc57cbd8aa411873: RISC-V: Modify copyright year of vector-crypto.md
  # 76f069fef7dc12166fa65a664f03f82e7d2d9a78: RISC-V: Add simplification of dummy len and dummy mask COND_LEN_xxx pattern
  # 152cd65bf468c378e1e06ac72e443453137034b5: RISC-V: Use vector_length_operand instead of csr_operand in vsetvl patterns
  # a43bd8255451227fc1cd3601b1f0265b21fafada: RISC-V: Make liveness be aware of rgroup number of LENS[dynamic LMUL]
  # a945c346f57ba40fc80c14ac59be0d43624e559d: Update copyright years.
  # 97c1f176278ddf42931d8ff8ca86c044227e77e3: RISC-V: Fix indent
  # 4a0a8dc1b88408222b88e10278017189f6144602: RISC-V: Fix bug of earliest fusion for infinite loop[VSETVL PASS]
  # 83869ff4bcd694634fca969993af4c0dbc51e2bb: RISC-V: Refine LMUL computation for MASK_LEN_LOAD/MASK_LEN_STORE IFN
  # 73a4f67b9c8c497d87fda44160953293bc4e11e5: RISC-V: Fix misaligned stack offset for interrupt function
  # b1342247a44c410ad6a44dfd82813fafe2ea7c1d: RISC-V: Make liveness estimation be aware of .vi variant
  # 4831ad982c08a7d926263666c62cd6e52674f885: Revert "RISC-V: Make liveness estimation be aware of .vi variant"
  # 057dc349021660c40699fb5c98fd9cac8e168653: RISC-V: Nan-box the result of movhf on soft-fp16
  # 5bb18475a10d05d2aebf37db73ebf36c6912104d: Add generated .opt.urls files
  # 3ab4c3816bd5c340b98147ffce13a7f3c161b6cd: RISC-V: Make liveness estimation be aware of .vi variant
  # 960c2620db254a1edc2cd61e608df73073b3de0d: RISC-V: Add crypto vector builtin function.
  # fd946ecba7d2ec7090408b8b3ddd9d389db606e5: Revert "RISC-V: Add crypto vector builtin function."
  # 05415dba984639cc2ca897786738d76dadd0cfb6: RISC-V: Clean up unused variable [NFC]
  # c659dd8bfb55e02a1b97407c1c28f7a0e8f7f09b: Implement ASM_DECLARE_FUNCTION_NAME using ASM_OUTPUT_FUNCTION_LABEL
  # 9873f13d833b536b46cd6ff46d72e62407b048a8: RISC-V: Allow simplification non-vlmax with len = NUNITS reg to reg move
  # 19c76b5a91837cdb3e7aa4cb484dd4cfdebca8ae: RISC-V: Teach liveness computation loop invariant shift amount
  # 6cf47447f6fba84a17864fc7a19a532a62b6e736: RISC-V: Update MAX_SEW for available vsevl info[VSETVL PASS]
  # e74c37aab51d2350a3417f442c3a7d119b755378: RISC-V: Use MAX instead of std::max [VSETVL PASS]
  # c97436f84cef191618f61912520bc0f0d62d8146: RISC-V: Fix avl-type operand index error for ZVBC
  # e50a1ed3d36dee5baee5d89126a80419b119a7c5: RISC-V: Add crypto vector builtin function.
  # 2e4607666c3238a62d08468720549e70e71417c3: RISC-V: Fix comments of segment load/store intrinsic [NFC]
  # db584633e600840619bfb821d8293094ef26a668: RISC-V: Fix loop invariant check
  # 0141ee79d72a3bccf040e02cd047fe585b96fa8d: RISC-V: Refine unsigned avg_floor/avg_ceil
  # 6c3365e715faa20d8adefe244531f778578a9326: RISC-V: Also handle sign extension in branch costing
  # 52e809d5cf345ce01fc81be716a57f5b6d5b4545: RISC-V: T-HEAD: Add support for the XTheadInt ISA extension
  # 2aa83f0ad8a613fc46bf13cdd3403445d5c85b69: RISC-V: Minor tweak dynamic cost model
  # 3b8ef3f25ed68790f77eea8ea445b7c9144c8ca6: RISC-V: Switch RVV cost model.
  # 1a51886a79c97e53ba945c1926ab215ed6a9f5ed: RISC-V: VLA preempts VLS on unknown NITERS loop
  # b79cd204c780ee27e240616ac07e8201b85aeb92: RISC-V: THEAD: Fix ICE caused by split optimizations for XTheadFMemIdx.
  # 72609f5591b751b34fca3730acaf274c0ba32dab: RISC-V: Modify ABI-name length of vfloat16m8_t
  # d79629b316f48c45c0a38d10b8fef1a84beceb46: RISC-V: Update the comments of riscv_v_ext_mode_p [NFC]
  # 0acb63670bf1058fce00a75bd318c40be3bfa222: RISC-V: Adjust scalar_to_vec cost
  # 0627d1f5340c693699ad36fa2b741ff11d6f026a: RISC-V: Fix attributes bug configuration of ternary instructions
  # e037a0fa040ee1a3500c8523f3ffa713069ac283: RISC-V: Remove m_num_vector_iterations[NFC]
  # 405096f908e1ceb0d6a1b5420ded20ad85ddae9e: RISC-V: Adjust loop len by costing 1 when NITER < VF
  # 7be87b7d2e330afd14a7cc028f64d88f80e12f40: RISC-V: Fix regression (GCC-14 compare with GCC-13.2) of SHA256 from coremark-pro
  # c7ad6bf5b9e478d87294230318db675d7c8f3ce4: RISC-V: Add C intrinsic for Scalar Crypto Extension
  # 04f22670d32f6a0b765969997269107b6b7e8c21: RISC-V: Add C intrinsic for Scalar Bitmanip Extension
  # b2e06d71613ba0a01d6f91b2600725aac9fb761b: RISC-V: delete all the vector psabi checking.
  # 5134d3074ad7a462b4c8e2c0bc904b5ba40b7373: RISC-V: Report Sorry when users enable RVV in big-endian mode [PR113404]
  # 7ee7e07d0fb996d9632178f5b9790842096351ae: RISC-V: RVV: add toggle to control vsetvl pass behavior
  # 3340878009acfc69f5315386437841a277174c83: RISC-V: fix some vsetvl debug info in pass's Phase 2 code [NFC]
  # e935c0662fe6301d524c54bb5bd75e923abb61e9: RISC-V: Add has compatible check for conflict vsetvl fusion
  # 3c7add6af4641e0e8a812596d59606aeb8a84b3f: riscv: Remove Bool keywords from riscv.opt
  # 38d8facddfd891e15b287e5f19c5139272900346: RISC-V: Support vi variant for vec_cmp
  # d05b5265110709996fa19af1267c6669b7992879: RISC-V: Introduce XTheadVector as a subset of V1.0.0
  # 9a55cc625c5f4b0318b16173b20dcab80cff03a1: RISC-V: Adds the prefix "th." for the instructions of XTheadVector.
  # 2d7205eb2c3b175a86aab92bb652314f308f9c05: RISC-V: Handle differences between XTheadvector and Vector
  # 0a41c3e49af36cde6792413051c7054eeccb63fb: RISC-V: Add support for xtheadvector-specific intrinsics.
  # cdf4729f0889501c622cc1ad2df9377f2819cc07: RISC-V: Fix register overlap issue for some xtheadvector instructions
  # 9e1b554cc75e25fe96baf9b8d7963b932cb2c36d: RISC-V: Rewrite some instructions using ASM targethook
  # 173852ab68a461bbee07f6420a927c16d9019081: RISC-V: Raname UNSPEC_CLMUL in vector-crypto.md.
  # 565935f93a7da629da89b05812a3e8c43287598f: RISC-V: Tweak the wording for the sorry message
  # 4e8fef35f7c4553529e92a0d9f501b94481ede0b: RISC-V: Extract part parsing base ISA logic into a standalone function [NFC]
  # 006ad3e7f7847eb53c837aa1a581af0f822b7616: RISC-V: Relax the -march string for accept any order
  # e752a1ee00fef0244079a4c044d151e3be8073ab: RISC-V: Remove unused function in riscv_subset_list [NFC]
  # 01260a823073675e13dd1fc85cf2657a5396adf2: RISC-V: Fix RVV_VLMAX
  # 615e25c82de97acc17ab438f88d6788cf7ffe1d6: RISC-V: Suppress warning
  # b1829de17bdf9770b276756ead49eba6f408ecd1: [committed] [NFC] Fix riscv_init_cumulative_args for unused arguments
  # 5efd98c6f818ce2c55f54c34008557d0a3f953aa: Install right version of last change.
  # 46a664dd59ec6c1121914d6857d6edb94501c517: RISC-V: Bugfix for resolve_overloaded_builtin[PR113420]
  # a618b3c65745a6992ced4df60c186241c2da6eae: RISC-V: Fix vfirst/vmsbf/vmsif/vmsof ratio attributes
  # f625c017e60b6e05675b7d6280f2c7677ce691c3: RISC-V: Fix regressions due to 86de9b66480b710202a2898cf513db105d8c432f
  # f9df00340e307e52be7e025689d6c8bcbb8bcd55: RISC-V: Lower vmv.v.x (avl = 1) into vmv.s.x
  # 3132d2d36b4705bb762e61b1c8ca4da7c78a8321: RISC-V: Fix large memory usage of VSETVL PASS [PR113495]
  # fb54b9772816968032518d4008be5090e0d95109: [PATCH v3] RISC-V: Add split pattern to generate SFB instructions. [PR113095]
  # 1a8bebb1c59960590e7e2bc1a52757dfdd94210a: RISC-V: Add optim-no-fusion compile option [VSETVL PASS]
  # 5ee45f5e2838caf9180af1702349daa017a032f5: RISC-V: Remove redundant full available computation [NFC]
  # c6c2a1d79eb333a00124bf67820a7f405d0d8641: RISC-V: Add LCM delete block predecessors dump information
  # acc22d56e140220e7dc6c138918cb6754b6d1c0b: RISC-V: remove param riscv-vector-abi. [PR113538]
  # 5739d5fb5417e3e4303533ae464829e43ad3b47c: RISC-V: Add support for XCVsimd extension in CV32E40P
  # d40b3c1e439db05c835b6bd4fd5bba58fda71dd6: RISC-V: Fix incorrect LCM delete bug [VSETVL PASS]
  # bf23a62ee08fdc114a517dc4af148f15fa5d6545: RISC-V: Refine some codes of VSETVL PASS [NFC]

  # {
  #   # RISC-V: THEAD: Fix improper immediate value for MODIFY_DISP instruction on 32-bit systems.
  #   rev = "4ac00b7c809ca70775a04708863b9101d94af5c2";
  #   hash = "sha256-RueNREpsztTvypsZic+L+p+r8/9rCZKnCoAXjcg79GQ=";
  # }

  # 87ed338808f8d56b1270724584218cf7d801fe5b: riscv: Move UNSPEC_XTHEAD* from unspecv to unspec
  # 7bfea0aedbce3f33a783bbb47f39724a58d19f73: RISC-V: Bugfix for vls mode aggregated in GPR calling convention
  # 9dd10de15b183f7b662905e1383fdc3a08755f2e: RISC-V: Fix VSETLV PASS compile-time issue
  # 26c34b809cd1a6249027730a8b52bbf6a1c0f4a8: RISC-V: Add non-vector types to dfa pipelines
  # e56fb037d9d265682f5e7217d8a4c12a8d3fddf8: RISC-V: Add vector related pipelines
  # 23cd2961bd2ff63583f46e3499a07bd54491d45c: RISC-V: Enable assert for insn_has_dfa_reservation
  # be697c0ab187466a0a76ef228055b591718e3e4d: Revert "RISC-V: Enable assert for insn_has_dfa_reservation"
  # 2a30dd3a763a3a5f517bd923607b6081157eeaac: Revert "RISC-V: Add vector related pipelines"
  # fd4829dde46b9836c40c9ab27bde98521e692119: Revert "RISC-V: Add non-vector types to dfa pipelines"
  # 5c18df44fd1387653595869c9145c63fffb8cfac: RISC-V: Add minimal support for 7 new unprivileged extensions
  # ec217f7282cd4284cecda1c65a1e04323e6c8354: RISC-V: Support scheduling for sifive p600 series
  # 22622a5a314114fa2c6033fd7b4f7a2060e55284: RISC-V: Remove vsetvl_pre bogus instructions in VSETVL PASS
  # e0701f8f7b6dcddb299eb5345e510cf9ea419150: RISC-V: Cleanup the comments for the psabi
  # 74489c19070703361acc20bc172f304cae845a96: RISC-V: Allow LICM hoist POLY_INT configuration code sequence
  # 3e0b495311e982d349a28322fa305083ef25f866: Revert "RISC-V: Allow LICM hoist POLY_INT configuration code sequence"
  # 922e4599e6261644d336b009b6901cd221ec95fd: RISC-V: Expand VLMAX scalar move in reduction
  # 777df37a12e55ecbc135efbed2749a8a8a756d4d: [committed] Reasonably handle SUBREGs in risc-v cost modeling
  # 7c190f93cd53a8391d78da2ba39d98dba9211faa: RISC-V: Support scheduling for sifive p400 series
  # 91e09b3a7e9c86bb29fc138744fd2e087216733c: RISC-V: Add sifive-p450, sifive-p67 to -mcpu
  # 184978cd74f962712e813030d58edc109ad9a92d: riscv: Fix compiler warning in thead.cc
  # d29136ad3282905145e24d7ec10b6efe4ab5d2f1: RISC-V: Fix infinite compilation of VSETVL PASS
  # db5c3f6d952bc3950d23c0a6be4e8ec9147ef752: RISC-V: Bugfix for RVV overloaded intrinisc ICE when empty args
  # 9ec08782b45869b33fec2a8772c25118221208e3: RISC-V: Bugfix for RVV overloaded intrinsic ICE in function checker
  # 016fbd2d89972e0c44d9cd8375d2332108e447c4: RISC-V: Fix misspelled term args in error_at message
  # 7eac19be5f7dd92fcbcfe13f6edbb4f9bd45c15c: Re: [PATCH] RISC-V: Fix macro fusion for auipc+add, when identifying UNSPEC_AUIPC. [PR113742]
  # 7af0f1e107a480fbfe882cb985603960114aefb5: RISC-V: Add new option -march=help to print all supported extensions
  # 325d5dd53270fe8fd62b36c92c8f8b87c2938bf1: RISC-V: Fix *sge<u>_<X:mode><GPR:mode> pattern
  # 6082024891e421bfd81d8f708a7411f4019d0d97: RISC-V: Suppress the vsetvl fusion for conflict successors
  # 57b95223cb0ee472c86b34fc79d1193f3561451d: RISC-V: Add non-vector types to dfa pipelines
  # 6ec84c45a19403d3435b2affe4ec60e518fc1f97: RISC-V: Add vector related pipelines
  # d7d79c466dd4f2763974cc33545275fa37cafc1f: RISC-V: Enable assert for insn_has_dfa_reservation
  # 3688c2b1a604a16b9ff46935770976960016b15c: RISC-V: Upgrade RVV intrinsic version to 0.12
  # 23f5da91ccb4927562ea4d1c245639bfd4a0088b: RISC-V: Point our Python scripts at python3
  # 85c12ae8b80902ed46c97f33dbb61533e07f2905: RISC-V: Fix vec_init for simple sequences [PR114028].
  # fd07a29e39f5347d6cef3e7042a32306f97a1719: RISC-V: Fix __atomic_compare_exchange with 32 bit value on RV64
  # 0a01d1232ff0a8b094270fbf45c9fd0ea46df19f: RISC-V: Introduce gcc option mrvv-vector-bits for RVV
  # 4547628c78618616595f4b5e1bef2b582c77793d: RISC-V: Add riscv_vector_cc function attribute
  # b7b387e1200fd182599195979d5d21656fa8969d: [14 regression] Fix insn types in risc-v port
  # 71244316cf714725930c2de61c79d635238595bf: Regenerate opt.urls
  # 1a8dde963590b415768b070bd309b188858dc589: RISC-V: Cleanup unused code in riscv_v_adjust_bytesize [NFC]
  # 10cbfcd60f9e5bdbe486e1c0192e0f168d899b77: [PR target/113001] Fix incorrect operand swapping in conditional move
  # 9ae83078fe45d093bbaa02b8348f2407fe0c62d6: RISC-V: Adjust vec unit-stride load/store costs.
  # 59554a50be8ebbd52e8a6348a92110af182e1874: RISC-V: Use vmv1r.v instead of vmv.v.v for fma output reloads [PR114200].
  # 1cd8254ebad7b73993d2acee80a7caf37c21878a: RISC-V: Refactor expand_vec_cmp [NFC]
  # 42187c6968af9907de1f9b7563d87de739857684: RISC-V: Fix ICE in riscv vector costs
  # cdf0c6604d03afd7f544dd8bd5d43d9ded059ada: RISC-V: Fix some code style issue(s) in riscv-c.cc [NFC]
  # b5e1f0696110fbf5c73426ede70562edc6f54481: Regenerate opt.urls
  # d91a0cee3611f477730a1fc10beff050dfc800ec: [PATCH] RISC-V: Add XiangShan Nanhu microarchitecture.
  # 9eeca7753670d7bccd82e6ed7e4fe97cabd9a362: [PATCH v5 1/1] RISC-V: Add support for XCVbi extension in CV32E40P
  # 60586710b0646efdbbd77a7f53b93fb5edb87a61: RISC-V: Fix C23 (...) functions returning large aggregates [PR114175]
  # cd1ce3b326d49c16bade1fb76daa2ee67586efc9: RISC-V: Introduce option -mrvv-max-lmul for RVV autovec
  # d3c24e9e55a7cf18df313a8b32b6de4b3ba81013: RISC-V: Bugfix ICE for __attribute__((target("arch=+v"))
  # 9941f0295a14659e25260458efd2e46a68ad0342: RISC-V: Bugfix function target attribute pollution
  # c65046ff2ef0a9a46e59bc0b3369b2d226f6a239: [committed] Fix RISC-V missing stack tie
  # fd5e5dda8d79d62396f56d4fdd628b4bc5f9fa24: RISC-V: Don't add fractional LMUL types to V_VLS for XTheadVector
  # 47de95d801c6899033c303b1fe642feb0489994f: RISC-V: Introduce gcc attribute riscv_rvv_vector_bits for RVV
  # 5cab64a9cfb93fb0e246a25e3fdc7b664afb774e: RISC-V: Allow RVV intrinsic when function target("arch=+v")
  # f6d7ff4796709c0639317bfd8fa58a2957a1e299: RISC-V: Add vxsat as a register
  # b313baba57f7e09f66b603e1e30dd4b48800693f: RISC-V: Fix misspelled term builtin in error message
  # 08eaafadd5beaa56beb2d1fceca9f97eeb0219ba: [committed] RISC-V: Add missing insn types to XiangShan Nanhu scheduler model
  # af3a9807435a114c62f44f9d55456a3d37e0c25b: RISC-V: Allow RVV intrinsic for more function target
  # aa2ab7b79a87c25d113752401a6026c6823dfe57: RISC-V: Minor fix for max_point
  # 7d051f7d45789e1442d26c07bfc5e7fb77433b87: RISC-V: Refine the error msg for RVV intrinisc required ext
  # 97069657c4e40b209c7b774e12faaca13812a86c: RISC-V: Implement TLS Descriptors.
  # 64aa48ced03ad214cd05f114f5790e286fdcfbab: Fix up duplicated words mostly in comments, part 2
  # e40a3d86511efcea71e9eadde8fb9f96be52f790: RISC-V: Bugfix ICE for the vector return arg in mode switch
  # dc51a6428f6d8e5a57b8b1bf559145288e87660b: RISC-V: Bugfix ICE non-vector in TARGET_FUNCTION_VALUE_REGNO_P
  # 6e7e5943619a2c20d93fc7089c885483786558bc: RISC-V: Fix Werror=sign-compare in riscv_validate_vector_type
  # c9500083073ff5e0f5c1c9db92d7ce6e51a62919: Regenerate opt.urls
  # 02cc8f3e68f9af96d484d9946ceaa9e3eed38151: RISC-V: Add VLS to mask vec_extract [PR114668].
  # 46d914d0e0b7e982627edb285c41c67cc4e640ac: LoongArch: Add indexes for some compilation options.
  # 6e925ba0a8b9619ed789a456b087755b488d66f1: optimize Zicond conditional select cases.
]
