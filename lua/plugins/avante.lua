return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false, -- set this if you want to always pull the latest change
    opts = {
      provider = "openai",
      auto_suggestions_provider = "openai", -- Since auto-suggestions are a high-frequency operation and therefore expensive, it is recommended to specify an inexpensive provider or even a free provider: copilot
      openai = {
        endpoint = "https://api.deepseek.com/v1",
        model = "deepseek-chat",
        timeout = 30000, -- Timeout in milliseconds
        temperature = 0,
        max_tokens = 4096,
        -- optional
        api_key_name = "DEEPSEEK_API_KEY", -- default OPENAI_API_KEY if not set
        project_context = {
          enabled = true,
          max_files = 50,
          max_tokens_context = 4096,
          ignore_patterns = {
            "%.git",
            "%.worktree",
            "__pycache__",
            "node_modules",
            "__tests__",
            "e2e-tests",
            "%.github",
            "%.husky",
            "%.vscode",
            "fonts",
            "%.ttf",
            "images",
            "img",
            "%.png",
            "%.gif",
            "%.zip",
            "%.jar",
            "%.min.js",
            "%.svg",
            "%lock.json",
            "docker",
            "%.platform",
            "%.htaccess",
            "%.storybook",
            "dist",
            "%.lock",
            "locales",
          },
        },
        cache = {
          enabled = true,
          ttl = 3600,
          max_entries = 1000,
          cache_dir = vim.fn.stdpath("cache") .. "/avante",
        },
        model_params = {
          top_p = 0.9,
          frequency_penalty = 0.2,
          presence_penalty = 0.2,
          stop_sequences = { "\n\n" },
        },
        -- system_prompt = "You are a senior fullstack developer with expertise in modern web technologies. Always respond in English. Provide practical, production-ready solutions. Focus on best practices, security, and performance. When showing code, include only relevant sections with clear explanations. Be concise but thorough. Specialize in: JavaScript/TypeScript, React, Node.js, Python, Golang, databases, and cloud architectures. Communication style: professional mentor with a focus on practical implementation.",
      },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "lewis6991/impatient.nvim",
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
