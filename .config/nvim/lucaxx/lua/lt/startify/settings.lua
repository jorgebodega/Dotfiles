vim.g.startify_session_dir = '~/.config/nvim/session'

-- vim.g.startify_custom_header = [[
--           _                 _                     _
--          | |               | |                   (_)
--          | |_   _  ___ __ _| |_ _ __ __ _ _________
--          | | | | |/ __/ _` | __| ''__/ _` |_  /_  / |
--          | | |_| | (_| (_| | |_| | | (_| |/ / / /| |
--          |_|\__,_|\___\__,_|\__|_|  \__,_/___/___|_|
--         ]]

vim.g.startify_lists = {
    {type = 'sessions', header = {'   Sessions'}},
    {type = 'bookmarks', header = {'   Bookmarks'}},
    {type = 'files', header = {'   MRU'}}
    -- { type = 'dir',       header = { '   MRU '. getcwd() } },
}
