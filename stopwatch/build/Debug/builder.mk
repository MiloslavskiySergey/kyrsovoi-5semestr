EIDE_UNIFY_BUILDER := 1
CFLAGS := --std-c99 -c -mmcs51 --opt-code-speed -I.\src
CXXFLAGS := -c -mmcs51 --opt-code-speed -I.\src
ASMFLAGS := -l -o -s -I.\src
LDFLAGS := --out-fmt-ihx -mmcs51
LDLIBS := 
