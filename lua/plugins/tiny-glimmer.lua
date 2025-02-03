return {
    "rachartier/tiny-glimmer.nvim",
    event = "VeryLazy",
    opts = {
        enabled = true,

        -- Disable this if you wants to debug highlighting issues
        disable_warnings = true,

        default_animation = "fade",
        refresh_interval_ms = 6,

        overwrite = {
            -- Automatically map keys to overwrite operations
            -- If set to false, you will need to call the API functions to trigger the animations
            -- WARN: You should disable this if you have already mapped these keys
            -- 		 or if you want to use the API functions to trigger the animations
            auto_map = true,
            search = {
                enabled = true,
                default_animation = "fade",

                -- Keys to navigate to the next match
                -- Can also be a function that returns a string
                next_mapping = "nzzzv",

                -- Keys to navigate to the previous match
                -- Can also be a function that returns a string
                prev_mapping = "Nzzzv",
            },
            paste = {
                enabled = true,
                default_animation = "fade",

                -- Keys to paste
                -- Can also be a function that returns a string
                paste_mapping = "p",

                -- Keys to paste above the cursor
                -- Can also be a function that returns a string
                Paste_mapping = "P",
            },
        },


        -- Animations for other operations
        presets = {
            -- Enable animation on cursorline when an event in `on_events` is triggered
            -- Similar to `pulsar.el`
            pulsar = {
                enabled = false,
                on_events = { "CursorMoved", "CmdlineEnter", "WinEnter" },
                default_animation = {
                    name = "fade",

                    settings = {
                        max_duration = 1000,
                        min_duration = 1000,

                        from_color = "DiffDelete",
                        to_color = "Normal",
                    },
                },
            },
        },

        -- Only use if you have a transparent background
        -- It will override the highlight group background color for `to_color` in all animations
        transparency_color = nil,
        animations = {
            fade = {
                max_duration = 400,
                min_duration = 300,
                easing = "inSine",
                chars_for_max_duration = 10,
            },
            reverse_fade = {
                max_duration = 380,
                min_duration = 300,
                easing = "outBack",
                chars_for_max_duration = 10,
            },
            bounce = {
                max_duration = 500,
                min_duration = 400,
                chars_for_max_duration = 20,
                oscillation_count = 1,
            },
            left_to_right = {
                max_duration = 350,
                min_duration = 350,
                min_progress = 0.85,
                chars_for_max_duration = 25,
                lingering_time = 50,
            },
            pulse = {
                max_duration = 800,
                min_duration = 700,
                chars_for_max_duration = 15,
                pulse_count = 1,
                intensity = 1,
            },

            -- You can add as many animations as you want
            custom = {
                -- You can also add as many custom options as you want
                -- Only `max_duration` and `chars_for_max_duration` is required
                max_duration = 350,
                chars_for_max_duration = 40,

                color = hl_visual_bg,

                -- Custom effect function
                -- @param self table The effect object
                -- @param progress number The progress of the animation [0, 1]
                --
                -- Should return a color and a progress value
                -- that represents how much of the animation should be drawn
                -- self.settings represents the settings of the animation that you defined above
                effect = function(self, progress)
                    return self.settings.color, progress
                end,
            },
        },
        virt_text = {
            priority = 2048,
        },
    },
}
