#!/bin/sh
# Upstream's /usr/bin/chatgpt is a plain symlink, so on a Wayland session
# Electron falls back to XWayland: Chromium then takes one X refresh rate for
# every output, which pins the app near 60fps on high-refresh and mixed-rate
# multi-monitor setups. Select the native Wayland backend instead.
#
# CODEX_USE_XWAYLAND=1 restores the upstream XWayland path.

if [ -n "${WAYLAND_DISPLAY}" ] && [ -z "${CODEX_USE_XWAYLAND}" ]; then
	set -- --ozone-platform=wayland \
		--enable-features=UseOzonePlatform,WaylandWindowDecorations \
		--enable-wayland-ime \
		--wayland-text-input-version=3 \
		"$@"
fi

exec /usr/lib/chatgpt/ChatGPT "$@"
