# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "C:\\Users\\Atomi\\Dev\\Documents\\School\\Spring2026\\SoC\\Projects\\soc_final_project\\platform\\microblaze_0\\standalone_microblaze_0\\bsp\\include\\sleep.h"
  "C:\\Users\\Atomi\\Dev\\Documents\\School\\Spring2026\\SoC\\Projects\\soc_final_project\\platform\\microblaze_0\\standalone_microblaze_0\\bsp\\include\\xiltimer.h"
  "C:\\Users\\Atomi\\Dev\\Documents\\School\\Spring2026\\SoC\\Projects\\soc_final_project\\platform\\microblaze_0\\standalone_microblaze_0\\bsp\\include\\xtimer_config.h"
  "C:\\Users\\Atomi\\Dev\\Documents\\School\\Spring2026\\SoC\\Projects\\soc_final_project\\platform\\microblaze_0\\standalone_microblaze_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
