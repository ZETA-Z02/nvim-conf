return {
  "zbirenbaum/copilot.lua",
  event = "InsertEnter", -- Activa copilot al entrar en modo insert
  opts = {
    suggestion = {
      auto_trigger = true, -- Habilita sugerencias automáticas
      debounce = 50, -- Menos delay para mostrar sugerencias (más rápido)
      keymap = {
        accept = "<C-l>", -- Aceptar sugerencia con Ctrl + L
        next = "<C-]>", -- Siguiente sugerencia
        prev = "<C-[>", -- Sugerencia anterior
        dismiss = "<C-e>", -- Descarta sugerencia
      },
    },
    panel = { enabled = false }, -- Desactiva panel flotante para mejorar velocidad
    filetypes = {
      yaml = false,
      markdown = false,
      help = true,
      gitcommit = false,
      gitrebase = false,
      hgcommit = false,
      svn = false,
      cvs = false,
      ["."] = false,
    },
  },
}
