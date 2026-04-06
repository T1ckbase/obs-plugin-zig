# obs-plugin-zig

An OBS Studio plugin written in Zig. It only works on Windows, and I don’t think this setup is correct.

## Build

```sh
zig build -Doptimize=ReleaseFast
```

The packaged plugin is written to:

```text
zig-out/obs-plugin-zig/
```

To test it in OBS, copy that folder to:

```text
C:\ProgramData\obs-studio\plugins\
```
