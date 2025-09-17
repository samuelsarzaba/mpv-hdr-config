# Jellyfin MPV Shim Configuration

This repository contains configuration files for [jellyfin-mpv-shim](https://github.com/jellyfin/jellyfin-mpv-shim), a cast client for Jellyfin that runs MPV.

## Files

- `mpv.conf` - MPV configuration with optimized settings for video playback
- `scripts/` - Custom MPV scripts directory

## Configuration Highlights

The MPV configuration includes:

- **High-quality profile** for optimal playback
- **Hardware decoding** using NVDEC (NVIDIA)
- **GPU rendering** with Vulkan API
- **Motion interpolation** for smooth playback
- **HDR/SDR profiles** that auto-apply based on content type

## Usage

These configuration files should be placed in your jellyfin-mpv-shim configuration directory:

- Windows: `%APPDATA%\jellyfin-mpv-shim\`
- Linux: `~/.config/jellyfin-mpv-shim/`
- macOS: `~/Library/Application Support/jellyfin-mpv-shim/`