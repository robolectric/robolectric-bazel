# robolectric-bazel

This project provides build rules for integrating robolectric into bazel
projects.

## Usage

See [Robolectric Getting Started](http://robolectric.org/getting-started/#building-with-bazel) for usage
instructions.

## Updating

To update BUILD, and robolectric.bazel for a new version of Robolectric use [bazel's generate workspace](https://docs.bazel.build/versions/master/generate-workspace.html) tool.

```bash
 bazel run //generate_workspace -- \
    --artifact=org.robolectric:robolectric:4.0.2 \
    --repositories=https://central.maven.org/maven2 \
    --repositories=https://jcenter.bintray.com \
    --repositories=https://maven.google.com
```

Copy the generated_maven_jars() function from the generated
generate_workspace.bzl to robolectric.bzl.



