-- Auto HDR/SDR Profile Switcher
-- Automatically applies hdr or sdr profile based on video content

local function detect_and_apply_profile()
    local video_params = mp.get_property_native("video-params")

    if not video_params then
        return
    end

    local gamma = video_params.gamma or ""
    local primaries = video_params.primaries or ""

    -- Check for HDR indicators
    local is_hdr = false

    -- Check for HDR gamma/transfer functions
    if gamma == "pq" or gamma == "hlg" then
        is_hdr = true
    end

    -- Check for HDR primaries
    if primaries == "bt.2020" then
        is_hdr = true
    end

    -- Apply appropriate profile
    if is_hdr then
        mp.commandv("apply-profile", "hdr")
        mp.osd_message("HDR profile applied", 2)
    else
        mp.commandv("apply-profile", "sdr")
        mp.osd_message("SDR profile applied", 2)
    end
end

-- Apply profile when file loads
mp.register_event("file-loaded", detect_and_apply_profile)

-- Also check when video track changes
mp.observe_property("video-params", "native", detect_and_apply_profile)