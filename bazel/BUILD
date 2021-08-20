ANDROID_ALL_JARS = [
    "@org_robolectric_android_all_11_robolectric_6757853//jar",
    "@org_robolectric_android_all_10_robolectric_5803371//jar",
    "@org_robolectric_android_all_9_robolectric_4913185_2//jar",
    "@org_robolectric_android_all_8_1_0_robolectric_4611349//jar",
    "@org_robolectric_android_all_8_0_0_r4_robolectric_r1//jar",
    "@org_robolectric_android_all_7_1_0_r7_robolectric_r1//jar",
    "@org_robolectric_android_all_7_0_0_r1_robolectric_r1//jar",
    "@org_robolectric_android_all_6_0_1_r3_robolectric_r1//jar",
    "@org_robolectric_android_all_5_1_1_r9_robolectric_r2//jar",
    "@org_robolectric_android_all_5_0_2_r3_robolectric_r0//jar",
    "@org_robolectric_android_all_4_4_r1_robolectric_r2//jar",
    "@org_robolectric_android_all_4_3_r2_robolectric_r1//jar",
    "@org_robolectric_android_all_4_2_2_r1_2_robolectric_r1//jar",
    "@org_robolectric_android_all_4_1_2_r1_robolectric_r1//jar",
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
