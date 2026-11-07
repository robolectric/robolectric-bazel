package org.robolectric.smoke;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import android.os.Build;
import android.util.SparseArray;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = {34, 35}, manifest = Config.NONE)
public class RuntimeSelectionTest {
  @Test
  public void selectedRuntimeWorks() {
    assertTrue(Build.VERSION.SDK_INT == 34 || Build.VERSION.SDK_INT == 35);
    SparseArray<String> values = new SparseArray<>();
    values.put(1, "selected runtime");
    assertEquals("selected runtime", values.get(1));
  }
}
