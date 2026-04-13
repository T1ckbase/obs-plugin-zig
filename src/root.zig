const std = @import("std");
const module = @import("obs_module.zig");
const obs = module.obs;
const manifest = @import("build.zig.zon");

export fn obs_module_load() bool {
    module.log.info("plugin loaded successfully (version {s})", .{manifest.version});
    module.log.info("{s}", .{module.text("HelloWorld")});
    return true;
}

export fn obs_module_unload() void {
    module.log.info("plugin unloaded", .{});
}
