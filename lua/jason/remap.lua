local remap = vim.api.nvim_set_keymap

-- Add a blank line below the current line with <leader>o while keeping the cursor in the same position
remap('n', '<leader>o', ':<C-u>call append(line("."),   repeat([""], v:count1))<CR>', { noremap = true })
remap('n', '<leader>O', ':<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>', { noremap = true })

-- Change px to rem
remap('n', '<leader>px', ':s#:\\s\\?\\(\\d\\+\\)px#\\=": " . string(str2float(submatch(1)) / 16) . "rem"#g<CR>',
	{ noremap = true })
