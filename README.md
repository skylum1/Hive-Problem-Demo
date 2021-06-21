# Hive problem demo
## Issue

**The app is able to build in debug mode but it gives gradle error when building in profile mode**

Error Snippet;
```
../../third_party/dart/runtime\vm/compiler/backend/il.h: 1048: error: unreachable code
version=2.12.0 (stable) (Thu Feb 25 19:50:53 2021 +0100) on "windows_simarm64"
pid=10612, thread=8688, isolate_group=isolate(00000198A3D5E850), isolate=isolate(00000198A3D62630)
isolate_instructions=0, vm_instructions=0
  pc 0x00007ff66836bc7c fp 0x00000044313cdeb0 Unknown symbol
-- End of DumpStackTrace
Dart snapshot generator failed with exit code -1073740791


FAILURE: Build failed with an exception.

* Where:
Script 'C:\flutter\packages\flutter_tools\gradle\flutter.gradle' line: 991

* What went wrong:
Execution failed for task ':app:compileFlutterBuildProfile'.
> Process 'command 'C:\flutter\bin\flutter.bat'' finished with non-zero exit value 1

* Try:
Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output. Run with --scan to get full insights.

* Get more help at https://help.gradle.org

BUILD FAILED in 20s
Exception: Gradle task assembleProfile failed with exit code 1

```
### Changes that seems to fix the issue 
1. Not using `mov.type.index` as index to get colour
2. Not registering type adapters
3. Not waiting for `Hive.openBox('boxName')` in function `temp()`
