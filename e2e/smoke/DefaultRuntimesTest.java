package org.robolectric.smoke;

import static org.junit.Assert.assertEquals;

import android.util.SparseArray;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = Config.ALL_SDKS, manifest = Config.NONE)
public class DefaultRuntimesTest {
  @Test
  public void defaultRuntimeWorks() {
    SparseArray<String> values = new SparseArray<>();
    values.put(1, "default runtime");
    assertEquals("default runtime", values.get(1));
  }
}
