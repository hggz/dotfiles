import os
import ycm_core

cpp_flags = [
        '-Wall',
        '-Wextra',
        '-pedantic',
        '-Wno-unused-parameter',
        '-std=c++14',
        '-stdlib=libc++',

        '-isystem', '/usr/include/c++/v1',
        '-isystem', '/usr/local/include',
        '-isystem', '/usr/lib/clang/3.7.1/include',
        '-isystem', '/usr/include',
        ]

swift_flags = [
        '-I', '/home/ha100/Projects',
        ]

flags = [
'-D__IPHONE_OS_VERSION_MIN_REQUIRED=70000',
'-resource-dir',
'/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/7.0.0',
'-mios-simulator-version-min=7.0',
'-arch i386',
'-fblocks',
'-fobjc-runtime=ios-7.0.0',
'-fencode-extended-block-signature',
'-fobjc-arc',
'-fobjc-exceptions',
'-fexceptions',
'-x',
'objective-c',
'-F/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Library/Frameworks',
'-I/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/System/Library/Frameworks/Foundation.framework/Headers',
'-I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include',
'-I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/7.0.0/include',
'-I/Library/Developer/CommandLineTools/usr/include',
'-isysroot',
'/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk',
'-MMD',
]

SOURCE_EXTENSIONS = [ '.cpp', '.cxx', '.cc', '.c', '.m', '.mm' ]

def FlagsForFile( filename, **kwargs ):
  return {
    'flags': flags,
    'do_cache': True
  }
