; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [260 x i32] [
	i32 26230656, ; 0: Microsoft.Extensions.DependencyModel => 0x1903f80 => 28
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 84
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 113
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 108
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 98
	i32 117431740, ; 5: System.Runtime.InteropServices => 0x6ffddbc => 125
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 98
	i32 159306688, ; 7: System.ComponentModel.Annotations => 0x97ed3c0 => 2
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 65
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 99
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 63
	i32 220171995, ; 11: System.Diagnostics.Debug => 0xd1f8edb => 7
	i32 230216969, ; 12: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 79
	i32 230752869, ; 13: Microsoft.CSharp.dll => 0xdc10265 => 14
	i32 232815796, ; 14: System.Web.Services => 0xde07cb4 => 121
	i32 261689757, ; 15: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 68
	i32 278686392, ; 16: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 83
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 77
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 55
	i32 321597661, ; 19: System.Numerics => 0x132b30dd => 46
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 81
	i32 347068432, ; 21: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 38
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 45
	i32 441335492, ; 23: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 67
	i32 442521989, ; 24: Xamarin.Essentials => 0x1a605985 => 107
	i32 442565967, ; 25: System.Collections => 0x1a61054f => 5
	i32 450948140, ; 26: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 76
	i32 465846621, ; 27: mscorlib => 0x1bc4415d => 34
	i32 469710990, ; 28: System.dll => 0x1bff388e => 44
	i32 476646585, ; 29: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 77
	i32 486930444, ; 30: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 88
	i32 513247710, ; 31: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 32
	i32 526420162, ; 32: System.Transactions.dll => 0x1f6088c2 => 115
	i32 539058512, ; 33: Microsoft.Extensions.Logging => 0x20216150 => 30
	i32 545304856, ; 34: System.Runtime.Extensions => 0x2080b118 => 128
	i32 548916678, ; 35: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 12
	i32 598699541, ; 36: Xak_mobile2.Android => 0x23af6e15 => 0
	i32 605376203, ; 37: System.IO.Compression.FileSystem => 0x24154ecb => 119
	i32 616333105, ; 38: Xak_mobile2.Android.dll => 0x24bc7f31 => 0
	i32 627609679, ; 39: Xamarin.AndroidX.CustomView => 0x2568904f => 72
	i32 662205335, ; 40: System.Text.Encodings.Web.dll => 0x27787397 => 50
	i32 663517072, ; 41: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 104
	i32 666292255, ; 42: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 60
	i32 672442732, ; 43: System.Collections.Concurrent => 0x2814a96c => 4
	i32 690569205, ; 44: System.Xml.Linq.dll => 0x29293ff5 => 53
	i32 748832960, ; 45: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 36
	i32 775507847, ; 46: System.IO.Compression => 0x2e394f87 => 118
	i32 789151979, ; 47: Microsoft.Extensions.Options => 0x2f0980eb => 31
	i32 809851609, ; 48: System.Drawing.Common.dll => 0x30455ad9 => 117
	i32 843511501, ; 49: Xamarin.AndroidX.Print => 0x3246f6cd => 95
	i32 928116545, ; 50: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 113
	i32 967690846, ; 51: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 81
	i32 974778368, ; 52: FormsViewGroup.dll => 0x3a19f000 => 10
	i32 975236339, ; 53: System.Diagnostics.Tracing => 0x3a20ecf3 => 126
	i32 992768348, ; 54: System.Collections.dll => 0x3b2c715c => 5
	i32 1012816738, ; 55: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 97
	i32 1028951442, ; 56: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 26
	i32 1035644815, ; 57: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 59
	i32 1042160112, ; 58: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 110
	i32 1052210849, ; 59: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 85
	i32 1098259244, ; 60: System => 0x41761b2c => 44
	i32 1099692271, ; 61: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 16
	i32 1157931901, ; 62: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 17
	i32 1175144683, ; 63: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 102
	i32 1178241025, ; 64: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 92
	i32 1202000627, ; 65: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 17
	i32 1204270330, ; 66: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 60
	i32 1204575371, ; 67: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 22
	i32 1267360935, ; 68: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 103
	i32 1292207520, ; 69: SQLitePCLRaw.core.dll => 0x4d0585a0 => 37
	i32 1293217323, ; 70: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 74
	i32 1365406463, ; 71: System.ServiceModel.Internals.dll => 0x516272ff => 123
	i32 1376866003, ; 72: Xamarin.AndroidX.SavedState => 0x52114ed3 => 97
	i32 1379779777, ; 73: System.Resources.ResourceManager => 0x523dc4c1 => 3
	i32 1395857551, ; 74: Xamarin.AndroidX.Media.dll => 0x5333188f => 89
	i32 1406073936, ; 75: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 69
	i32 1411638395, ; 76: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 48
	i32 1457743152, ; 77: System.Runtime.Extensions.dll => 0x56e36530 => 128
	i32 1460219004, ; 78: Xamarin.Forms.Xaml => 0x57092c7c => 111
	i32 1461234159, ; 79: System.Collections.Immutable.dll => 0x5718a9ef => 41
	i32 1462112819, ; 80: System.IO.Compression.dll => 0x57261233 => 118
	i32 1469204771, ; 81: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 58
	i32 1470490898, ; 82: Microsoft.Extensions.Primitives => 0x57a5e912 => 32
	i32 1479771757, ; 83: System.Collections.Immutable => 0x5833866d => 41
	i32 1490351284, ; 84: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 15
	i32 1582372066, ; 85: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 73
	i32 1592978981, ; 86: System.Runtime.Serialization.dll => 0x5ef2ee25 => 9
	i32 1622152042, ; 87: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 87
	i32 1624863272, ; 88: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 106
	i32 1636350590, ; 89: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 71
	i32 1639515021, ; 90: System.Net.Http.dll => 0x61b9038d => 8
	i32 1657153582, ; 91: System.Runtime => 0x62c6282e => 49
	i32 1658241508, ; 92: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 100
	i32 1658251792, ; 93: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 112
	i32 1670060433, ; 94: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 68
	i32 1688112883, ; 95: Microsoft.Data.Sqlite => 0x649e8ef3 => 15
	i32 1689493916, ; 96: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 18
	i32 1701541528, ; 97: System.Diagnostics.Debug.dll => 0x656b7698 => 7
	i32 1711441057, ; 98: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 38
	i32 1724341031, ; 99: Xak_mobile2.dll => 0x66c75b27 => 54
	i32 1726116996, ; 100: System.Reflection.dll => 0x66e27484 => 127
	i32 1729485958, ; 101: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 64
	i32 1766324549, ; 102: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 99
	i32 1770582343, ; 103: Microsoft.Extensions.Logging.dll => 0x6988f147 => 30
	i32 1776026572, ; 104: System.Core.dll => 0x69dc03cc => 42
	i32 1788241197, ; 105: Xamarin.AndroidX.Fragment => 0x6a96652d => 76
	i32 1796167890, ; 106: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 12
	i32 1808609942, ; 107: Xamarin.AndroidX.Loader => 0x6bcd3296 => 87
	i32 1813201214, ; 108: Xamarin.Google.Android.Material => 0x6c13413e => 112
	i32 1818569960, ; 109: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 93
	i32 1828688058, ; 110: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 29
	i32 1867746548, ; 111: Xamarin.Essentials.dll => 0x6f538cf4 => 107
	i32 1878053835, ; 112: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 111
	i32 1885316902, ; 113: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 61
	i32 1886040351, ; 114: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 20
	i32 1894524299, ; 115: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 16
	i32 1900610850, ; 116: System.Resources.ResourceManager.dll => 0x71490522 => 3
	i32 1919157823, ; 117: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 90
	i32 1968388702, ; 118: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 25
	i32 2011961780, ; 119: System.Buffers.dll => 0x77ec19b4 => 40
	i32 2014489277, ; 120: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 20
	i32 2019465201, ; 121: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 85
	i32 2048278909, ; 122: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 24
	i32 2055257422, ; 123: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 82
	i32 2079903147, ; 124: System.Runtime.dll => 0x7bf8cdab => 49
	i32 2090596640, ; 125: System.Numerics.Vectors => 0x7c9bf920 => 47
	i32 2097448633, ; 126: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 78
	i32 2103459038, ; 127: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 39
	i32 2126786730, ; 128: Xamarin.Forms.Platform.Android => 0x7ec430aa => 109
	i32 2181898931, ; 129: Microsoft.Extensions.Options.dll => 0x820d22b3 => 31
	i32 2192057212, ; 130: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 29
	i32 2197979891, ; 131: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 28
	i32 2201231467, ; 132: System.Net.Http => 0x8334206b => 8
	i32 2217644978, ; 133: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 102
	i32 2244775296, ; 134: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 88
	i32 2252897993, ; 135: Microsoft.EntityFrameworkCore => 0x86487ec9 => 18
	i32 2256548716, ; 136: Xamarin.AndroidX.MultiDex => 0x8680336c => 90
	i32 2261435625, ; 137: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 80
	i32 2266799131, ; 138: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 23
	i32 2279755925, ; 139: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 96
	i32 2315684594, ; 140: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 56
	i32 2371007202, ; 141: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 25
	i32 2409053734, ; 142: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 94
	i32 2435904999, ; 143: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 122
	i32 2465273461, ; 144: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 36
	i32 2465532216, ; 145: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 67
	i32 2471841756, ; 146: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 147: Java.Interop.dll => 0x93918882 => 11
	i32 2501346920, ; 148: System.Data.DataSetExtensions => 0x95178668 => 116
	i32 2505896520, ; 149: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 84
	i32 2562349572, ; 150: Microsoft.CSharp => 0x98ba5a04 => 14
	i32 2570120770, ; 151: System.Text.Encodings.Web => 0x9930ee42 => 50
	i32 2581819634, ; 152: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 103
	i32 2620871830, ; 153: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 71
	i32 2624644809, ; 154: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 75
	i32 2633051222, ; 155: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 83
	i32 2634653062, ; 156: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 19
	i32 2701096212, ; 157: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 100
	i32 2732626843, ; 158: Xamarin.AndroidX.Activity => 0xa2e0939b => 55
	i32 2737747696, ; 159: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 58
	i32 2766581644, ; 160: Xamarin.Forms.Core => 0xa4e6af8c => 108
	i32 2778768386, ; 161: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 105
	i32 2810250172, ; 162: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 69
	i32 2819470561, ; 163: System.Xml.dll => 0xa80db4e1 => 52
	i32 2847789619, ; 164: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 19
	i32 2853208004, ; 165: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 105
	i32 2855708567, ; 166: Xamarin.AndroidX.Transition => 0xaa36a797 => 101
	i32 2901442782, ; 167: System.Reflection => 0xacf080de => 127
	i32 2903344695, ; 168: System.ComponentModel.Composition => 0xad0d8637 => 120
	i32 2905242038, ; 169: mscorlib.dll => 0xad2a79b6 => 34
	i32 2916838712, ; 170: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 106
	i32 2919462931, ; 171: System.Numerics.Vectors.dll => 0xae037813 => 47
	i32 2921128767, ; 172: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 57
	i32 2978675010, ; 173: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 74
	i32 3024354802, ; 174: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 79
	i32 3044182254, ; 175: FormsViewGroup => 0xb57288ee => 10
	i32 3057625584, ; 176: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 91
	i32 3069363400, ; 177: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 21
	i32 3111772706, ; 178: System.Runtime.Serialization => 0xb979e222 => 9
	i32 3124832203, ; 179: System.Threading.Tasks.Extensions => 0xba4127cb => 124
	i32 3147165239, ; 180: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 126
	i32 3195844289, ; 181: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 21
	i32 3204380047, ; 182: System.Data.dll => 0xbefef58f => 114
	i32 3211777861, ; 183: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 73
	i32 3220365878, ; 184: System.Threading => 0xbff2e236 => 6
	i32 3247949154, ; 185: Mono.Security => 0xc197c562 => 129
	i32 3258312781, ; 186: Xamarin.AndroidX.CardView => 0xc235e84d => 64
	i32 3265893370, ; 187: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 124
	i32 3267021929, ; 188: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 62
	i32 3280506390, ; 189: System.ComponentModel.Annotations.dll => 0xc3888e16 => 2
	i32 3286872994, ; 190: SQLite-net.dll => 0xc3e9b3a2 => 35
	i32 3317135071, ; 191: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 72
	i32 3317144872, ; 192: System.Data => 0xc5b79d28 => 114
	i32 3340431453, ; 193: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 61
	i32 3346324047, ; 194: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 92
	i32 3353484488, ; 195: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 78
	i32 3358260929, ; 196: System.Text.Json => 0xc82afec1 => 51
	i32 3360279109, ; 197: SQLitePCLRaw.core => 0xc849ca45 => 37
	i32 3362522851, ; 198: Xamarin.AndroidX.Core => 0xc86c06e3 => 70
	i32 3366347497, ; 199: Java.Interop => 0xc8a662e9 => 11
	i32 3374999561, ; 200: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 96
	i32 3395150330, ; 201: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 48
	i32 3404865022, ; 202: System.ServiceModel.Internals => 0xcaf21dfe => 123
	i32 3421170118, ; 203: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 24
	i32 3428513518, ; 204: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 27
	i32 3429136800, ; 205: System.Xml => 0xcc6479a0 => 52
	i32 3430777524, ; 206: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 207: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 75
	i32 3476120550, ; 208: Mono.Android => 0xcf3163e6 => 33
	i32 3485117614, ; 209: System.Text.Json.dll => 0xcfbaacae => 51
	i32 3486566296, ; 210: System.Transactions => 0xcfd0c798 => 115
	i32 3493954962, ; 211: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 66
	i32 3501239056, ; 212: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 62
	i32 3509114376, ; 213: System.Xml.Linq => 0xd128d608 => 53
	i32 3536029504, ; 214: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 109
	i32 3567349600, ; 215: System.ComponentModel.Composition.dll => 0xd4a16f60 => 120
	i32 3618140916, ; 216: Xamarin.AndroidX.Preference => 0xd7a872f4 => 94
	i32 3627220390, ; 217: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 95
	i32 3632359727, ; 218: Xamarin.Forms.Platform => 0xd881692f => 110
	i32 3633644679, ; 219: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 57
	i32 3641597786, ; 220: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 82
	i32 3645089577, ; 221: System.ComponentModel.DataAnnotations => 0xd943a729 => 122
	i32 3657292374, ; 222: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 23
	i32 3672681054, ; 223: Mono.Android.dll => 0xdae8aa5e => 33
	i32 3676310014, ; 224: System.Web.Services.dll => 0xdb2009fe => 121
	i32 3682565725, ; 225: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 63
	i32 3684561358, ; 226: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 66
	i32 3689375977, ; 227: System.Drawing.Common => 0xdbe768e9 => 117
	i32 3718780102, ; 228: Xamarin.AndroidX.Annotation => 0xdda814c6 => 56
	i32 3724971120, ; 229: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 91
	i32 3748608112, ; 230: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 43
	i32 3754567612, ; 231: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 39
	i32 3758932259, ; 232: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 80
	i32 3786282454, ; 233: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 65
	i32 3821721477, ; 234: Xak_mobile2 => 0xe3cad785 => 54
	i32 3822602673, ; 235: Xamarin.AndroidX.Media => 0xe3d849b1 => 89
	i32 3829621856, ; 236: System.Numerics.dll => 0xe4436460 => 46
	i32 3841636137, ; 237: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 26
	i32 3849253459, ; 238: System.Runtime.InteropServices.dll => 0xe56ef253 => 125
	i32 3876362041, ; 239: SQLite-net => 0xe70c9739 => 35
	i32 3885922214, ; 240: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 101
	i32 3894448521, ; 241: Microsoft.Bcl.HashCode => 0xe8209189 => 13
	i32 3896106733, ; 242: System.Collections.Concurrent.dll => 0xe839deed => 4
	i32 3896760992, ; 243: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 70
	i32 3920810846, ; 244: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 119
	i32 3921031405, ; 245: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 104
	i32 3931092270, ; 246: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 93
	i32 3945713374, ; 247: System.Data.DataSetExtensions.dll => 0xeb2ecede => 116
	i32 3955647286, ; 248: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 59
	i32 4025784931, ; 249: System.Memory => 0xeff49a63 => 45
	i32 4073602200, ; 250: System.Threading.dll => 0xf2ce3c98 => 6
	i32 4101842092, ; 251: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 22
	i32 4105002889, ; 252: Mono.Security.dll => 0xf4ad5f89 => 129
	i32 4126470640, ; 253: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 27
	i32 4151237749, ; 254: System.Core => 0xf76edc75 => 42
	i32 4182413190, ; 255: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 86
	i32 4213026141, ; 256: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 43
	i32 4260525087, ; 257: System.Buffers => 0xfdf2741f => 40
	i32 4263658931, ; 258: Microsoft.Bcl.HashCode.dll => 0xfe2245b3 => 13
	i32 4292120959 ; 259: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 86
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [260 x i32] [
	i32 28, i32 84, i32 113, i32 108, i32 98, i32 125, i32 98, i32 2, ; 0..7
	i32 65, i32 99, i32 63, i32 7, i32 79, i32 14, i32 121, i32 68, ; 8..15
	i32 83, i32 77, i32 55, i32 46, i32 81, i32 38, i32 45, i32 67, ; 16..23
	i32 107, i32 5, i32 76, i32 34, i32 44, i32 77, i32 88, i32 32, ; 24..31
	i32 115, i32 30, i32 128, i32 12, i32 0, i32 119, i32 0, i32 72, ; 32..39
	i32 50, i32 104, i32 60, i32 4, i32 53, i32 36, i32 118, i32 31, ; 40..47
	i32 117, i32 95, i32 113, i32 81, i32 10, i32 126, i32 5, i32 97, ; 48..55
	i32 26, i32 59, i32 110, i32 85, i32 44, i32 16, i32 17, i32 102, ; 56..63
	i32 92, i32 17, i32 60, i32 22, i32 103, i32 37, i32 74, i32 123, ; 64..71
	i32 97, i32 3, i32 89, i32 69, i32 48, i32 128, i32 111, i32 41, ; 72..79
	i32 118, i32 58, i32 32, i32 41, i32 15, i32 73, i32 9, i32 87, ; 80..87
	i32 106, i32 71, i32 8, i32 49, i32 100, i32 112, i32 68, i32 15, ; 88..95
	i32 18, i32 7, i32 38, i32 54, i32 127, i32 64, i32 99, i32 30, ; 96..103
	i32 42, i32 76, i32 12, i32 87, i32 112, i32 93, i32 29, i32 107, ; 104..111
	i32 111, i32 61, i32 20, i32 16, i32 3, i32 90, i32 25, i32 40, ; 112..119
	i32 20, i32 85, i32 24, i32 82, i32 49, i32 47, i32 78, i32 39, ; 120..127
	i32 109, i32 31, i32 29, i32 28, i32 8, i32 102, i32 88, i32 18, ; 128..135
	i32 90, i32 80, i32 23, i32 96, i32 56, i32 25, i32 94, i32 122, ; 136..143
	i32 36, i32 67, i32 1, i32 11, i32 116, i32 84, i32 14, i32 50, ; 144..151
	i32 103, i32 71, i32 75, i32 83, i32 19, i32 100, i32 55, i32 58, ; 152..159
	i32 108, i32 105, i32 69, i32 52, i32 19, i32 105, i32 101, i32 127, ; 160..167
	i32 120, i32 34, i32 106, i32 47, i32 57, i32 74, i32 79, i32 10, ; 168..175
	i32 91, i32 21, i32 9, i32 124, i32 126, i32 21, i32 114, i32 73, ; 176..183
	i32 6, i32 129, i32 64, i32 124, i32 62, i32 2, i32 35, i32 72, ; 184..191
	i32 114, i32 61, i32 92, i32 78, i32 51, i32 37, i32 70, i32 11, ; 192..199
	i32 96, i32 48, i32 123, i32 24, i32 27, i32 52, i32 1, i32 75, ; 200..207
	i32 33, i32 51, i32 115, i32 66, i32 62, i32 53, i32 109, i32 120, ; 208..215
	i32 94, i32 95, i32 110, i32 57, i32 82, i32 122, i32 23, i32 33, ; 216..223
	i32 121, i32 63, i32 66, i32 117, i32 56, i32 91, i32 43, i32 39, ; 224..231
	i32 80, i32 65, i32 54, i32 89, i32 46, i32 26, i32 125, i32 35, ; 232..239
	i32 101, i32 13, i32 4, i32 70, i32 119, i32 104, i32 93, i32 116, ; 240..247
	i32 59, i32 45, i32 6, i32 22, i32 129, i32 27, i32 42, i32 86, ; 248..255
	i32 43, i32 40, i32 13, i32 86 ; 256..259
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
