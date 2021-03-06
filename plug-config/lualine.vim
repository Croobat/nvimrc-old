lua << END
require('lualine').get_config()
require('lualine').setup()

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename','filesize'},
    lualine_x = {'diagnostics','encoding',
        { 'fileformat',
            symbols = {
                unix = 'unix',
                dos = 'dos',
                mac = 'mac',
            }
        },
        { 'filetype',
            colored = false;
        }
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
tabline = {
    lualine_a = {'buffers'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'tabs'}
},
  extensions = {
    'quickfix',
    'fzf'
      },
}
END
