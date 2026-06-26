#!/bin/sh
set -e

PROGRAM_NAME="Smart-SIP-Phone-Hybrid"

mkdir -p "${HOME}/.${PROGRAM_NAME}"
touch "${HOME}/.${PROGRAM_NAME}/extract_on_next_start"
export WEBKIT_DISABLE_DMABUF_RENDERER="${WEBKIT_DISABLE_DMABUF_RENDERER:-1}"
export GDK_BACKEND="${GDK_BACKEND:-x11}"
export PATH="/app/bin:${PATH}"
export LD_LIBRARY_PATH="/app/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"

exec /app/bin/"${PROGRAM_NAME}" "$@"
