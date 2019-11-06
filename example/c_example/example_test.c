#include <CUnit/Basic.h>
#include "example.h"

int init_suite1() {
  return 0;
}

int clean_suite1() {
  return 0;
}

void test_example_function() {
  CU_ASSERT(81 == example_function(9));
  CU_ASSERT(121 == example_function(11));
}

int example_function_test() {
  CU_pSuite pSuite = NULL;

  if (CUE_SUCCESS != CU_initialize_registry()) {
    return CU_get_error();
  }

  pSuite = CU_add_suite("Suite_1", init_suite1, clean_suite1);
  if (NULL == pSuite) {
    CU_cleanup_registry();
    return CU_get_error();
  }

  /* NOTE - ORDER IS IMPORTANT */
  if ((NULL == CU_add_test(pSuite, "test of example_function()", test_example_function)) ) {
    CU_cleanup_registry();
    return CU_get_error();
  }

  CU_basic_set_mode(CU_BRM_VERBOSE);
  CU_basic_run_tests();
  CU_cleanup_registry();
  return CU_get_error();
}
