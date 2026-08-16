return {
  "nvim-mini/mini.files",
  init = function()
    local group = vim.api.nvim_create_augroup("mini_files_quick_look", { clear = true })
    vim.api.nvim_create_autocmd("User", {
      group = group,
      pattern = "MiniFilesBufferCreate",
      callback = function(args)
        vim.keymap.set("n", "P", function()
          local entry = require("mini.files").get_fs_entry()
          if not entry or entry.fs_type ~= "file" then
            vim.notify("Select a file to preview", vim.log.levels.WARN)
            return
          end

          vim.system({ "qlmanage", "-p", entry.path }, {
            detach = true,
            stdout = false,
            stderr = false,
          })
        end, { buffer = args.data.buf_id, desc = "Preview with Quick Look" })
      end,
    })
  end,
}
