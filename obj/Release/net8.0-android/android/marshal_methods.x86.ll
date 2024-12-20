; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [167 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [334 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 131
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 130
	i32 26230656, ; 2: Microsoft.Extensions.DependencyModel => 0x1903f80 => 49
	i32 28873261, ; 3: Npgsql.dll => 0x1b8922d => 63
	i32 39109920, ; 4: Newtonsoft.Json.dll => 0x254c520 => 62
	i32 42639949, ; 5: System.Threading.Thread => 0x28aa24d => 155
	i32 67008169, ; 6: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 7: Microsoft.Maui.Graphics.dll => 0x44bb714 => 61
	i32 98325684, ; 8: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 51
	i32 117431740, ; 9: System.Runtime.InteropServices => 0x6ffddbc => 145
	i32 122350210, ; 10: System.Threading.Channels.dll => 0x74aea82 => 154
	i32 159306688, ; 11: System.ComponentModel.Annotations => 0x97ed3c0 => 109
	i32 165246403, ; 12: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 78
	i32 182336117, ; 13: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 96
	i32 195452805, ; 14: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 15: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 16: System.ComponentModel => 0xc38ff48 => 112
	i32 221958352, ; 17: Microsoft.Extensions.Diagnostics.dll => 0xd3ad0d0 => 50
	i32 230752869, ; 18: Microsoft.CSharp.dll => 0xdc10265 => 103
	i32 246610117, ; 19: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 142
	i32 280992041, ; 20: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 291275502, ; 21: Microsoft.Extensions.Http.dll => 0x115c82ee => 52
	i32 317674968, ; 22: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 23: Xamarin.AndroidX.Activity.dll => 0x13031348 => 74
	i32 336156722, ; 24: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 25: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 85
	i32 347068432, ; 26: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 67
	i32 356389973, ; 27: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 367780167, ; 28: System.IO.Pipes => 0x15ebe147 => 123
	i32 374914964, ; 29: System.Transactions.Local => 0x1658bf94 => 157
	i32 379916513, ; 30: System.Threading.Thread.dll => 0x16a510e1 => 155
	i32 385762202, ; 31: System.Memory.dll => 0x16fe439a => 127
	i32 393699800, ; 32: Firebase => 0x177761d8 => 36
	i32 395744057, ; 33: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 34: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 35: System.Collections => 0x1a61054f => 108
	i32 450948140, ; 36: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 84
	i32 459347974, ; 37: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 149
	i32 469710990, ; 38: System.dll => 0x1bff388e => 161
	i32 498788369, ; 39: System.ObjectModel => 0x1dbae811 => 137
	i32 500358224, ; 40: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 41: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 42: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 56
	i32 530272170, ; 43: System.Linq.Queryable => 0x1f9b4faa => 125
	i32 539058512, ; 44: Microsoft.Extensions.Logging => 0x20216150 => 53
	i32 592146354, ; 45: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 610194910, ; 46: System.Reactive.dll => 0x245ed5de => 71
	i32 627609679, ; 47: Xamarin.AndroidX.CustomView => 0x2568904f => 82
	i32 627931235, ; 48: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 49: System.Text.Encodings.Web.dll => 0x27787397 => 72
	i32 672442732, ; 50: System.Collections.Concurrent => 0x2814a96c => 104
	i32 683518922, ; 51: System.Net.Security => 0x28bdabca => 134
	i32 688181140, ; 52: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 690569205, ; 53: System.Xml.Linq.dll => 0x29293ff5 => 158
	i32 706645707, ; 54: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 55: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 56: System.Runtime.Loader.dll => 0x2b15ed29 => 146
	i32 729609259, ; 57: TBL.dll => 0x2b7cf42b => 102
	i32 748832960, ; 58: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 65
	i32 759454413, ; 59: System.Net.Requests => 0x2d445acd => 133
	i32 762598435, ; 60: System.IO.Pipes.dll => 0x2d745423 => 123
	i32 775507847, ; 61: System.IO.Compression => 0x2e394f87 => 122
	i32 777317022, ; 62: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 63: Microsoft.Extensions.Options => 0x2f0980eb => 55
	i32 804715423, ; 64: System.Data.Common => 0x2ff6fb9f => 114
	i32 823281589, ; 65: System.Private.Uri.dll => 0x311247b5 => 138
	i32 830298997, ; 66: System.IO.Compression.Brotli => 0x317d5b75 => 121
	i32 878954865, ; 67: System.Net.Http.Json => 0x3463c971 => 128
	i32 904024072, ; 68: System.ComponentModel.Primitives.dll => 0x35e25008 => 110
	i32 926902833, ; 69: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 955402788, ; 70: Newtonsoft.Json => 0x38f24a24 => 62
	i32 967690846, ; 71: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 85
	i32 975236339, ; 72: System.Diagnostics.Tracing => 0x3a20ecf3 => 117
	i32 975874589, ; 73: System.Xml.XDocument => 0x3a2aaa1d => 160
	i32 992768348, ; 74: System.Collections.dll => 0x3b2c715c => 108
	i32 1012816738, ; 75: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 95
	i32 1019214401, ; 76: System.Drawing => 0x3cbffa41 => 119
	i32 1028951442, ; 77: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 48
	i32 1029334545, ; 78: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 79: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 75
	i32 1036536393, ; 80: System.Drawing.Primitives.dll => 0x3dc84a49 => 118
	i32 1044663988, ; 81: System.Linq.Expressions.dll => 0x3e444eb4 => 124
	i32 1048992957, ; 82: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 51
	i32 1052210849, ; 83: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 87
	i32 1082857460, ; 84: System.ComponentModel.TypeConverter => 0x408b17f4 => 111
	i32 1084122840, ; 85: Xamarin.Kotlin.StdLib => 0x409e66d8 => 100
	i32 1098259244, ; 86: System => 0x41761b2c => 161
	i32 1118262833, ; 87: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1157931901, ; 88: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 40
	i32 1168523401, ; 89: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 90: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 92
	i32 1202000627, ; 91: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 40
	i32 1203215381, ; 92: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1204575371, ; 93: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 44
	i32 1208641965, ; 94: System.Diagnostics.Process => 0x480a69ad => 115
	i32 1234928153, ; 95: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 96: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1292207520, ; 97: SQLitePCLRaw.core.dll => 0x4d0585a0 => 66
	i32 1293217323, ; 98: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 83
	i32 1324164729, ; 99: System.Linq => 0x4eed2679 => 126
	i32 1373134921, ; 100: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 101: Xamarin.AndroidX.SavedState => 0x52114ed3 => 95
	i32 1406073936, ; 102: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 79
	i32 1408764838, ; 103: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 148
	i32 1430672901, ; 104: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1452070440, ; 105: System.Formats.Asn1.dll => 0x568cd628 => 120
	i32 1458022317, ; 106: System.Net.Security.dll => 0x56e7a7ad => 134
	i32 1461004990, ; 107: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 108: System.Collections.Immutable.dll => 0x5718a9ef => 105
	i32 1462112819, ; 109: System.IO.Compression.dll => 0x57261233 => 122
	i32 1469204771, ; 110: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 76
	i32 1470490898, ; 111: Microsoft.Extensions.Primitives => 0x57a5e912 => 56
	i32 1479771757, ; 112: System.Collections.Immutable => 0x5833866d => 105
	i32 1480492111, ; 113: System.IO.Compression.Brotli.dll => 0x583e844f => 121
	i32 1490351284, ; 114: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 38
	i32 1493001747, ; 115: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1505131794, ; 116: Microsoft.Extensions.Http => 0x59b67d12 => 52
	i32 1514721132, ; 117: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 118: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 153
	i32 1551623176, ; 119: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 120: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 89
	i32 1624863272, ; 121: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 98
	i32 1636350590, ; 122: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 81
	i32 1639515021, ; 123: System.Net.Http.dll => 0x61b9038d => 129
	i32 1639986890, ; 124: System.Text.RegularExpressions => 0x61c036ca => 153
	i32 1657153582, ; 125: System.Runtime => 0x62c6282e => 150
	i32 1658251792, ; 126: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 99
	i32 1677501392, ; 127: System.Net.Primitives.dll => 0x63fca3d0 => 132
	i32 1679769178, ; 128: System.Security.Cryptography => 0x641f3e5a => 151
	i32 1688112883, ; 129: Microsoft.Data.Sqlite => 0x649e8ef3 => 38
	i32 1689493916, ; 130: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 39
	i32 1711441057, ; 131: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 67
	i32 1729485958, ; 132: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 77
	i32 1736233607, ; 133: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 134: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1744735666, ; 135: System.Transactions.Local.dll => 0x67fe8db2 => 157
	i32 1746115085, ; 136: System.IO.Pipelines.dll => 0x68139a0d => 70
	i32 1763938596, ; 137: System.Diagnostics.TraceSource.dll => 0x69239124 => 116
	i32 1766324549, ; 138: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 96
	i32 1770582343, ; 139: Microsoft.Extensions.Logging.dll => 0x6988f147 => 53
	i32 1780572499, ; 140: Mono.Android.Runtime.dll => 0x6a216153 => 165
	i32 1782862114, ; 141: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 142: Xamarin.AndroidX.Fragment => 0x6a96652d => 84
	i32 1793755602, ; 143: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 144: Xamarin.AndroidX.Loader => 0x6bcd3296 => 89
	i32 1813058853, ; 145: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 100
	i32 1813201214, ; 146: Xamarin.Google.Android.Material => 0x6c13413e => 99
	i32 1818569960, ; 147: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 93
	i32 1824175904, ; 148: System.Text.Encoding.Extensions => 0x6cbab720 => 152
	i32 1824722060, ; 149: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 148
	i32 1828688058, ; 150: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 54
	i32 1842015223, ; 151: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 152: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 153: System.Linq.Expressions => 0x6ec71a65 => 124
	i32 1870277092, ; 154: System.Reflection.Primitives => 0x6f7a29e4 => 143
	i32 1875935024, ; 155: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1886040351, ; 156: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 42
	i32 1910275211, ; 157: System.Collections.NonGeneric.dll => 0x71dc7c8b => 106
	i32 1939592360, ; 158: System.Private.Xml.Linq => 0x739bd4a8 => 139
	i32 1968388702, ; 159: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 45
	i32 2003115576, ; 160: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2014489277, ; 161: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 42
	i32 2019465201, ; 162: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 87
	i32 2025202353, ; 163: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 164: System.Private.Xml => 0x79eb68ee => 140
	i32 2055257422, ; 165: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 86
	i32 2066184531, ; 166: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 167: System.Diagnostics.TraceSource => 0x7b6f419e => 116
	i32 2079903147, ; 168: System.Runtime.dll => 0x7bf8cdab => 150
	i32 2090596640, ; 169: System.Numerics.Vectors => 0x7c9bf920 => 136
	i32 2103459038, ; 170: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 68
	i32 2127167465, ; 171: System.Console => 0x7ec9ffe9 => 113
	i32 2142473426, ; 172: System.Collections.Specialized => 0x7fb38cd2 => 107
	i32 2159891885, ; 173: Microsoft.Maui => 0x80bd55ad => 59
	i32 2169148018, ; 174: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 175: Microsoft.Extensions.Options.dll => 0x820d22b3 => 55
	i32 2192057212, ; 176: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 54
	i32 2193016926, ; 177: System.ObjectModel.dll => 0x82b6c85e => 137
	i32 2197979891, ; 178: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 49
	i32 2201107256, ; 179: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 101
	i32 2201231467, ; 180: System.Net.Http => 0x8334206b => 129
	i32 2207618523, ; 181: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2252897993, ; 182: Microsoft.EntityFrameworkCore => 0x86487ec9 => 39
	i32 2266799131, ; 183: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 46
	i32 2270573516, ; 184: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 185: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 94
	i32 2294913272, ; 186: Npgsql => 0x88c998f8 => 63
	i32 2295906218, ; 187: System.Net.Sockets => 0x88d8bfaa => 135
	i32 2303942373, ; 188: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 189: System.Private.CoreLib.dll => 0x896b7878 => 163
	i32 2334995809, ; 190: Npgsql.EntityFrameworkCore.PostgreSQL.dll => 0x8b2d3561 => 64
	i32 2340441535, ; 191: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 144
	i32 2353062107, ; 192: System.Net.Primitives => 0x8c40e0db => 132
	i32 2368005991, ; 193: System.Xml.ReaderWriter.dll => 0x8d24e767 => 159
	i32 2371007202, ; 194: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 45
	i32 2395872292, ; 195: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2427813419, ; 196: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 197: System.Console.dll => 0x912896e5 => 113
	i32 2458678730, ; 198: System.Net.Sockets.dll => 0x928c75ca => 135
	i32 2465273461, ; 199: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 65
	i32 2471841756, ; 200: netstandard.dll => 0x93554fdc => 162
	i32 2475788418, ; 201: Java.Interop.dll => 0x93918882 => 164
	i32 2480646305, ; 202: Microsoft.Maui.Controls => 0x93dba8a1 => 57
	i32 2538310050, ; 203: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 142
	i32 2550873716, ; 204: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 205: Microsoft.CSharp => 0x98ba5a04 => 103
	i32 2570120770, ; 206: System.Text.Encodings.Web => 0x9930ee42 => 72
	i32 2585220780, ; 207: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 152
	i32 2593496499, ; 208: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 209: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 101
	i32 2617129537, ; 210: System.Private.Xml.dll => 0x9bfe3a41 => 140
	i32 2620871830, ; 211: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 81
	i32 2626831493, ; 212: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2634653062, ; 213: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 41
	i32 2663698177, ; 214: System.Runtime.Loader => 0x9ec4cf01 => 146
	i32 2664396074, ; 215: System.Xml.XDocument.dll => 0x9ecf752a => 160
	i32 2665622720, ; 216: System.Drawing.Primitives => 0x9ee22cc0 => 118
	i32 2676780864, ; 217: System.Data.Common.dll => 0x9f8c6f40 => 114
	i32 2724373263, ; 218: System.Runtime.Numerics.dll => 0xa262a30f => 147
	i32 2732626843, ; 219: Xamarin.AndroidX.Activity => 0xa2e0939b => 74
	i32 2735172069, ; 220: System.Threading.Channels => 0xa30769e5 => 154
	i32 2737747696, ; 221: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 76
	i32 2752995522, ; 222: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 223: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 58
	i32 2764765095, ; 224: Microsoft.Maui.dll => 0xa4caf7a7 => 59
	i32 2778768386, ; 225: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 97
	i32 2785988530, ; 226: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 227: Microsoft.Maui.Graphics => 0xa7008e0b => 61
	i32 2806116107, ; 228: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 229: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 79
	i32 2831556043, ; 230: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2847789619, ; 231: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 41
	i32 2853208004, ; 232: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 97
	i32 2861189240, ; 233: Microsoft.Maui.Essentials => 0xaa8a4878 => 60
	i32 2909740682, ; 234: System.Private.CoreLib => 0xad6f1e8a => 163
	i32 2916838712, ; 235: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 98
	i32 2919462931, ; 236: System.Numerics.Vectors.dll => 0xae037813 => 136
	i32 2957275192, ; 237: Dapper => 0xb0447038 => 35
	i32 2959614098, ; 238: System.ComponentModel.dll => 0xb0682092 => 112
	i32 2978675010, ; 239: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 83
	i32 3020703001, ; 240: Microsoft.Extensions.Diagnostics => 0xb40c4519 => 50
	i32 3038032645, ; 241: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 242: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 90
	i32 3059408633, ; 243: Mono.Android.Runtime => 0xb65adef9 => 165
	i32 3059793426, ; 244: System.ComponentModel.Primitives => 0xb660be12 => 110
	i32 3069363400, ; 245: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 43
	i32 3077302341, ; 246: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3103600923, ; 247: System.Formats.Asn1 => 0xb8fd311b => 120
	i32 3147165239, ; 248: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 117
	i32 3159123045, ; 249: System.Reflection.Primitives.dll => 0xbc4c6465 => 143
	i32 3178803400, ; 250: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 91
	i32 3195844289, ; 251: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 43
	i32 3220365878, ; 252: System.Threading => 0xbff2e236 => 156
	i32 3233354242, ; 253: TBL => 0xc0b91202 => 102
	i32 3258312781, ; 254: Xamarin.AndroidX.CardView => 0xc235e84d => 77
	i32 3265493905, ; 255: System.Linq.Queryable.dll => 0xc2a37b91 => 125
	i32 3280506390, ; 256: System.ComponentModel.Annotations.dll => 0xc3888e16 => 109
	i32 3305363605, ; 257: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 258: System.Net.Requests.dll => 0xc5b097e4 => 133
	i32 3317135071, ; 259: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 82
	i32 3322403133, ; 260: Firebase.dll => 0xc607d93d => 36
	i32 3346324047, ; 261: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 92
	i32 3357674450, ; 262: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 263: System.Text.Json => 0xc82afec1 => 73
	i32 3360279109, ; 264: SQLitePCLRaw.core => 0xc849ca45 => 66
	i32 3362522851, ; 265: Xamarin.AndroidX.Core => 0xc86c06e3 => 80
	i32 3366347497, ; 266: Java.Interop => 0xc8a662e9 => 164
	i32 3374999561, ; 267: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 94
	i32 3381016424, ; 268: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 269: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 47
	i32 3430777524, ; 270: netstandard => 0xcc7d82b4 => 162
	i32 3463511458, ; 271: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 272: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 111
	i32 3476120550, ; 273: Mono.Android => 0xcf3163e6 => 166
	i32 3479583265, ; 274: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 275: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 276: System.Text.Json.dll => 0xcfbaacae => 73
	i32 3509114376, ; 277: System.Xml.Linq => 0xd128d608 => 158
	i32 3564312303, ; 278: Dapper.dll => 0xd47316ef => 35
	i32 3580758918, ; 279: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3596207933, ; 280: LiteDB.dll => 0xd659c73d => 37
	i32 3608519521, ; 281: System.Linq.dll => 0xd715a361 => 126
	i32 3624195450, ; 282: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 144
	i32 3629588173, ; 283: LiteDB => 0xd8571ecd => 37
	i32 3641597786, ; 284: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 86
	i32 3643446276, ; 285: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 286: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 91
	i32 3657292374, ; 287: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 46
	i32 3660523487, ; 288: System.Net.NetworkInformation => 0xda2f27df => 131
	i32 3672681054, ; 289: Mono.Android.dll => 0xdae8aa5e => 166
	i32 3697841164, ; 290: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 291: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 90
	i32 3731644420, ; 292: System.Reactive => 0xde6c6004 => 71
	i32 3732100267, ; 293: System.Net.NameResolution => 0xde7354ab => 130
	i32 3737834244, ; 294: System.Net.Http.Json.dll => 0xdecad304 => 128
	i32 3748608112, ; 295: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 69
	i32 3754567612, ; 296: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 68
	i32 3786282454, ; 297: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 78
	i32 3792276235, ; 298: System.Collections.NonGeneric => 0xe2098b0b => 106
	i32 3802395368, ; 299: System.Collections.Specialized.dll => 0xe2a3f2e8 => 107
	i32 3823082795, ; 300: System.Security.Cryptography.dll => 0xe3df9d2b => 151
	i32 3841636137, ; 301: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 48
	i32 3849253459, ; 302: System.Runtime.InteropServices.dll => 0xe56ef253 => 145
	i32 3889960447, ; 303: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 304: System.Collections.Concurrent.dll => 0xe839deed => 104
	i32 3896760992, ; 305: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 80
	i32 3928044579, ; 306: System.Xml.ReaderWriter => 0xea213423 => 159
	i32 3931092270, ; 307: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 93
	i32 3955647286, ; 308: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 75
	i32 3980434154, ; 309: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 310: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4003436829, ; 311: System.Diagnostics.Process.dll => 0xee9f991d => 115
	i32 4023392905, ; 312: System.IO.Pipelines => 0xefd01a89 => 70
	i32 4025784931, ; 313: System.Memory => 0xeff49a63 => 127
	i32 4046471985, ; 314: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 58
	i32 4054681211, ; 315: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 141
	i32 4068434129, ; 316: System.Private.Xml.Linq.dll => 0xf27f60d1 => 139
	i32 4073602200, ; 317: System.Threading.dll => 0xf2ce3c98 => 156
	i32 4094352644, ; 318: Microsoft.Maui.Essentials.dll => 0xf40add04 => 60
	i32 4099507663, ; 319: System.Drawing.dll => 0xf45985cf => 119
	i32 4100113165, ; 320: System.Private.Uri => 0xf462c30d => 138
	i32 4101236366, ; 321: Npgsql.EntityFrameworkCore.PostgreSQL => 0xf473e68e => 64
	i32 4101842092, ; 322: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 44
	i32 4102112229, ; 323: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 324: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 325: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 47
	i32 4147896353, ; 326: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 141
	i32 4150914736, ; 327: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4181436372, ; 328: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 149
	i32 4182413190, ; 329: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 88
	i32 4213026141, ; 330: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 69
	i32 4271975918, ; 331: Microsoft.Maui.Controls.dll => 0xfea12dee => 57
	i32 4274976490, ; 332: System.Runtime.Numerics => 0xfecef6ea => 147
	i32 4292120959 ; 333: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 88
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [334 x i32] [
	i32 131, ; 0
	i32 130, ; 1
	i32 49, ; 2
	i32 63, ; 3
	i32 62, ; 4
	i32 155, ; 5
	i32 33, ; 6
	i32 61, ; 7
	i32 51, ; 8
	i32 145, ; 9
	i32 154, ; 10
	i32 109, ; 11
	i32 78, ; 12
	i32 96, ; 13
	i32 30, ; 14
	i32 31, ; 15
	i32 112, ; 16
	i32 50, ; 17
	i32 103, ; 18
	i32 142, ; 19
	i32 2, ; 20
	i32 52, ; 21
	i32 30, ; 22
	i32 74, ; 23
	i32 15, ; 24
	i32 85, ; 25
	i32 67, ; 26
	i32 14, ; 27
	i32 123, ; 28
	i32 157, ; 29
	i32 155, ; 30
	i32 127, ; 31
	i32 36, ; 32
	i32 34, ; 33
	i32 26, ; 34
	i32 108, ; 35
	i32 84, ; 36
	i32 149, ; 37
	i32 161, ; 38
	i32 137, ; 39
	i32 13, ; 40
	i32 7, ; 41
	i32 56, ; 42
	i32 125, ; 43
	i32 53, ; 44
	i32 21, ; 45
	i32 71, ; 46
	i32 82, ; 47
	i32 19, ; 48
	i32 72, ; 49
	i32 104, ; 50
	i32 134, ; 51
	i32 1, ; 52
	i32 158, ; 53
	i32 16, ; 54
	i32 4, ; 55
	i32 146, ; 56
	i32 102, ; 57
	i32 65, ; 58
	i32 133, ; 59
	i32 123, ; 60
	i32 122, ; 61
	i32 25, ; 62
	i32 55, ; 63
	i32 114, ; 64
	i32 138, ; 65
	i32 121, ; 66
	i32 128, ; 67
	i32 110, ; 68
	i32 28, ; 69
	i32 62, ; 70
	i32 85, ; 71
	i32 117, ; 72
	i32 160, ; 73
	i32 108, ; 74
	i32 95, ; 75
	i32 119, ; 76
	i32 48, ; 77
	i32 3, ; 78
	i32 75, ; 79
	i32 118, ; 80
	i32 124, ; 81
	i32 51, ; 82
	i32 87, ; 83
	i32 111, ; 84
	i32 100, ; 85
	i32 161, ; 86
	i32 16, ; 87
	i32 40, ; 88
	i32 22, ; 89
	i32 92, ; 90
	i32 40, ; 91
	i32 20, ; 92
	i32 44, ; 93
	i32 115, ; 94
	i32 18, ; 95
	i32 2, ; 96
	i32 66, ; 97
	i32 83, ; 98
	i32 126, ; 99
	i32 32, ; 100
	i32 95, ; 101
	i32 79, ; 102
	i32 148, ; 103
	i32 0, ; 104
	i32 120, ; 105
	i32 134, ; 106
	i32 6, ; 107
	i32 105, ; 108
	i32 122, ; 109
	i32 76, ; 110
	i32 56, ; 111
	i32 105, ; 112
	i32 121, ; 113
	i32 38, ; 114
	i32 10, ; 115
	i32 52, ; 116
	i32 5, ; 117
	i32 153, ; 118
	i32 25, ; 119
	i32 89, ; 120
	i32 98, ; 121
	i32 81, ; 122
	i32 129, ; 123
	i32 153, ; 124
	i32 150, ; 125
	i32 99, ; 126
	i32 132, ; 127
	i32 151, ; 128
	i32 38, ; 129
	i32 39, ; 130
	i32 67, ; 131
	i32 77, ; 132
	i32 23, ; 133
	i32 1, ; 134
	i32 157, ; 135
	i32 70, ; 136
	i32 116, ; 137
	i32 96, ; 138
	i32 53, ; 139
	i32 165, ; 140
	i32 17, ; 141
	i32 84, ; 142
	i32 9, ; 143
	i32 89, ; 144
	i32 100, ; 145
	i32 99, ; 146
	i32 93, ; 147
	i32 152, ; 148
	i32 148, ; 149
	i32 54, ; 150
	i32 29, ; 151
	i32 26, ; 152
	i32 124, ; 153
	i32 143, ; 154
	i32 8, ; 155
	i32 42, ; 156
	i32 106, ; 157
	i32 139, ; 158
	i32 45, ; 159
	i32 5, ; 160
	i32 42, ; 161
	i32 87, ; 162
	i32 0, ; 163
	i32 140, ; 164
	i32 86, ; 165
	i32 4, ; 166
	i32 116, ; 167
	i32 150, ; 168
	i32 136, ; 169
	i32 68, ; 170
	i32 113, ; 171
	i32 107, ; 172
	i32 59, ; 173
	i32 12, ; 174
	i32 55, ; 175
	i32 54, ; 176
	i32 137, ; 177
	i32 49, ; 178
	i32 101, ; 179
	i32 129, ; 180
	i32 14, ; 181
	i32 39, ; 182
	i32 46, ; 183
	i32 8, ; 184
	i32 94, ; 185
	i32 63, ; 186
	i32 135, ; 187
	i32 18, ; 188
	i32 163, ; 189
	i32 64, ; 190
	i32 144, ; 191
	i32 132, ; 192
	i32 159, ; 193
	i32 45, ; 194
	i32 13, ; 195
	i32 10, ; 196
	i32 113, ; 197
	i32 135, ; 198
	i32 65, ; 199
	i32 162, ; 200
	i32 164, ; 201
	i32 57, ; 202
	i32 142, ; 203
	i32 11, ; 204
	i32 103, ; 205
	i32 72, ; 206
	i32 152, ; 207
	i32 20, ; 208
	i32 101, ; 209
	i32 140, ; 210
	i32 81, ; 211
	i32 15, ; 212
	i32 41, ; 213
	i32 146, ; 214
	i32 160, ; 215
	i32 118, ; 216
	i32 114, ; 217
	i32 147, ; 218
	i32 74, ; 219
	i32 154, ; 220
	i32 76, ; 221
	i32 21, ; 222
	i32 58, ; 223
	i32 59, ; 224
	i32 97, ; 225
	i32 27, ; 226
	i32 61, ; 227
	i32 6, ; 228
	i32 79, ; 229
	i32 19, ; 230
	i32 41, ; 231
	i32 97, ; 232
	i32 60, ; 233
	i32 163, ; 234
	i32 98, ; 235
	i32 136, ; 236
	i32 35, ; 237
	i32 112, ; 238
	i32 83, ; 239
	i32 50, ; 240
	i32 34, ; 241
	i32 90, ; 242
	i32 165, ; 243
	i32 110, ; 244
	i32 43, ; 245
	i32 12, ; 246
	i32 120, ; 247
	i32 117, ; 248
	i32 143, ; 249
	i32 91, ; 250
	i32 43, ; 251
	i32 156, ; 252
	i32 102, ; 253
	i32 77, ; 254
	i32 125, ; 255
	i32 109, ; 256
	i32 7, ; 257
	i32 133, ; 258
	i32 82, ; 259
	i32 36, ; 260
	i32 92, ; 261
	i32 24, ; 262
	i32 73, ; 263
	i32 66, ; 264
	i32 80, ; 265
	i32 164, ; 266
	i32 94, ; 267
	i32 3, ; 268
	i32 47, ; 269
	i32 162, ; 270
	i32 11, ; 271
	i32 111, ; 272
	i32 166, ; 273
	i32 24, ; 274
	i32 23, ; 275
	i32 73, ; 276
	i32 158, ; 277
	i32 35, ; 278
	i32 31, ; 279
	i32 37, ; 280
	i32 126, ; 281
	i32 144, ; 282
	i32 37, ; 283
	i32 86, ; 284
	i32 28, ; 285
	i32 91, ; 286
	i32 46, ; 287
	i32 131, ; 288
	i32 166, ; 289
	i32 33, ; 290
	i32 90, ; 291
	i32 71, ; 292
	i32 130, ; 293
	i32 128, ; 294
	i32 69, ; 295
	i32 68, ; 296
	i32 78, ; 297
	i32 106, ; 298
	i32 107, ; 299
	i32 151, ; 300
	i32 48, ; 301
	i32 145, ; 302
	i32 32, ; 303
	i32 104, ; 304
	i32 80, ; 305
	i32 159, ; 306
	i32 93, ; 307
	i32 75, ; 308
	i32 27, ; 309
	i32 9, ; 310
	i32 115, ; 311
	i32 70, ; 312
	i32 127, ; 313
	i32 58, ; 314
	i32 141, ; 315
	i32 139, ; 316
	i32 156, ; 317
	i32 60, ; 318
	i32 119, ; 319
	i32 138, ; 320
	i32 64, ; 321
	i32 44, ; 322
	i32 22, ; 323
	i32 17, ; 324
	i32 47, ; 325
	i32 141, ; 326
	i32 29, ; 327
	i32 149, ; 328
	i32 88, ; 329
	i32 69, ; 330
	i32 57, ; 331
	i32 147, ; 332
	i32 88 ; 333
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
