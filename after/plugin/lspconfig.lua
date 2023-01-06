local lspconfig = require('lspconfig')
local lspstatus = require('lsp-status')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.tbl_extend("keep", capabilities, lspstatus.capabilities)

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
    snippet = {
        expand = function(args)
--            vim.fn["vsnip#anonymous"](args.body)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm( { select = true } ),
        ['<C-Space>'] = cmp.mapping.complete(),
    }),

    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer' },
    })
})

local on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set( "n", "gd", function() vim.lsp.buf.definition() end, opts )
    vim.keymap.set( "n", "K", function() vim.lsp.buf.hover() end, opts )
    vim.keymap.set( "n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts )
    vim.keymap.set( "n", "<leader>vd", function() vim.diagnostic.open_float() end, opts )
    vim.keymap.set( "n", "[d", function() vim.diagnostic.goto_next() end, opts )
    vim.keymap.set( "n", "]d", function() vim.diagnostic.goto_prev() end, opts )
    vim.keymap.set( "n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts )
    vim.keymap.set( "n", "<leader>vrr", function() vim.lsp.buf.references() end, opts )
    vim.keymap.set( "n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts )
--    vim.keymap.set( "n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts )

    if client.server_capabilities.goto_definition then
        buf_set_option("tagfunc", "v:lua.vim.lsp.tagfunc")
    end

    lspstatus.on_attach(client)
end

lspconfig.clangd.setup {
    cmd = {'clangd', '--header-insertion=never',},
    capabilities = capabilities,
    on_attach = on_attach,
}

lspconfig.ols.setup {
    cmd = { 'ols' },
    capabilities = capabilities,
    on_attach = on_attach,
}
