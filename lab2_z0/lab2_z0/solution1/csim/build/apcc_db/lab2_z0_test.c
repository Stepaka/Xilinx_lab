/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;
/* Structure forward decls */
typedef struct l_struct_OC__iobuf l_struct_OC__iobuf;

/* Structure contents */
struct l_struct_OC__iobuf {
   char *field0;
  unsigned int field1;
   char *field2;
  unsigned int field3;
  unsigned int field4;
  unsigned int field5;
  unsigned int field6;
   char *field7;
};


/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
signed int arentEqual(signed int *llvm_cbe_expectedArr, signed int *llvm_cbe_actualArr);
signed int main(void);
void lab2_z0(signed short *, signed short *, signed int *);


/* Global Variable Definitions and Initialization */
static  char aesl_internal__OC_str[47] = " ERROR: expected=%d  actual=%d  for ROW: %d  \n";
static  char aesl_internal__OC_str1[30] = "----------Pass!------------ \n";
static  char aesl_internal__OC_str2[30] = "----------Fail!------------ \n";


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

signed int arentEqual(signed int *llvm_cbe_expectedArr, signed int *llvm_cbe_actualArr) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge_count = 0;
  unsigned int llvm_cbe_storemerge;
  unsigned int llvm_cbe_storemerge__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  unsigned long long llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  signed int *llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  unsigned int llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  signed int *llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  unsigned int llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  unsigned int llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  unsigned int llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @arentEqual\n");
  llvm_cbe_storemerge__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__12;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__12:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge = phi i32 [ 0, %%0 ], [ %%10, %%3  for 0x%I64xth hint within @arentEqual  --> \n", ++aesl_llvm_cbe_storemerge_count);
  llvm_cbe_storemerge = (unsigned int )llvm_cbe_storemerge__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge = 0x%X",llvm_cbe_storemerge);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__6);
}
  if ((((signed int )llvm_cbe_storemerge) < ((signed int )3u))) {
    goto llvm_cbe_tmp__13;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_loopexit;
  }

llvm_cbe_tmp__13:
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = sext i32 %%storemerge to i64, !dbg !3 for 0x%I64xth hint within @arentEqual  --> \n", ++aesl_llvm_cbe_18_count);
  llvm_cbe_tmp__1 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__1);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds i32* %%expectedArr, i64 %%4, !dbg !3 for 0x%I64xth hint within @arentEqual  --> \n", ++aesl_llvm_cbe_19_count);
  llvm_cbe_tmp__2 = (signed int *)(&llvm_cbe_expectedArr[(((signed long long )llvm_cbe_tmp__1))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__1));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = load i32* %%5, align 4, !dbg !3 for 0x%I64xth hint within @arentEqual  --> \n", ++aesl_llvm_cbe_20_count);
  llvm_cbe_tmp__3 = (unsigned int )*llvm_cbe_tmp__2;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds i32* %%actualArr, i64 %%4, !dbg !3 for 0x%I64xth hint within @arentEqual  --> \n", ++aesl_llvm_cbe_21_count);
  llvm_cbe_tmp__4 = (signed int *)(&llvm_cbe_actualArr[(((signed long long )llvm_cbe_tmp__1))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__1));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i32* %%7, align 4, !dbg !3 for 0x%I64xth hint within @arentEqual  --> \n", ++aesl_llvm_cbe_22_count);
  llvm_cbe_tmp__5 = (unsigned int )*llvm_cbe_tmp__4;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = add nsw i32 %%storemerge, 1, !dbg !4 for 0x%I64xth hint within @arentEqual  --> \n", ++aesl_llvm_cbe_24_count);
  llvm_cbe_tmp__6 = (unsigned int )((unsigned int )(llvm_cbe_storemerge&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__6&4294967295ull)));
  if (((llvm_cbe_tmp__3&4294967295U) == (llvm_cbe_tmp__5&4294967295U))) {
    llvm_cbe_storemerge__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__6;   /* for PHI node */
    goto llvm_cbe_tmp__12;
  } else {
    goto llvm_cbe_tmp__14;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__14:
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = tail call %%struct._iobuf* @__iob_func() nounwind, !dbg !3 for 0x%I64xth hint within @arentEqual  --> \n", ++aesl_llvm_cbe_27_count);
  llvm_cbe_tmp__7 = (l_struct_OC__iobuf *) /*tail*/ __iob_func();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__7);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds %%struct._iobuf* %%12, i64 1, !dbg !3 for 0x%I64xth hint within @arentEqual  --> \n", ++aesl_llvm_cbe_28_count);
  llvm_cbe_tmp__8 = (l_struct_OC__iobuf *)(&llvm_cbe_tmp__7[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load i32* %%5, align 4, !dbg !3 for 0x%I64xth hint within @arentEqual  --> \n", ++aesl_llvm_cbe_29_count);
  llvm_cbe_tmp__9 = (unsigned int )*llvm_cbe_tmp__2;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__9);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = load i32* %%7, align 4, !dbg !3 for 0x%I64xth hint within @arentEqual  --> \n", ++aesl_llvm_cbe_30_count);
  llvm_cbe_tmp__10 = (unsigned int )*llvm_cbe_tmp__4;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__10);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = tail call i32 (%%struct._iobuf*, i8*, ...)* @fprintf(%%struct._iobuf* %%13, i8* getelementptr inbounds ([47 x i8]* @aesl_internal_.str, i64 0, i64 0), i32 %%14, i32 %%15, i32 %%storemerge) nounwind, !dbg !3 for 0x%I64xth hint within @arentEqual  --> \n", ++aesl_llvm_cbe_31_count);
   /*tail*/ fprintf((l_struct_OC__iobuf *)llvm_cbe_tmp__8, ( char *)((&aesl_internal__OC_str[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 47
#endif
])), llvm_cbe_tmp__9, llvm_cbe_tmp__10, llvm_cbe_storemerge);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__9);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument storemerge = 0x%X",llvm_cbe_storemerge);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__11);
}
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
  goto llvm_cbe__2e_loopexit;

llvm_cbe__2e_loopexit:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ 1, %%11 ], [ 0, %%1  for 0x%I64xth hint within @arentEqual  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",0u);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @arentEqual}\n");
  return llvm_cbe_storemerge1;
}


signed int main(void) {
  static  unsigned long long aesl_llvm_cbe_inArr_a_count = 0;
  signed short llvm_cbe_inArr_a[3];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_inArr_b_count = 0;
  signed short llvm_cbe_inArr_b[3];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_expectedArr_count = 0;
  signed int llvm_cbe_expectedArr[3];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_actualArr_count = 0;
  signed int llvm_cbe_actualArr[3];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  signed short *llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  signed short *llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  signed int *llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  signed int *llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge5_count = 0;
  unsigned int llvm_cbe_storemerge5;
  unsigned int llvm_cbe_storemerge5__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  unsigned int llvm_cbe_tmp__19;
  unsigned int llvm_cbe_tmp__19__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  unsigned int llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  unsigned int llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  unsigned short llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  unsigned int llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  unsigned int llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  unsigned short llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  unsigned short llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  unsigned int llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  unsigned int llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  unsigned short llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  signed short *llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  unsigned int llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  unsigned int llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  unsigned short llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  unsigned short llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  signed short *llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  signed int *llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  unsigned int llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  unsigned int llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  unsigned short llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  signed short *llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  unsigned int llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  unsigned int llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  unsigned short llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  unsigned short llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  signed short *llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  signed int *llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  unsigned short llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  unsigned int llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  unsigned short llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  unsigned int llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  unsigned int llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  unsigned short llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  unsigned int llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  unsigned short llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  unsigned int llvm_cbe_tmp__55;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  unsigned int llvm_cbe_tmp__56;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  signed int *llvm_cbe_tmp__57;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  unsigned short llvm_cbe_tmp__58;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  unsigned int llvm_cbe_tmp__59;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  unsigned short llvm_cbe_tmp__60;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  unsigned int llvm_cbe_tmp__61;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  unsigned int llvm_cbe_tmp__62;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  signed int *llvm_cbe_tmp__63;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  unsigned int llvm_cbe_tmp__64;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e__count = 0;
  unsigned int llvm_cbe__2e_;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  unsigned int llvm_cbe_tmp__65;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__66;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__67;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  unsigned long long llvm_cbe_tmp__68;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__69;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__70;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  unsigned long long llvm_cbe_tmp__71;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;

  CODE_FOR_MAIN();
const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @main\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds [3 x i16]* %%inArr_a, i64 0, i64 0, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__15 = (signed short *)(&llvm_cbe_inArr_a[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = getelementptr inbounds [3 x i16]* %%inArr_b, i64 0, i64 0, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_45_count);
  llvm_cbe_tmp__16 = (signed short *)(&llvm_cbe_inArr_b[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds [3 x i32]* %%actualArr, i64 0, i64 0, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_46_count);
  llvm_cbe_tmp__17 = (signed int *)(&llvm_cbe_actualArr[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = getelementptr inbounds [3 x i32]* %%expectedArr, i64 0, i64 0, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_47_count);
  llvm_cbe_tmp__18 = (signed int *)(&llvm_cbe_expectedArr[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
if (AESL_DEBUG_TRACE) {
}
  llvm_cbe_storemerge5__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_tmp__19__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader;

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge5 = phi i32 [ 0, %%0 ], [ %%52, %%.preheader  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge5_count);
  llvm_cbe_storemerge5 = (unsigned int )llvm_cbe_storemerge5__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge5 = 0x%X",llvm_cbe_storemerge5);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__65);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = phi i32 [ 0, %%0 ], [ %%., %%.preheader  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_49_count);
  llvm_cbe_tmp__19 = (unsigned int )llvm_cbe_tmp__19__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__19);
printf("\n = 0x%X",0u);
printf("\n. = 0x%X",llvm_cbe__2e_);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = call i32 bitcast (i32 (...)* @rand to i32 ()*)() nounwind, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_56_count);
  llvm_cbe_tmp__20 = (unsigned int )rand();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__20);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = srem i32 %%6, 1000, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_57_count);
  llvm_cbe_tmp__21 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__20) % ((signed int )1000u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__21));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = trunc i32 %%7 to i16, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_58_count);
  llvm_cbe_tmp__22 = (unsigned short )((unsigned short )llvm_cbe_tmp__21&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__22);

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 3 && "Write access out of array 'inArr_a' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%8, i16* %%1, align 2, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_59_count);
  *llvm_cbe_tmp__15 = llvm_cbe_tmp__22;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__22);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = call i32 bitcast (i32 (...)* @rand to i32 ()*)() nounwind, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_60_count);
  llvm_cbe_tmp__23 = (unsigned int )rand();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__23);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = srem i32 %%9, 1000, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_61_count);
  llvm_cbe_tmp__24 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__23) % ((signed int )1000u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__24));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = trunc i32 %%10 to i16, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_62_count);
  llvm_cbe_tmp__25 = (unsigned short )((unsigned short )llvm_cbe_tmp__24&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__25);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = add i16 %%11, %%8, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_63_count);
  llvm_cbe_tmp__26 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__25&65535ull)) + ((unsigned short )(llvm_cbe_tmp__22&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__26&65535ull)));

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 3 && "Write access out of array 'inArr_b' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%12, i16* %%2, align 2, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_64_count);
  *llvm_cbe_tmp__16 = llvm_cbe_tmp__26;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__26);

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 3 && "Write access out of array 'actualArr' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%3, align 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_65_count);
  *llvm_cbe_tmp__17 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = call i32 bitcast (i32 (...)* @rand to i32 ()*)() nounwind, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_73_count);
  llvm_cbe_tmp__27 = (unsigned int )rand();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__27);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = srem i32 %%13, 1000, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_74_count);
  llvm_cbe_tmp__28 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__27) % ((signed int )1000u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__28));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = trunc i32 %%14 to i16, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_75_count);
  llvm_cbe_tmp__29 = (unsigned short )((unsigned short )llvm_cbe_tmp__28&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__29);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = getelementptr inbounds [3 x i16]* %%inArr_a, i64 0, i64 1, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_76_count);
  llvm_cbe_tmp__30 = (signed short *)(&llvm_cbe_inArr_a[(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )1ull) < 3 && "Write access out of array 'inArr_a' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%15, i16* %%16, align 2, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_77_count);
  *llvm_cbe_tmp__30 = llvm_cbe_tmp__29;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__29);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = call i32 bitcast (i32 (...)* @rand to i32 ()*)() nounwind, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_78_count);
  llvm_cbe_tmp__31 = (unsigned int )rand();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__31);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = srem i32 %%17, 1000, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_79_count);
  llvm_cbe_tmp__32 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__31) % ((signed int )1000u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__32));
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = trunc i32 %%18 to i16, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_80_count);
  llvm_cbe_tmp__33 = (unsigned short )((unsigned short )llvm_cbe_tmp__32&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__33);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = add i16 %%19, %%15, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_81_count);
  llvm_cbe_tmp__34 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__33&65535ull)) + ((unsigned short )(llvm_cbe_tmp__29&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__34&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = getelementptr inbounds [3 x i16]* %%inArr_b, i64 0, i64 1, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_82_count);
  llvm_cbe_tmp__35 = (signed short *)(&llvm_cbe_inArr_b[(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )1ull) < 3 && "Write access out of array 'inArr_b' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%20, i16* %%21, align 2, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_83_count);
  *llvm_cbe_tmp__35 = llvm_cbe_tmp__34;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__34);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = getelementptr inbounds [3 x i32]* %%actualArr, i64 0, i64 1, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_84_count);
  llvm_cbe_tmp__36 = (signed int *)(&llvm_cbe_actualArr[(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )1ull) < 3 && "Write access out of array 'actualArr' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%22, align 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_85_count);
  *llvm_cbe_tmp__36 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = call i32 bitcast (i32 (...)* @rand to i32 ()*)() nounwind, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_93_count);
  llvm_cbe_tmp__37 = (unsigned int )rand();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__37);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = srem i32 %%23, 1000, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_94_count);
  llvm_cbe_tmp__38 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__37) % ((signed int )1000u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__38));
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = trunc i32 %%24 to i16, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_95_count);
  llvm_cbe_tmp__39 = (unsigned short )((unsigned short )llvm_cbe_tmp__38&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__39);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = getelementptr inbounds [3 x i16]* %%inArr_a, i64 0, i64 2, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_96_count);
  llvm_cbe_tmp__40 = (signed short *)(&llvm_cbe_inArr_a[(((signed long long )2ull))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )2ull) < 3 && "Write access out of array 'inArr_a' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%25, i16* %%26, align 2, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_97_count);
  *llvm_cbe_tmp__40 = llvm_cbe_tmp__39;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__39);
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = call i32 bitcast (i32 (...)* @rand to i32 ()*)() nounwind, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_98_count);
  llvm_cbe_tmp__41 = (unsigned int )rand();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__41);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = srem i32 %%27, 1000, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_99_count);
  llvm_cbe_tmp__42 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__41) % ((signed int )1000u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__42));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = trunc i32 %%28 to i16, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_100_count);
  llvm_cbe_tmp__43 = (unsigned short )((unsigned short )llvm_cbe_tmp__42&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__43);
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = add i16 %%29, %%25, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_101_count);
  llvm_cbe_tmp__44 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__43&65535ull)) + ((unsigned short )(llvm_cbe_tmp__39&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__44&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = getelementptr inbounds [3 x i16]* %%inArr_b, i64 0, i64 2, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_102_count);
  llvm_cbe_tmp__45 = (signed short *)(&llvm_cbe_inArr_b[(((signed long long )2ull))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )2ull) < 3 && "Write access out of array 'inArr_b' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%30, i16* %%31, align 2, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_103_count);
  *llvm_cbe_tmp__45 = llvm_cbe_tmp__44;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__44);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = getelementptr inbounds [3 x i32]* %%actualArr, i64 0, i64 2, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_104_count);
  llvm_cbe_tmp__46 = (signed int *)(&llvm_cbe_actualArr[(((signed long long )2ull))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )2ull) < 3 && "Write access out of array 'actualArr' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%32, align 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_105_count);
  *llvm_cbe_tmp__46 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  call void @lab2_z0(i16* %%1, i16* %%2, i32* %%3) nounwind, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_113_count);
  lab2_z0((signed short *)llvm_cbe_tmp__15, (signed short *)llvm_cbe_tmp__16, (signed int *)llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )0ull) < 3)) fprintf(stderr, "%s:%d: warning: Read access out of array 'inArr_a' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = load i16* %%1, align 2, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_120_count);
  llvm_cbe_tmp__47 = (unsigned short )*llvm_cbe_tmp__15;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__47);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = sext i16 %%33 to i32, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_121_count);
  llvm_cbe_tmp__48 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__47);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__48);

#ifdef AESL_BC_SIM
  if (!(((signed long long )0ull) < 3)) fprintf(stderr, "%s:%d: warning: Read access out of array 'inArr_b' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = load i16* %%2, align 2, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_122_count);
  llvm_cbe_tmp__49 = (unsigned short )*llvm_cbe_tmp__16;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__49);
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = sext i16 %%35 to i32, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_123_count);
  llvm_cbe_tmp__50 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__49);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__50);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = add nsw i32 %%36, %%34, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_124_count);
  llvm_cbe_tmp__51 = (unsigned int )((unsigned int )(llvm_cbe_tmp__50&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__48&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__51&4294967295ull)));

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 3 && "Write access out of array 'expectedArr' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%37, i32* %%4, align 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_125_count);
  *llvm_cbe_tmp__18 = llvm_cbe_tmp__51;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__51);

#ifdef AESL_BC_SIM
  if (!(((signed long long )1ull) < 3)) fprintf(stderr, "%s:%d: warning: Read access out of array 'inArr_a' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = load i16* %%16, align 2, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_132_count);
  llvm_cbe_tmp__52 = (unsigned short )*llvm_cbe_tmp__30;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__52);
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = sext i16 %%38 to i32, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_133_count);
  llvm_cbe_tmp__53 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__52);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__53);

#ifdef AESL_BC_SIM
  if (!(((signed long long )1ull) < 3)) fprintf(stderr, "%s:%d: warning: Read access out of array 'inArr_b' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = load i16* %%21, align 2, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_134_count);
  llvm_cbe_tmp__54 = (unsigned short )*llvm_cbe_tmp__35;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__54);
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = sext i16 %%40 to i32, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_135_count);
  llvm_cbe_tmp__55 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__54);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__55);
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = add nsw i32 %%41, %%39, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_136_count);
  llvm_cbe_tmp__56 = (unsigned int )((unsigned int )(llvm_cbe_tmp__55&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__53&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__56&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = getelementptr inbounds [3 x i32]* %%expectedArr, i64 0, i64 1, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_137_count);
  llvm_cbe_tmp__57 = (signed int *)(&llvm_cbe_expectedArr[(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )1ull) < 3 && "Write access out of array 'expectedArr' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%42, i32* %%43, align 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_138_count);
  *llvm_cbe_tmp__57 = llvm_cbe_tmp__56;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__56);

#ifdef AESL_BC_SIM
  if (!(((signed long long )2ull) < 3)) fprintf(stderr, "%s:%d: warning: Read access out of array 'inArr_a' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = load i16* %%26, align 2, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_145_count);
  llvm_cbe_tmp__58 = (unsigned short )*llvm_cbe_tmp__40;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__58);
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = sext i16 %%44 to i32, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_146_count);
  llvm_cbe_tmp__59 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__58);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__59);

#ifdef AESL_BC_SIM
  if (!(((signed long long )2ull) < 3)) fprintf(stderr, "%s:%d: warning: Read access out of array 'inArr_b' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = load i16* %%31, align 2, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_147_count);
  llvm_cbe_tmp__60 = (unsigned short )*llvm_cbe_tmp__45;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__60);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = sext i16 %%46 to i32, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_148_count);
  llvm_cbe_tmp__61 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__60);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__61);
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = add nsw i32 %%47, %%45, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_149_count);
  llvm_cbe_tmp__62 = (unsigned int )((unsigned int )(llvm_cbe_tmp__61&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__59&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__62&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = getelementptr inbounds [3 x i32]* %%expectedArr, i64 0, i64 2, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_150_count);
  llvm_cbe_tmp__63 = (signed int *)(&llvm_cbe_expectedArr[(((signed long long )2ull))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )2ull) < 3 && "Write access out of array 'expectedArr' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%48, i32* %%49, align 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_151_count);
  *llvm_cbe_tmp__63 = llvm_cbe_tmp__62;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__62);
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = call i32 @arentEqual(i32* %%4, i32* %%3), !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_158_count);
  llvm_cbe_tmp__64 = (unsigned int )arentEqual((signed int *)llvm_cbe_tmp__18, (signed int *)llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__64);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%. = select i1 %%51, i32 %%5, i32 1, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe__2e__count);
  llvm_cbe__2e_ = (unsigned int )((((llvm_cbe_tmp__64&4294967295U) == (0u&4294967295U))) ? ((unsigned int )llvm_cbe_tmp__19) : ((unsigned int )1u));
if (AESL_DEBUG_TRACE)
printf("\n. = 0x%X\n", llvm_cbe__2e_);
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = add nsw i32 %%storemerge5, 1, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_160_count);
  llvm_cbe_tmp__65 = (unsigned int )((unsigned int )(llvm_cbe_storemerge5&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__65&4294967295ull)));
  if (((llvm_cbe_tmp__65&4294967295U) == (3u&4294967295U))) {
    goto llvm_cbe_tmp__72;
  } else {
    llvm_cbe_storemerge5__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__65;   /* for PHI node */
    llvm_cbe_tmp__19__PHI_TEMPORARY = (unsigned int )llvm_cbe__2e_;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe_tmp__72:
  if (((llvm_cbe__2e_&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__73;
  } else {
    goto llvm_cbe_tmp__74;
  }

llvm_cbe_tmp__73:
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = call %%struct._iobuf* @__iob_func() nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_167_count);
  llvm_cbe_tmp__66 = (l_struct_OC__iobuf *)__iob_func();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__66);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = getelementptr inbounds %%struct._iobuf* %%56, i64 1, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_168_count);
  llvm_cbe_tmp__67 = (l_struct_OC__iobuf *)(&llvm_cbe_tmp__66[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @aesl_internal_.str1, i64 0, i64 0), i64 29, i64 1, %%struct._iobuf* %%57), !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_169_count);
  fwrite(( char *)((&aesl_internal__OC_str1[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 30
#endif
])), 29ull, 1ull, (l_struct_OC__iobuf *)llvm_cbe_tmp__67);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",29ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__68);
}
  goto llvm_cbe_tmp__75;

llvm_cbe_tmp__74:
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = call %%struct._iobuf* @__iob_func() nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_171_count);
  llvm_cbe_tmp__69 = (l_struct_OC__iobuf *)__iob_func();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__69);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = getelementptr inbounds %%struct._iobuf* %%60, i64 2, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_172_count);
  llvm_cbe_tmp__70 = (l_struct_OC__iobuf *)(&llvm_cbe_tmp__69[(((signed long long )2ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @aesl_internal_.str2, i64 0, i64 0), i64 29, i64 1, %%struct._iobuf* %%61), !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_173_count);
  fwrite(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 30
#endif
])), 29ull, 1ull, (l_struct_OC__iobuf *)llvm_cbe_tmp__70);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",29ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__71);
}
  goto llvm_cbe_tmp__75;

llvm_cbe_tmp__75:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @main}\n");
  return llvm_cbe__2e_;
}

