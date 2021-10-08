ANDROID_ALL_JARS = [
    "@org_robolectric_android_all_instrumented_11_robolectric_6757853_i1//jar",
    "@org_robolectric_android_all_instrumented_10_robolectric_5803371_i1//jar",
    "@org_robolectric_android_all_instrumented_9_robolectric_4913185_2_i1//jar",
    "@org_robolectric_android_all_instrumented_8_1_0_robolectric_4611349_i1//jar",
    "@org_robolectric_android_all_instrumented_8_0_0_r4_robolectric_r1_i1//jar",
    "@org_robolectric_android_all_instrumented_7_1_0_r7_robolectric_r1_i1//jar",
    "@org_robolectric_android_all_instrumented_7_0_0_r1_robolectric_r1_i1//jar",
    "@org_robolectric_android_all_instrumented_6_0_1_r3_robolectric_r1_i1//jar",
    "@org_robolectric_android_all_instrumented_5_1_1_r9_robolectric_r2_i1//jar",
    "@org_robolectric_android_all_instrumented_5_0_2_r3_robolectric_r0_i1//jar",
    "@org_robolectric_android_all_instrumented_4_4_r1_robolectric_r2_i1//jar",
    "@org_robolectric_android_all_instrumented_4_3_r2_robolectric_r1_i1//jar",
    "@org_robolectric_android_all_instrumented_4_2_2_r1_2_robolectric_r1_i1//jar",
    "@org_robolectric_android_all_instrumented_4_1_2_r1_robolectric_r1_i1//jar",
]

java_library(
    name = "android-all",
    data = [":robolectric-deps.properties"] + ANDROID_ALL_JARS,
    visibility = ["//visibility:public"],
)

java_library(
    name = "android-all-jars",
    exports = ANDROID_ALL_JARS
)

filegroup(
  name = "android-all-jars-filegroup",
  srcs = ANDROID_ALL_JARS,
)

genrule(
  name = "properties",
  srcs = [":android-all-jars-filegroup"],
  outs = ["robolectric-deps.properties"],
  tools = [":gen-deps"],
  cmd = "$(location :gen-deps) $(locations :android-all-jars-filegroup) > $@",
)

py_binary(
  name = "gen-deps",
  srcs = ["gen-deps.py", ],
)
