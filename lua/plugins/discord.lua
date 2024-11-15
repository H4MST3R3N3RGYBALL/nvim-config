return {
  'vyfor/cord.nvim',
  build = './build || .\\build',
  event = 'VeryLazy',
  opts = {
    editor = {
        client = "kaivim",
    }
  }, -- calls require('cord').setup()
}
