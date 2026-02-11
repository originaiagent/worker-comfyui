FROM runpod/worker-comfyui:5.7.1-base

# Install custom nodes for ControlNet preprocessing
RUN comfy-node-install comfyui_controlnet_aux

# Install IPAdapter Plus (manual clone)
RUN cd /comfyui/custom_nodes && \
    git clone https://github.com/cubiq/ComfyUI_IPAdapter_plus.git

# Configure model paths for Network Volume
COPY extra_model_paths.yaml /comfyui/extra_model_paths.yaml
