# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# Note: No registry-verified custom nodes found in the workflow.
# The following unknown_registry custom nodes could not be automatically resolved because they have no aux_id (GitHub repo) provided:
# - MarkdownNote
# - MarkdownNote
# Skipping installation for the above unknown_registry nodes. If you have their GitHub repos, add them as aux_id so they can be cloned, e.g.:
# RUN git clone https://github.com/<owner>/<repo> /comfyui/custom_nodes/<repo>

# download models into comfyui
# No models specified in the workflow

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
