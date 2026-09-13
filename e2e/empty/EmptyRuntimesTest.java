package org.robolectric.smoke;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import android.util.SparseArray;
import org.junit.Test;
import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

public class EmptyRuntimesTest {
  @Test
  public void excludedRuntimeIsUnavailable() {
    Result result = JUnitCore.runClasses(RequiresAndroidRuntime.class);
    // Resolving the runtime fails before Robolectric can run the test method.
    assertEquals(0, result.getRunCount());
    assertEquals(1, result.getFailureCount());
    String failure = result.getFailures().get(0).getTrace();
    assertTrue(failure, failure.contains("no artifacts found for"));
    assertTrue(
        failure,
        failure.contains("org.robolectric:android-all-instrumented:14-robolectric-10818077-i7"));
  }

  @RunWith(RobolectricTestRunner.class)
  @Config(sdk = 34, manifest = Config.NONE)
  public static class RequiresAndroidRuntime {
    @Test
    public void runtimeWorks() {
      SparseArray<String> values = new SparseArray<>();
      values.put(1, "unexpected runtime");
      assertEquals("unexpected runtime", values.get(1));
    }
  }
}
