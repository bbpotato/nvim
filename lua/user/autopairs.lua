local autopairs_ok, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_ok then return end

-- defaults cool with me
autopairs.setup()
