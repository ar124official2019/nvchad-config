require("auto-session").setup({
  log_level = "error",
  auto_session_create_enabled = true,
  auto_session_enabled = true,
  auto_save_enabled = true,
  auto_session_allowed_dirs = { "/projects/*", "/home/ar/.config/nvim/lua/custom/" },
  sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
})
