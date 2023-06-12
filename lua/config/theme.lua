local monokai = require('monokai')
local palette = monokai.pro
monokai.setup {
  palette = palette,
  custom_hlgroups = {
    -- NvimTree Configurations::
    NvimTreeSymlink                   = {
      fg = palette.green,
      style = 'underline',
    },
    NvimTreeSymlinkIcon               = {
      fg = palette.green,
      style = 'underline',
    },
    NvimTreeSymlinkFolderName         = {
      fg = palette.green,
      style = 'underline',
    },
    NvimTreeFolderName                = {
      fg = palette.green,
    },
    NvimTreeRootFolder                = {
      fg = palette.base8,
    },
    NvimTreeFolderIcon                = {
      fg = palette.green,
    },
    NvimTreeOpenedFolderIcon          = {
      fg = palette.green,
    },
    NvimTreeClosedFolderIcon          = {
      fg = palette.green,
    },
    NvimTreeFileIcon                  = {
      fg = palette.aqua,
    },
    NvimTreeEmptyFolderName           = {
      fg = palette.green,
    },
    NvimTreeOpenedFolderName          = {
      fg = palette.aqua,
    },
    NvimTreeExecFile                  = {
      fg = palette.green,
    },
    NvimTreeOpenedFile                = {
      fg = palette.aqua,
    },
    NvimTreeModifiedFile              = {
      fg = palette.yellow,
    },
    NvimTreeSpecialFile               = {
      fg = palette.purple
    },
    NvimTreeImageFile                 = {
      fg = palette.purple
    },
    NvimTreeIndentMarker              = {
      fg = palette.base8,
    },

    NvimTreeLspDiagnosticsError       = {
      fg = palette.red,
    },
    NvimTreeLspDiagnosticsWarning     = {
      fg = palette.yellow,
    },
    NvimTreeLspDiagnosticsInformation = {
      fg = palette.blue,
    },
    NvimTreeLspDiagnosticsHint        = {
      fg = palette.aqua,
    },

    NvimTreeGitDirty                  = {
      fg = palette.red,
    },
    NvimTreeGitStaged                 = {
      fg = palette.green,
    },
    NvimTreeGitMerge                  = {
      fg = palette.yellow,
    },
    NvimTreeGitRenamed                = {
      fg = palette.aqua,
    },
    NvimTreeGitNew                    = {
      fg = palette.aqua,
    },
    NvimTreeGitDeleted                = {
      fg = palette.red,
    },
    NvimTreeGitIgnored                = {
      fg = palette.base8,
    },

    NvimTreeWindowPicker              = {
      fg = palette.green,
      bg = palette.base8,
      style = 'bold',
    },

    NvimTreeNormal                    = {
      fg = palette.base8,
      bg = palette.base00,
    },
    NvimTreeNormalFloat               = {
      fg = palette.base8,
      bg = palette.base00,
    },
    NvimTreeEndOfBuffer               = {
      fg = palette.base8,
      bg = palette.base00,
    },
    -- NvimTreeCursorLine                = {
      -- fg = palette.base8,
      -- bg = palette.base01,
    -- },
    NvimTreeCursorLineNr              = {
      fg = palette.base8,
      bg = palette.base01,
    },
    NvimTreeLineNr                    = {
      fg = palette.base8,
      bg = palette.base00,
    },
    NvimTreeWinSeparator              = {
      fg = palette.base8,
      bg = palette.base00,
    },
    NvimTreeCursorColumn              = {
      fg = palette.base8,
      bg = palette.base01,
    },

    NvimTreeFileDirty                 = {
      fg = palette.red,
    },
    NvimTreeFileStaged                = {
      fg = palette.green,
    },
    NvimTreeFileMerge                 = {
      fg = palette.yellow,
    },
    NvimTreeFileRenamed               = {
      fg = palette.aqua,
    },
    NvimTreeFileNew                   = {
      fg = palette.aqua,
    },
    NvimTreeFileDeleted               = {
      fg = palette.red,
    },
    NvimTreeFileIgnored               = {
      fg = palette.base8,
    },


    NvimTreeLiveFilterPrefix = {
      fg = palette.green,
    },
    NvimTreeLiveFilterValue = {
      fg = palette.aqua,
    },

    NvimTreeBookmark = {
      fg = palette.yellow,
    },
  }
}


vim.opt.termguicolors = true
