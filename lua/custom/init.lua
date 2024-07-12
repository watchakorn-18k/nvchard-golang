vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
      -- ตรวจสอบว่าไม่มีการเปิดไฟล์หรือไดเรกทอรีเมื่อเริ่ม Neovim
      if vim.fn.argc() == 0 then
        require("persistence").load({ last = true })
      end
    end,
  })