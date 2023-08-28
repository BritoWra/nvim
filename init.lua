local global = vim.g
local o = vim.o
local opt = vim.opt

global.mapleader = " "

o.relativenumber = true
o.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true 

require("plugins-setup")
