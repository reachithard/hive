--buffer_test.lua
local lbuffer      = require("lbuffer")
local lcrypt       = require("lcrypt")

local log_debug    = logger.debug
local log_dump     = logger.dump
local lhex_encode  = lcrypt.hex_encode
local lencode      = lbuffer.encode
local ldecode      = lbuffer.decode
local lserialize   = lbuffer.serialize
local lunserialize = lbuffer.unserialize

--serialize
----------------------------------------------------------------
local m            = { f = 3 }
local t            = {
    [3.63] = 1, 2, 3, 4,
    a      = 2,
    b      = {
        s = 3, d = "4"
    },
    e      = true,
    g      = m,
}

local ss           = lserialize(t)
log_debug("serialize-> aaa: %s", ss)
local tt = lunserialize(ss)
for k, v in pairs(tt) do
    log_debug("unserialize k=%s, v=%s", k, v)
end

--encode
local a  = { a = 1, c = { a = 2 } }
local es = lencode(a)
log_debug("encode-> aa: %d, %s", #es, lhex_encode(es))
local da = ldecode(es)
log_debug("decode-> %s", da)

--dump
log_dump("dump-> a: %s", t)