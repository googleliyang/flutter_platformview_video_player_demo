package com.video.test.bms_video_player;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;

import cn.jzvd.Jzvd;
import cn.jzvd.JzvdStd;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugin.platform.PlatformView;

public class VideoView implements PlatformView, MethodChannel.MethodCallHandler {

    private final JzvdStd jzvdStd;

    private final MethodChannel methodChannel;

    private final PluginRegistry.Registrar registrar;

    VideoView(Context context, int viewId, Object args, PluginRegistry.Registrar registrar) {

        this.registrar = registrar;

        this.jzvdStd = getJzvStd(registrar, args);

        this.methodChannel = new MethodChannel(registrar.messenger(), "bms_video_player_" + viewId);

        this.methodChannel.setMethodCallHandler(this);

    }

    @Override

    public View getView() {

        return jzvdStd;

    }

    @Override

    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {

        switch (methodCall.method) {

            case "loadUrl":

                String url = methodCall.arguments.toString();

                jzvdStd.setUp(url, "", Jzvd.SCREEN_NORMAL);

                break;

            default:

                result.notImplemented();

        }

    }

    @Override

    public void dispose() {}

    private JzvdStd getJzvStd(PluginRegistry.Registrar registrar, Object args) {

        JzvdStd view = (JzvdStd) LayoutInflater.from(registrar.activity()).inflate(R.layout.jz_video, null);

        return view;

    }

}

