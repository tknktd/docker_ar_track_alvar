#!/bin/bash

# ============== オプション（デフォルト値はRealsense D455向け） ==============
TOPIC_CAMERA_IMAGE="/camera/color/image_raw"     # カメラ画像トピック名
TOPIC_CAMERA_INFO="/camera/color/camera_info"    # カメラ情報トピック名

PARAM_OUTPUT_FRAME="camera_color_optical_frame"  # カメラフレーム名
PARAM_MARKER_SIZE="5.2"                          # ARマーカーの辺の長さ（cm）
# ============================================================================

docker run --rm -it \
    --network host \
    ar_track_alvar \
    rosrun ar_track_alvar individualMarkersNoKinect \
    camera_image:=$TOPIC_CAMERA_IMAGE \
    camera_info:=$TOPIC_CAMERA_INFO \
    _output_frame:=$PARAM_OUTPUT_FRAME \
    _maker_size:=$PARAM_MARKER_SIZE
