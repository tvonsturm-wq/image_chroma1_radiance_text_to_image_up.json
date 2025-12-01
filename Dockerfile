# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.0-base

# install custom nodes into comfyui

# download models into comfyui
RUN comfy model download --url https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp8_e4m3fn_scaled.safetensors --relative-path models/text_encoders --filename t5xxl_fp8_e4m3fn_scaled.safetensors
RUN comfy model download --url https://huggingface.co/lodestones/Chroma1-Radiance/resolve/main/Chroma1-Radiance-v0.3.safetensors --relative-path models/diffusion_models --filename Chroma1-Radiance-v0.3.safetensors

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
