--main_qtest.lua
import("kernel.lua")

hive.startup(function() --初始化test
    --import("qtest/oop_test.lua")
    -- import("qtest/etcd_test.lua")
    --import("qtest/json_test.lua")
    --import("qtest/pack_test.lua")
    --import("qtest/mongo_test.lua")
    --import("qtest/router_test.lua")
    --import("qtest/protobuf_test.lua")
    --import("qtest/http_test.lua")
    --import("qtest/rpc_test.lua")
    --import("qtest/log_test.lua")
    --import("qtest/zset_test.lua")
    --import("qtest/crypt_test.lua")

    --import("qtest/mongo_test.lua")
    --import("qtest/luaext_test.lua")
    --import("qtest/timer_test.lua")
    --import("qtest/crab_test.lua")
    --import("qtest/buffer_test.lua")
    --import("qtest/redis_test.lua")
    --import("qtest/mysql_test.lua")
    --import("qtest/aoi_test.lua")
    --import("qtest/jps_test.lua")
    --import("qtest/zset_test.lua")
    --import("qtest/prof_test.lua")
    import("qtest/lrandom_test.lua")
end)