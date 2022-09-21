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
        if (params.length == 1) {
            ReadableMap userInfoMap = (ReadableMap) params[0];
            return VitalSignPluginModule.processVideoFrame(image, userInfoMap);
        } else if (params.length == 2) {
            ReadableMap faceboxMap = (ReadableMap) params[0];
            ReadableMap userInfoMap = (ReadableMap) params[1];
            return VitalSignPluginModule.processVideoFrame(image, faceboxMap, userInfoMap);
        } else {
            return null;
        }
    }
    public VitalSignFrameProcessor() {
      super("vseProcessFrame");
    }
}
