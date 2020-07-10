find_package(BISON)
find_package(FLEX)

BISON_TARGET(MyParser parser.y ${CMAKE_CURRENT_BINARY_DIR}/parser.c)
FLEX_TARGET(MyScanner lexer.l  ${CMAKE_CURRENT_BINARY_DIR}/lexer.c)
ADD_FLEX_BISON_DEPENDENCY(MyScanner MyParser)
include_directories(${CMAKE_CURRENT_BINARY_DIR})
add_executable(tinycc
   main.c
   ${BISON_MyParser_OUTPUTS}
    ${FLEX_MyScanner_OUTPUTS}
)
target_link_libraries(tinycc ${FLEX_LIBRARIES})
