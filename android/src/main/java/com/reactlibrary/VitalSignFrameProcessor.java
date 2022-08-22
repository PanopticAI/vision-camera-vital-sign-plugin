package com.reactlibrary;

import android.os.Build;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

import com.facebook.react.bridge.ReadableMap;
import com.mrousavy.camera.frameprocessor.FrameProcessorPlugin;
import com.reactnativevitalsignplugin.VitalSignPluginModule;

public class VitalSignFrameProcessor extends FrameProcessorPlugin {
    @RequiresApi(api = Build.VERSION_CODES.O)
    @Nullable
    @Override
    public Object callback(@NonNull androidx.camera.core.ImageProxy image, @NonNull Object[] params) {
        ReadableMap userInfoMap = (ReadableMap)params[0];
        return VitalSignPluginModule.processVideoFrame(image, userInfoMap);
    }
    public VitalSignFrameProcessor() {
      super("vseProcessVideoFrame");
    }
}
