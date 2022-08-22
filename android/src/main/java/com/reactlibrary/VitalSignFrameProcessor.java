package com.reactlibrary;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.mrousavy.camera.frameprocessor.FrameProcessorPlugin;
import com.reactnativevitalsignplugin.VitalSignPluginModule;

public class VitalSignFrameProcessor extends FrameProcessorPlugin {
  @Nullable
  @Override
  public Object callback(@NonNull androidx.camera.core.ImageProxy image, @NonNull Object[] params) {
    return null;
  }
  public VitalSignFrameProcessor() {
    super("vseProcessVideoFrame");
  }
}
