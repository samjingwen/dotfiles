return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jdtls = {
          mason = false,
        },
      },
    },
  },

  {
    "mfussenegger/nvim-jdtls",
    opts = {
      project_name = function(root_dir)
        if not root_dir then
          return
        end

        local root = vim.fs.normalize(root_dir)
        return ("%s-%s"):format(vim.fs.basename(root), vim.fn.sha256(root):sub(1, 12))
      end,
      cmd = {
        "jdtls",
        "--jvm-arg=-javaagent:/Users/samjingwen/.local/share/nvim/lombok.jar",
      },
    },
  },
}
