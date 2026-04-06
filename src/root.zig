const std = @import("std");
const module = @import("obs_module.zig");
const obs = module.obs;
const manifest = @import("build.zig.zon");

export fn obs_module_load() bool {
    module.log(obs.LOG_INFO, "plugin loaded successfully (version {s})", .{manifest.version});
    module.log(obs.LOG_INFO, "{s}", .{module.text("HelloWorld")});
    return true;
}

export fn obs_module_unload() void {
    module.log(obs.LOG_INFO, "plugin unloaded", .{});
}
