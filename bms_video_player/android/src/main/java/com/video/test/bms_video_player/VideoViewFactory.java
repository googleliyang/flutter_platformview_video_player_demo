package com.video.test.bms_video_player;

import android.content.Context;

import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;

public class VideoViewFactory extends PlatformViewFactory {

    private final PluginRegistry.Registrar registrar;


    public VideoViewFactory(PluginRegistry.Registrar registrar) {
        super(StandardMessageCodec.INSTANCE);
        this.registrar = registrar;
    }

    @Override
    public PlatformView create(Context context, int i, Object o) {
        // return new VideoView(context, );
        return new VideoView(context, i, o, this.registrar);

    }
}
