; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [332 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [658 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 67
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 66
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 107
	i32 26230656, ; 3: Microsoft.Extensions.DependencyModel => 0x1903f80 => 185
	i32 28873261, ; 4: Npgsql.dll => 0x1b8922d => 204
	i32 32687329, ; 5: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 255
	i32 34715100, ; 6: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 286
	i32 34839235, ; 7: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 47
	i32 39109920, ; 8: Newtonsoft.Json.dll => 0x254c520 => 203
	i32 39485524, ; 9: System.Net.WebSockets.dll => 0x25a8054 => 79
	i32 42639949, ; 10: System.Threading.Thread => 0x28aa24d => 142
	i32 66541672, ; 11: System.Diagnostics.StackTrace => 0x3f75868 => 29
	i32 67008169, ; 12: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 327
	i32 68219467, ; 13: System.Security.Cryptography.Primitives => 0x410f24b => 123
	i32 72070932, ; 14: Microsoft.Maui.Graphics.dll => 0x44bb714 => 201
	i32 82292897, ; 15: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 101
	i32 98325684, ; 16: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 187
	i32 101534019, ; 17: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 272
	i32 117431740, ; 18: System.Runtime.InteropServices => 0x6ffddbc => 106
	i32 120558881, ; 19: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 272
	i32 122350210, ; 20: System.Threading.Channels.dll => 0x74aea82 => 136
	i32 134690465, ; 21: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 290
	i32 142721839, ; 22: System.Net.WebHeaderCollection => 0x881c32f => 76
	i32 149972175, ; 23: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 123
	i32 159306688, ; 24: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 25: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 229
	i32 176265551, ; 26: System.ServiceProcess => 0xa81994f => 131
	i32 182336117, ; 27: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 274
	i32 184328833, ; 28: System.ValueTuple.dll => 0xafca281 => 148
	i32 195452805, ; 29: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 324
	i32 199333315, ; 30: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 325
	i32 205061960, ; 31: System.ComponentModel => 0xc38ff48 => 18
	i32 220171995, ; 32: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 221958352, ; 33: Microsoft.Extensions.Diagnostics.dll => 0xd3ad0d0 => 186
	i32 230216969, ; 34: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 249
	i32 230752869, ; 35: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 36: System.Linq.Parallel => 0xdcb05c4 => 58
	i32 231814094, ; 37: System.Globalization => 0xdd133ce => 41
	i32 246610117, ; 38: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 90
	i32 261689757, ; 39: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 232
	i32 276479776, ; 40: System.Threading.Timer.dll => 0x107abf20 => 144
	i32 278686392, ; 41: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 251
	i32 280482487, ; 42: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 248
	i32 280992041, ; 43: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 296
	i32 291076382, ; 44: System.IO.Pipes.AccessControl.dll => 0x1159791e => 53
	i32 291275502, ; 45: Microsoft.Extensions.Http.dll => 0x115c82ee => 188
	i32 298918909, ; 46: System.Net.Ping.dll => 0x11d123fd => 68
	i32 317674968, ; 47: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 324
	i32 318968648, ; 48: Xamarin.AndroidX.Activity.dll => 0x13031348 => 219
	i32 321597661, ; 49: System.Numerics => 0x132b30dd => 82
	i32 336156722, ; 50: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 309
	i32 342366114, ; 51: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 250
	i32 347068432, ; 52: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 208
	i32 356389973, ; 53: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 308
	i32 360082299, ; 54: System.ServiceModel.Web => 0x15766b7b => 130
	i32 367780167, ; 55: System.IO.Pipes => 0x15ebe147 => 54
	i32 374914964, ; 56: System.Transactions.Local => 0x1658bf94 => 146
	i32 375677976, ; 57: System.Net.ServicePoint.dll => 0x16646418 => 73
	i32 379916513, ; 58: System.Threading.Thread.dll => 0x16a510e1 => 142
	i32 385762202, ; 59: System.Memory.dll => 0x16fe439a => 61
	i32 392610295, ; 60: System.Threading.ThreadPool.dll => 0x1766c1f7 => 143
	i32 393699800, ; 61: Firebase => 0x177761d8 => 171
	i32 395744057, ; 62: _Microsoft.Android.Resource.Designer => 0x17969339 => 328
	i32 403441872, ; 63: WindowsBase => 0x180c08d0 => 162
	i32 435591531, ; 64: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 320
	i32 441335492, ; 65: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 233
	i32 442565967, ; 66: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 67: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 246
	i32 451504562, ; 68: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 124
	i32 456227837, ; 69: System.Web.HttpUtility.dll => 0x1b317bfd => 149
	i32 459347974, ; 70: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 112
	i32 465846621, ; 71: mscorlib => 0x1bc4415d => 163
	i32 469710990, ; 72: System.dll => 0x1bff388e => 161
	i32 476646585, ; 73: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 248
	i32 486930444, ; 74: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 261
	i32 498788369, ; 75: System.ObjectModel => 0x1dbae811 => 83
	i32 500358224, ; 76: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 307
	i32 503918385, ; 77: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 301
	i32 513247710, ; 78: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 194
	i32 526420162, ; 79: System.Transactions.dll => 0x1f6088c2 => 147
	i32 527452488, ; 80: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 290
	i32 530272170, ; 81: System.Linq.Queryable => 0x1f9b4faa => 59
	i32 539058512, ; 82: Microsoft.Extensions.Logging => 0x20216150 => 189
	i32 540030774, ; 83: System.IO.FileSystem.dll => 0x20303736 => 50
	i32 545304856, ; 84: System.Runtime.Extensions => 0x2080b118 => 102
	i32 546455878, ; 85: System.Runtime.Serialization.Xml => 0x20924146 => 113
	i32 549171840, ; 86: System.Globalization.Calendars => 0x20bbb280 => 39
	i32 569601784, ; 87: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 283
	i32 577335427, ; 88: System.Security.Cryptography.Cng => 0x22697083 => 119
	i32 592146354, ; 89: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 315
	i32 601371474, ; 90: System.IO.IsolatedStorage.dll => 0x23d83352 => 51
	i32 605376203, ; 91: System.IO.Compression.FileSystem => 0x24154ecb => 43
	i32 610194910, ; 92: System.Reactive.dll => 0x245ed5de => 212
	i32 613668793, ; 93: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 118
	i32 627609679, ; 94: Xamarin.AndroidX.CustomView => 0x2568904f => 238
	i32 627931235, ; 95: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 313
	i32 639843206, ; 96: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 244
	i32 643868501, ; 97: System.Net => 0x2660a755 => 80
	i32 662205335, ; 98: System.Text.Encodings.Web.dll => 0x27787397 => 213
	i32 663517072, ; 99: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 279
	i32 666292255, ; 100: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 226
	i32 672442732, ; 101: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 102: System.Net.Security => 0x28bdabca => 72
	i32 688181140, ; 103: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 295
	i32 690569205, ; 104: System.Xml.Linq.dll => 0x29293ff5 => 152
	i32 691348768, ; 105: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 292
	i32 693804605, ; 106: System.Windows => 0x295a9e3d => 151
	i32 699345723, ; 107: System.Reflection.Emit => 0x29af2b3b => 91
	i32 700284507, ; 108: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 287
	i32 700358131, ; 109: System.IO.Compression.ZipFile => 0x29be9df3 => 44
	i32 706645707, ; 110: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 310
	i32 709557578, ; 111: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 298
	i32 720511267, ; 112: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 291
	i32 722857257, ; 113: System.Runtime.Loader.dll => 0x2b15ed29 => 108
	i32 729609259, ; 114: TBL.dll => 0x2b7cf42b => 0
	i32 731701662, ; 115: Microsoft.Extensions.Options.ConfigurationExtensions => 0x2b9ce19e => 193
	i32 735137430, ; 116: System.Security.SecureString.dll => 0x2bd14e96 => 128
	i32 748832960, ; 117: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 206
	i32 752232764, ; 118: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 119: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 216
	i32 759454413, ; 120: System.Net.Requests => 0x2d445acd => 71
	i32 762598435, ; 121: System.IO.Pipes.dll => 0x2d745423 => 54
	i32 775507847, ; 122: System.IO.Compression => 0x2e394f87 => 45
	i32 777317022, ; 123: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 319
	i32 789151979, ; 124: Microsoft.Extensions.Options => 0x2f0980eb => 192
	i32 790371945, ; 125: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 239
	i32 804715423, ; 126: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 127: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 253
	i32 823281589, ; 128: System.Private.Uri.dll => 0x311247b5 => 85
	i32 830298997, ; 129: System.IO.Compression.Brotli => 0x317d5b75 => 42
	i32 832635846, ; 130: System.Xml.XPath.dll => 0x31a103c6 => 157
	i32 834051424, ; 131: System.Net.Quic => 0x31b69d60 => 70
	i32 843511501, ; 132: Xamarin.AndroidX.Print => 0x3246f6cd => 266
	i32 873119928, ; 133: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 134: System.Globalization.dll => 0x34505120 => 41
	i32 878954865, ; 135: System.Net.Http.Json => 0x3463c971 => 62
	i32 904024072, ; 136: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 908888060, ; 137: Microsoft.Maui.Maps => 0x362c87fc => 202
	i32 911108515, ; 138: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 52
	i32 926902833, ; 139: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 322
	i32 928116545, ; 140: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 286
	i32 952186615, ; 141: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 104
	i32 955402788, ; 142: Newtonsoft.Json => 0x38f24a24 => 203
	i32 956575887, ; 143: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 291
	i32 967690846, ; 144: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 250
	i32 975236339, ; 145: System.Diagnostics.Tracing => 0x3a20ecf3 => 33
	i32 975874589, ; 146: System.Xml.XDocument => 0x3a2aaa1d => 155
	i32 986514023, ; 147: System.Private.DataContractSerialization.dll => 0x3acd0267 => 84
	i32 987214855, ; 148: System.Diagnostics.Tools => 0x3ad7b407 => 31
	i32 992768348, ; 149: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 150: System.IO.FileSystem => 0x3b45fb35 => 50
	i32 1001831731, ; 151: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 55
	i32 1012816738, ; 152: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 270
	i32 1019214401, ; 153: System.Drawing => 0x3cbffa41 => 35
	i32 1028951442, ; 154: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 184
	i32 1029334545, ; 155: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 297
	i32 1031528504, ; 156: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 285
	i32 1035644815, ; 157: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 224
	i32 1036536393, ; 158: System.Drawing.Primitives.dll => 0x3dc84a49 => 34
	i32 1044663988, ; 159: System.Linq.Expressions.dll => 0x3e444eb4 => 57
	i32 1048992957, ; 160: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 187
	i32 1052210849, ; 161: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 257
	i32 1082857460, ; 162: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 163: Xamarin.Kotlin.StdLib => 0x409e66d8 => 288
	i32 1098259244, ; 164: System => 0x41761b2c => 161
	i32 1118262833, ; 165: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 310
	i32 1121599056, ; 166: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 256
	i32 1127624469, ; 167: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 191
	i32 1149092582, ; 168: Xamarin.AndroidX.Window => 0x447dc2e6 => 282
	i32 1157931901, ; 169: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 175
	i32 1168523401, ; 170: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 316
	i32 1170634674, ; 171: System.Web.dll => 0x45c677b2 => 150
	i32 1175144683, ; 172: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 278
	i32 1178241025, ; 173: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 264
	i32 1202000627, ; 174: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 175
	i32 1203215381, ; 175: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 314
	i32 1204270330, ; 176: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 226
	i32 1204575371, ; 177: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 179
	i32 1208641965, ; 178: System.Diagnostics.Process => 0x480a69ad => 28
	i32 1219128291, ; 179: System.IO.IsolatedStorage => 0x48aa6be3 => 51
	i32 1234928153, ; 180: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 312
	i32 1243150071, ; 181: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 283
	i32 1253011324, ; 182: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 183: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 296
	i32 1264511973, ; 184: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 273
	i32 1267360935, ; 185: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 277
	i32 1273260888, ; 186: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 230
	i32 1275534314, ; 187: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 292
	i32 1278448581, ; 188: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 223
	i32 1292207520, ; 189: SQLitePCLRaw.core.dll => 0x4d0585a0 => 207
	i32 1293217323, ; 190: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 241
	i32 1309188875, ; 191: System.Private.DataContractSerialization => 0x4e08a30b => 84
	i32 1322716291, ; 192: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 282
	i32 1324164729, ; 193: System.Linq => 0x4eed2679 => 60
	i32 1335329327, ; 194: System.Runtime.Serialization.Json.dll => 0x4f97822f => 111
	i32 1364015309, ; 195: System.IO => 0x514d38cd => 56
	i32 1373134921, ; 196: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 326
	i32 1376866003, ; 197: Xamarin.AndroidX.SavedState => 0x52114ed3 => 270
	i32 1379779777, ; 198: System.Resources.ResourceManager => 0x523dc4c1 => 98
	i32 1402170036, ; 199: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 200: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 234
	i32 1408764838, ; 201: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 110
	i32 1411638395, ; 202: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 100
	i32 1422545099, ; 203: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 101
	i32 1430672901, ; 204: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 294
	i32 1434145427, ; 205: System.Runtime.Handles => 0x557b5293 => 103
	i32 1439761251, ; 206: System.Net.Quic.dll => 0x55d10363 => 70
	i32 1452070440, ; 207: System.Formats.Asn1.dll => 0x568cd628 => 37
	i32 1453312822, ; 208: System.Diagnostics.Tools.dll => 0x569fcb36 => 31
	i32 1457743152, ; 209: System.Runtime.Extensions.dll => 0x56e36530 => 102
	i32 1458022317, ; 210: System.Net.Security.dll => 0x56e7a7ad => 72
	i32 1461004990, ; 211: es\Microsoft.Maui.Controls.resources => 0x57152abe => 300
	i32 1461234159, ; 212: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 213: System.Security.Cryptography.OpenSsl => 0x57201017 => 122
	i32 1462112819, ; 214: System.IO.Compression.dll => 0x57261233 => 45
	i32 1469204771, ; 215: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 225
	i32 1470490898, ; 216: Microsoft.Extensions.Primitives => 0x57a5e912 => 194
	i32 1479771757, ; 217: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 218: System.IO.Compression.Brotli.dll => 0x583e844f => 42
	i32 1487239319, ; 219: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 220: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 271
	i32 1490351284, ; 221: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 173
	i32 1493001747, ; 222: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 304
	i32 1505131794, ; 223: Microsoft.Extensions.Http => 0x59b67d12 => 188
	i32 1514721132, ; 224: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 299
	i32 1536373174, ; 225: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 30
	i32 1543031311, ; 226: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 135
	i32 1543355203, ; 227: System.Reflection.Emit.dll => 0x5bfdbb43 => 91
	i32 1550322496, ; 228: System.Reflection.Extensions.dll => 0x5c680b40 => 92
	i32 1551623176, ; 229: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 319
	i32 1565862583, ; 230: System.IO.FileSystem.Primitives => 0x5d552ab7 => 48
	i32 1566207040, ; 231: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 138
	i32 1573704789, ; 232: System.Runtime.Serialization.Json => 0x5dccd455 => 111
	i32 1580037396, ; 233: System.Threading.Overlapped => 0x5e2d7514 => 137
	i32 1582372066, ; 234: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 240
	i32 1592978981, ; 235: System.Runtime.Serialization.dll => 0x5ef2ee25 => 114
	i32 1597949149, ; 236: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 285
	i32 1601112923, ; 237: System.Xml.Serialization => 0x5f6f0b5b => 154
	i32 1604827217, ; 238: System.Net.WebClient => 0x5fa7b851 => 75
	i32 1618516317, ; 239: System.Net.WebSockets.Client.dll => 0x6078995d => 78
	i32 1622152042, ; 240: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 260
	i32 1622358360, ; 241: System.Dynamic.Runtime => 0x60b33958 => 36
	i32 1624863272, ; 242: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 281
	i32 1635184631, ; 243: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 244
	i32 1636350590, ; 244: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 237
	i32 1639515021, ; 245: System.Net.Http.dll => 0x61b9038d => 63
	i32 1639986890, ; 246: System.Text.RegularExpressions => 0x61c036ca => 135
	i32 1641389582, ; 247: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 248: System.Runtime => 0x62c6282e => 115
	i32 1658241508, ; 249: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 275
	i32 1658251792, ; 250: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 284
	i32 1670060433, ; 251: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 232
	i32 1675553242, ; 252: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 47
	i32 1677501392, ; 253: System.Net.Primitives.dll => 0x63fca3d0 => 69
	i32 1678508291, ; 254: System.Net.WebSockets => 0x640c0103 => 79
	i32 1679769178, ; 255: System.Security.Cryptography => 0x641f3e5a => 125
	i32 1688112883, ; 256: Microsoft.Data.Sqlite => 0x649e8ef3 => 173
	i32 1689493916, ; 257: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 174
	i32 1691477237, ; 258: System.Reflection.Metadata => 0x64d1e4f5 => 93
	i32 1696967625, ; 259: System.Security.Cryptography.Csp => 0x6525abc9 => 120
	i32 1698840827, ; 260: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 289
	i32 1701541528, ; 261: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 262: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 208
	i32 1720223769, ; 263: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 253
	i32 1726116996, ; 264: System.Reflection.dll => 0x66e27484 => 96
	i32 1728033016, ; 265: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 27
	i32 1729485958, ; 266: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 228
	i32 1736233607, ; 267: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 317
	i32 1743415430, ; 268: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 295
	i32 1744735666, ; 269: System.Transactions.Local.dll => 0x67fe8db2 => 146
	i32 1746115085, ; 270: System.IO.Pipelines.dll => 0x68139a0d => 211
	i32 1746316138, ; 271: Mono.Android.Export => 0x6816ab6a => 166
	i32 1750313021, ; 272: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 273: System.Resources.Reader.dll => 0x68cc9d1e => 97
	i32 1763938596, ; 274: System.Diagnostics.TraceSource.dll => 0x69239124 => 32
	i32 1765942094, ; 275: System.Reflection.Extensions => 0x6942234e => 92
	i32 1766324549, ; 276: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 274
	i32 1770582343, ; 277: Microsoft.Extensions.Logging.dll => 0x6988f147 => 189
	i32 1776026572, ; 278: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 279: System.Globalization.Extensions.dll => 0x69ec0683 => 40
	i32 1780572499, ; 280: Mono.Android.Runtime.dll => 0x6a216153 => 167
	i32 1782862114, ; 281: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 311
	i32 1788241197, ; 282: Xamarin.AndroidX.Fragment => 0x6a96652d => 246
	i32 1793755602, ; 283: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 303
	i32 1808609942, ; 284: Xamarin.AndroidX.Loader => 0x6bcd3296 => 260
	i32 1813058853, ; 285: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 288
	i32 1813201214, ; 286: Xamarin.Google.Android.Material => 0x6c13413e => 284
	i32 1818569960, ; 287: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 265
	i32 1818787751, ; 288: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 289: System.Text.Encoding.Extensions => 0x6cbab720 => 133
	i32 1824722060, ; 290: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 110
	i32 1828688058, ; 291: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 190
	i32 1842015223, ; 292: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 323
	i32 1847515442, ; 293: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 216
	i32 1853025655, ; 294: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 320
	i32 1858542181, ; 295: System.Linq.Expressions => 0x6ec71a65 => 57
	i32 1870277092, ; 296: System.Reflection.Primitives => 0x6f7a29e4 => 94
	i32 1875935024, ; 297: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 302
	i32 1879696579, ; 298: System.Formats.Tar.dll => 0x7009e4c3 => 38
	i32 1885316902, ; 299: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 227
	i32 1886040351, ; 300: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 177
	i32 1888955245, ; 301: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 302: System.Reflection.Metadata.dll => 0x70a66bdd => 93
	i32 1898237753, ; 303: System.Reflection.DispatchProxy => 0x7124cf39 => 88
	i32 1900610850, ; 304: System.Resources.ResourceManager.dll => 0x71490522 => 98
	i32 1910275211, ; 305: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 306: System.Private.Xml.Linq => 0x739bd4a8 => 86
	i32 1956758971, ; 307: System.Resources.Writer => 0x74a1c5bb => 99
	i32 1968388702, ; 308: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 180
	i32 1983156543, ; 309: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 289
	i32 1985761444, ; 310: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 218
	i32 2003115576, ; 311: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 299
	i32 2011961780, ; 312: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014489277, ; 313: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 177
	i32 2019465201, ; 314: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 257
	i32 2025202353, ; 315: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 294
	i32 2031763787, ; 316: Xamarin.Android.Glide => 0x791a414b => 215
	i32 2045470958, ; 317: System.Private.Xml => 0x79eb68ee => 87
	i32 2048278909, ; 318: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 182
	i32 2055257422, ; 319: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 252
	i32 2060060697, ; 320: System.Windows.dll => 0x7aca0819 => 151
	i32 2066184531, ; 321: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 298
	i32 2070888862, ; 322: System.Diagnostics.TraceSource => 0x7b6f419e => 32
	i32 2079903147, ; 323: System.Runtime.dll => 0x7bf8cdab => 115
	i32 2090596640, ; 324: System.Numerics.Vectors => 0x7c9bf920 => 81
	i32 2103459038, ; 325: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 209
	i32 2127167465, ; 326: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 327: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 328: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 159
	i32 2146852085, ; 329: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 330: Microsoft.Maui => 0x80bd55ad => 199
	i32 2169148018, ; 331: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 306
	i32 2181898931, ; 332: Microsoft.Extensions.Options.dll => 0x820d22b3 => 192
	i32 2192057212, ; 333: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 190
	i32 2193016926, ; 334: System.ObjectModel.dll => 0x82b6c85e => 83
	i32 2197979891, ; 335: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 185
	i32 2201107256, ; 336: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 293
	i32 2201231467, ; 337: System.Net.Http => 0x8334206b => 63
	i32 2207618523, ; 338: it\Microsoft.Maui.Controls.resources => 0x839595db => 308
	i32 2217644978, ; 339: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 278
	i32 2222056684, ; 340: System.Threading.Tasks.Parallel => 0x8471e4ec => 140
	i32 2244775296, ; 341: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 261
	i32 2252106437, ; 342: System.Xml.Serialization.dll => 0x863c6ac5 => 154
	i32 2252897993, ; 343: Microsoft.EntityFrameworkCore => 0x86487ec9 => 174
	i32 2256313426, ; 344: System.Globalization.Extensions => 0x867c9c52 => 40
	i32 2265110946, ; 345: System.Security.AccessControl.dll => 0x8702d9a2 => 116
	i32 2266799131, ; 346: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 181
	i32 2267999099, ; 347: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 217
	i32 2270573516, ; 348: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 302
	i32 2279755925, ; 349: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 268
	i32 2293034957, ; 350: System.ServiceModel.Web.dll => 0x88acefcd => 130
	i32 2294913272, ; 351: Npgsql => 0x88c998f8 => 204
	i32 2295906218, ; 352: System.Net.Sockets => 0x88d8bfaa => 74
	i32 2298471582, ; 353: System.Net.Mail => 0x88ffe49e => 65
	i32 2303073227, ; 354: Microsoft.Maui.Controls.Maps.dll => 0x89461bcb => 197
	i32 2303942373, ; 355: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 312
	i32 2305521784, ; 356: System.Private.CoreLib.dll => 0x896b7878 => 169
	i32 2315684594, ; 357: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 221
	i32 2320631194, ; 358: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 140
	i32 2334995809, ; 359: Npgsql.EntityFrameworkCore.PostgreSQL.dll => 0x8b2d3561 => 205
	i32 2340441535, ; 360: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 105
	i32 2344264397, ; 361: System.ValueTuple => 0x8bbaa2cd => 148
	i32 2353062107, ; 362: System.Net.Primitives => 0x8c40e0db => 69
	i32 2368005991, ; 363: System.Xml.ReaderWriter.dll => 0x8d24e767 => 153
	i32 2371007202, ; 364: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 180
	i32 2378619854, ; 365: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 120
	i32 2383496789, ; 366: System.Security.Principal.Windows.dll => 0x8e114655 => 126
	i32 2395872292, ; 367: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 307
	i32 2401565422, ; 368: System.Web.HttpUtility => 0x8f24faee => 149
	i32 2403452196, ; 369: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 243
	i32 2421380589, ; 370: System.Threading.Tasks.Dataflow => 0x905355ed => 138
	i32 2423080555, ; 371: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 230
	i32 2427813419, ; 372: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 304
	i32 2435356389, ; 373: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 374: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 375: System.Text.Encoding.dll => 0x924edee6 => 134
	i32 2458678730, ; 376: System.Net.Sockets.dll => 0x928c75ca => 74
	i32 2459001652, ; 377: System.Linq.Parallel.dll => 0x92916334 => 58
	i32 2465273461, ; 378: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 206
	i32 2465532216, ; 379: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 233
	i32 2471841756, ; 380: netstandard.dll => 0x93554fdc => 164
	i32 2475788418, ; 381: Java.Interop.dll => 0x93918882 => 165
	i32 2480646305, ; 382: Microsoft.Maui.Controls => 0x93dba8a1 => 196
	i32 2483903535, ; 383: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 384: System.Net.ServicePoint => 0x94147f61 => 73
	i32 2490993605, ; 385: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 386: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 387: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 255
	i32 2522472828, ; 388: Xamarin.Android.Glide.dll => 0x9659e17c => 215
	i32 2538310050, ; 389: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 90
	i32 2550873716, ; 390: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 305
	i32 2562349572, ; 391: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 392: System.Text.Encodings.Web => 0x9930ee42 => 213
	i32 2581783588, ; 393: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 256
	i32 2581819634, ; 394: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 277
	i32 2585220780, ; 395: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 133
	i32 2585805581, ; 396: System.Net.Ping => 0x9a20430d => 68
	i32 2589602615, ; 397: System.Threading.ThreadPool => 0x9a5a3337 => 143
	i32 2593496499, ; 398: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 314
	i32 2605712449, ; 399: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 293
	i32 2615233544, ; 400: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 247
	i32 2616218305, ; 401: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 191
	i32 2617129537, ; 402: System.Private.Xml.dll => 0x9bfe3a41 => 87
	i32 2618712057, ; 403: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 95
	i32 2620871830, ; 404: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 237
	i32 2624644809, ; 405: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 242
	i32 2626831493, ; 406: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 309
	i32 2627185994, ; 407: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 30
	i32 2629843544, ; 408: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 44
	i32 2633051222, ; 409: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 251
	i32 2634653062, ; 410: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 176
	i32 2663391936, ; 411: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 217
	i32 2663698177, ; 412: System.Runtime.Loader => 0x9ec4cf01 => 108
	i32 2664396074, ; 413: System.Xml.XDocument.dll => 0x9ecf752a => 155
	i32 2665622720, ; 414: System.Drawing.Primitives => 0x9ee22cc0 => 34
	i32 2676780864, ; 415: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 416: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 113
	i32 2693849962, ; 417: System.IO.dll => 0xa090e36a => 56
	i32 2701096212, ; 418: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 275
	i32 2715334215, ; 419: System.Threading.Tasks.dll => 0xa1d8b647 => 141
	i32 2717744543, ; 420: System.Security.Claims => 0xa1fd7d9f => 117
	i32 2719963679, ; 421: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 119
	i32 2724373263, ; 422: System.Runtime.Numerics.dll => 0xa262a30f => 109
	i32 2732626843, ; 423: Xamarin.AndroidX.Activity => 0xa2e0939b => 219
	i32 2735172069, ; 424: System.Threading.Channels => 0xa30769e5 => 136
	i32 2737747696, ; 425: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 225
	i32 2740948882, ; 426: System.IO.Pipes.AccessControl => 0xa35f8f92 => 53
	i32 2748088231, ; 427: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 104
	i32 2752995522, ; 428: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 315
	i32 2758225723, ; 429: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 198
	i32 2764765095, ; 430: Microsoft.Maui.dll => 0xa4caf7a7 => 199
	i32 2765824710, ; 431: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 132
	i32 2770495804, ; 432: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 287
	i32 2778768386, ; 433: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 280
	i32 2779977773, ; 434: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 269
	i32 2785988530, ; 435: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 321
	i32 2788224221, ; 436: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 247
	i32 2801831435, ; 437: Microsoft.Maui.Graphics => 0xa7008e0b => 201
	i32 2803228030, ; 438: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 156
	i32 2806116107, ; 439: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 300
	i32 2810250172, ; 440: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 234
	i32 2819470561, ; 441: System.Xml.dll => 0xa80db4e1 => 160
	i32 2821205001, ; 442: System.ServiceProcess.dll => 0xa8282c09 => 131
	i32 2821294376, ; 443: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 269
	i32 2824502124, ; 444: System.Xml.XmlDocument => 0xa85a7b6c => 158
	i32 2831556043, ; 445: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 313
	i32 2838993487, ; 446: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 258
	i32 2847789619, ; 447: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 176
	i32 2849599387, ; 448: System.Threading.Overlapped.dll => 0xa9d96f9b => 137
	i32 2853208004, ; 449: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 280
	i32 2855708567, ; 450: Xamarin.AndroidX.Transition => 0xaa36a797 => 276
	i32 2861098320, ; 451: Mono.Android.Export.dll => 0xaa88e550 => 166
	i32 2861189240, ; 452: Microsoft.Maui.Essentials => 0xaa8a4878 => 200
	i32 2870099610, ; 453: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 220
	i32 2875220617, ; 454: System.Globalization.Calendars.dll => 0xab606289 => 39
	i32 2884993177, ; 455: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 245
	i32 2887636118, ; 456: System.Net.dll => 0xac1dd496 => 80
	i32 2899753641, ; 457: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 55
	i32 2900621748, ; 458: System.Dynamic.Runtime.dll => 0xace3f9b4 => 36
	i32 2901442782, ; 459: System.Reflection => 0xacf080de => 96
	i32 2905242038, ; 460: mscorlib.dll => 0xad2a79b6 => 163
	i32 2909740682, ; 461: System.Private.CoreLib => 0xad6f1e8a => 169
	i32 2916838712, ; 462: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 281
	i32 2919462931, ; 463: System.Numerics.Vectors.dll => 0xae037813 => 81
	i32 2921128767, ; 464: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 222
	i32 2936416060, ; 465: System.Resources.Reader => 0xaf06273c => 97
	i32 2940926066, ; 466: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 29
	i32 2942453041, ; 467: System.Xml.XPath.XDocument => 0xaf624531 => 156
	i32 2957275192, ; 468: Dapper => 0xb0447038 => 170
	i32 2959614098, ; 469: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 470: System.Security.Principal.Windows => 0xb0ed41f3 => 126
	i32 2971004615, ; 471: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0xb115eec7 => 193
	i32 2972252294, ; 472: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 118
	i32 2978675010, ; 473: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 241
	i32 2996846495, ; 474: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 254
	i32 3016983068, ; 475: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 273
	i32 3020703001, ; 476: Microsoft.Extensions.Diagnostics => 0xb40c4519 => 186
	i32 3023353419, ; 477: WindowsBase.dll => 0xb434b64b => 162
	i32 3024354802, ; 478: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 249
	i32 3038032645, ; 479: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 328
	i32 3056245963, ; 480: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 271
	i32 3057625584, ; 481: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 262
	i32 3059408633, ; 482: Mono.Android.Runtime => 0xb65adef9 => 167
	i32 3059793426, ; 483: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 484: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 178
	i32 3075834255, ; 485: System.Threading.Tasks => 0xb755818f => 141
	i32 3077302341, ; 486: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 306
	i32 3090735792, ; 487: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 124
	i32 3099732863, ; 488: System.Security.Claims.dll => 0xb8c22b7f => 117
	i32 3103600923, ; 489: System.Formats.Asn1 => 0xb8fd311b => 37
	i32 3111772706, ; 490: System.Runtime.Serialization => 0xb979e222 => 114
	i32 3121463068, ; 491: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 46
	i32 3124832203, ; 492: System.Threading.Tasks.Extensions => 0xba4127cb => 139
	i32 3132293585, ; 493: System.Security.AccessControl => 0xbab301d1 => 116
	i32 3147165239, ; 494: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 33
	i32 3159123045, ; 495: System.Reflection.Primitives.dll => 0xbc4c6465 => 94
	i32 3160747431, ; 496: System.IO.MemoryMappedFiles => 0xbc652da7 => 52
	i32 3178803400, ; 497: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 263
	i32 3192346100, ; 498: System.Security.SecureString => 0xbe4755f4 => 128
	i32 3193515020, ; 499: System.Web => 0xbe592c0c => 150
	i32 3195844289, ; 500: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 178
	i32 3204380047, ; 501: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 502: System.Xml.XmlDocument.dll => 0xbf506931 => 158
	i32 3211777861, ; 503: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 240
	i32 3220365878, ; 504: System.Threading => 0xbff2e236 => 145
	i32 3226221578, ; 505: System.Runtime.Handles.dll => 0xc04c3c0a => 103
	i32 3233354242, ; 506: TBL => 0xc0b91202 => 0
	i32 3251039220, ; 507: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 88
	i32 3258312781, ; 508: Xamarin.AndroidX.CardView => 0xc235e84d => 228
	i32 3265493905, ; 509: System.Linq.Queryable.dll => 0xc2a37b91 => 59
	i32 3265893370, ; 510: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 139
	i32 3277815716, ; 511: System.Resources.Writer.dll => 0xc35f7fa4 => 99
	i32 3279906254, ; 512: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 513: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 514: System.Security.Cryptography.Encoding => 0xc4251ff9 => 121
	i32 3299363146, ; 515: System.Text.Encoding => 0xc4a8494a => 134
	i32 3303498502, ; 516: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 27
	i32 3305363605, ; 517: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 301
	i32 3316684772, ; 518: System.Net.Requests.dll => 0xc5b097e4 => 71
	i32 3317135071, ; 519: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 238
	i32 3317144872, ; 520: System.Data => 0xc5b79d28 => 24
	i32 3322403133, ; 521: Firebase.dll => 0xc607d93d => 171
	i32 3340431453, ; 522: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 227
	i32 3345895724, ; 523: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 267
	i32 3346324047, ; 524: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 264
	i32 3357674450, ; 525: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 318
	i32 3358260929, ; 526: System.Text.Json => 0xc82afec1 => 214
	i32 3360279109, ; 527: SQLitePCLRaw.core => 0xc849ca45 => 207
	i32 3362336904, ; 528: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 220
	i32 3362522851, ; 529: Xamarin.AndroidX.Core => 0xc86c06e3 => 235
	i32 3366347497, ; 530: Java.Interop => 0xc8a662e9 => 165
	i32 3374999561, ; 531: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 268
	i32 3381016424, ; 532: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 297
	i32 3395150330, ; 533: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 100
	i32 3403906625, ; 534: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 122
	i32 3405233483, ; 535: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 239
	i32 3421170118, ; 536: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 182
	i32 3428513518, ; 537: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 183
	i32 3429136800, ; 538: System.Xml => 0xcc6479a0 => 160
	i32 3430777524, ; 539: netstandard => 0xcc7d82b4 => 164
	i32 3441283291, ; 540: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 242
	i32 3445260447, ; 541: System.Formats.Tar => 0xcd5a809f => 38
	i32 3452344032, ; 542: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 195
	i32 3463511458, ; 543: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 305
	i32 3471940407, ; 544: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 545: Mono.Android => 0xcf3163e6 => 168
	i32 3479583265, ; 546: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 318
	i32 3484440000, ; 547: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 317
	i32 3485117614, ; 548: System.Text.Json.dll => 0xcfbaacae => 214
	i32 3486566296, ; 549: System.Transactions => 0xcfd0c798 => 147
	i32 3493954962, ; 550: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 231
	i32 3500773090, ; 551: Microsoft.Maui.Controls.Maps => 0xd0a98ee2 => 197
	i32 3509114376, ; 552: System.Xml.Linq => 0xd128d608 => 152
	i32 3515174580, ; 553: System.Security.dll => 0xd1854eb4 => 129
	i32 3530912306, ; 554: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 555: System.Net.HttpListener => 0xd2ff69f1 => 64
	i32 3560100363, ; 556: System.Threading.Timer => 0xd432d20b => 144
	i32 3564312303, ; 557: Dapper.dll => 0xd47316ef => 170
	i32 3570554715, ; 558: System.IO.FileSystem.AccessControl => 0xd4d2575b => 46
	i32 3580758918, ; 559: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 325
	i32 3596207933, ; 560: LiteDB.dll => 0xd659c73d => 172
	i32 3597029428, ; 561: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 218
	i32 3598340787, ; 562: System.Net.WebSockets.Client => 0xd67a52b3 => 78
	i32 3608519521, ; 563: System.Linq.dll => 0xd715a361 => 60
	i32 3624195450, ; 564: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 105
	i32 3627220390, ; 565: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 266
	i32 3629588173, ; 566: LiteDB => 0xd8571ecd => 172
	i32 3633644679, ; 567: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 222
	i32 3638274909, ; 568: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 48
	i32 3641597786, ; 569: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 252
	i32 3643446276, ; 570: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 322
	i32 3643854240, ; 571: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 263
	i32 3645089577, ; 572: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 573: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 181
	i32 3660523487, ; 574: System.Net.NetworkInformation => 0xda2f27df => 67
	i32 3672681054, ; 575: Mono.Android.dll => 0xdae8aa5e => 168
	i32 3684561358, ; 576: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 231
	i32 3697841164, ; 577: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 327
	i32 3700866549, ; 578: System.Net.WebProxy.dll => 0xdc96bdf5 => 77
	i32 3706696989, ; 579: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 236
	i32 3716563718, ; 580: System.Runtime.Intrinsics => 0xdd864306 => 107
	i32 3718780102, ; 581: Xamarin.AndroidX.Annotation => 0xdda814c6 => 221
	i32 3724971120, ; 582: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 262
	i32 3731644420, ; 583: System.Reactive => 0xde6c6004 => 212
	i32 3732100267, ; 584: System.Net.NameResolution => 0xde7354ab => 66
	i32 3737834244, ; 585: System.Net.Http.Json.dll => 0xdecad304 => 62
	i32 3748608112, ; 586: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 210
	i32 3751444290, ; 587: System.Xml.XPath => 0xdf9a7f42 => 157
	i32 3754567612, ; 588: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 209
	i32 3786282454, ; 589: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 229
	i32 3792276235, ; 590: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 591: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 195
	i32 3802395368, ; 592: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 593: System.Net.WebProxy => 0xe3a54a09 => 77
	i32 3823082795, ; 594: System.Security.Cryptography.dll => 0xe3df9d2b => 125
	i32 3829621856, ; 595: System.Numerics.dll => 0xe4436460 => 82
	i32 3841636137, ; 596: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 184
	i32 3844307129, ; 597: System.Net.Mail.dll => 0xe52378b9 => 65
	i32 3849253459, ; 598: System.Runtime.InteropServices.dll => 0xe56ef253 => 106
	i32 3870376305, ; 599: System.Net.HttpListener.dll => 0xe6b14171 => 64
	i32 3873536506, ; 600: System.Security.Principal => 0xe6e179fa => 127
	i32 3875112723, ; 601: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 121
	i32 3885497537, ; 602: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 76
	i32 3885922214, ; 603: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 276
	i32 3888767677, ; 604: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 267
	i32 3889960447, ; 605: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 326
	i32 3896106733, ; 606: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 607: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 235
	i32 3901907137, ; 608: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 609: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 43
	i32 3921031405, ; 610: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 279
	i32 3928044579, ; 611: System.Xml.ReaderWriter => 0xea213423 => 153
	i32 3930554604, ; 612: System.Security.Principal.dll => 0xea4780ec => 127
	i32 3931092270, ; 613: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 265
	i32 3945713374, ; 614: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 615: System.Text.Encoding.CodePages => 0xebac8bfe => 132
	i32 3955647286, ; 616: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 224
	i32 3959773229, ; 617: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 254
	i32 3980434154, ; 618: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 321
	i32 3987592930, ; 619: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 303
	i32 4003436829, ; 620: System.Diagnostics.Process.dll => 0xee9f991d => 28
	i32 4015948917, ; 621: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 223
	i32 4023392905, ; 622: System.IO.Pipelines => 0xefd01a89 => 211
	i32 4025784931, ; 623: System.Memory => 0xeff49a63 => 61
	i32 4046471985, ; 624: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 198
	i32 4054681211, ; 625: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 89
	i32 4068434129, ; 626: System.Private.Xml.Linq.dll => 0xf27f60d1 => 86
	i32 4073602200, ; 627: System.Threading.dll => 0xf2ce3c98 => 145
	i32 4094352644, ; 628: Microsoft.Maui.Essentials.dll => 0xf40add04 => 200
	i32 4099507663, ; 629: System.Drawing.dll => 0xf45985cf => 35
	i32 4100113165, ; 630: System.Private.Uri => 0xf462c30d => 85
	i32 4101236366, ; 631: Npgsql.EntityFrameworkCore.PostgreSQL => 0xf473e68e => 205
	i32 4101593132, ; 632: Xamarin.AndroidX.Emoji2 => 0xf479582c => 243
	i32 4101842092, ; 633: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 179
	i32 4102112229, ; 634: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 316
	i32 4125707920, ; 635: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 311
	i32 4126470640, ; 636: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 183
	i32 4127667938, ; 637: System.IO.FileSystem.Watcher => 0xf60736e2 => 49
	i32 4130442656, ; 638: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 639: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 89
	i32 4150914736, ; 640: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 323
	i32 4151237749, ; 641: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 642: System.Xml.XmlSerializer => 0xf7e95c85 => 159
	i32 4161255271, ; 643: System.Reflection.TypeExtensions => 0xf807b767 => 95
	i32 4164802419, ; 644: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 49
	i32 4181436372, ; 645: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 112
	i32 4182413190, ; 646: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 259
	i32 4185676441, ; 647: System.Security => 0xf97c5a99 => 129
	i32 4190991637, ; 648: Microsoft.Maui.Maps.dll => 0xf9cd7515 => 202
	i32 4196529839, ; 649: System.Net.WebClient.dll => 0xfa21f6af => 75
	i32 4213026141, ; 650: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 210
	i32 4256097574, ; 651: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 236
	i32 4258378803, ; 652: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 258
	i32 4260525087, ; 653: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 654: Microsoft.Maui.Controls.dll => 0xfea12dee => 196
	i32 4274976490, ; 655: System.Runtime.Numerics => 0xfecef6ea => 109
	i32 4292120959, ; 656: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 259
	i32 4294763496 ; 657: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 245
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [658 x i32] [
	i32 67, ; 0
	i32 66, ; 1
	i32 107, ; 2
	i32 185, ; 3
	i32 204, ; 4
	i32 255, ; 5
	i32 286, ; 6
	i32 47, ; 7
	i32 203, ; 8
	i32 79, ; 9
	i32 142, ; 10
	i32 29, ; 11
	i32 327, ; 12
	i32 123, ; 13
	i32 201, ; 14
	i32 101, ; 15
	i32 187, ; 16
	i32 272, ; 17
	i32 106, ; 18
	i32 272, ; 19
	i32 136, ; 20
	i32 290, ; 21
	i32 76, ; 22
	i32 123, ; 23
	i32 13, ; 24
	i32 229, ; 25
	i32 131, ; 26
	i32 274, ; 27
	i32 148, ; 28
	i32 324, ; 29
	i32 325, ; 30
	i32 18, ; 31
	i32 26, ; 32
	i32 186, ; 33
	i32 249, ; 34
	i32 1, ; 35
	i32 58, ; 36
	i32 41, ; 37
	i32 90, ; 38
	i32 232, ; 39
	i32 144, ; 40
	i32 251, ; 41
	i32 248, ; 42
	i32 296, ; 43
	i32 53, ; 44
	i32 188, ; 45
	i32 68, ; 46
	i32 324, ; 47
	i32 219, ; 48
	i32 82, ; 49
	i32 309, ; 50
	i32 250, ; 51
	i32 208, ; 52
	i32 308, ; 53
	i32 130, ; 54
	i32 54, ; 55
	i32 146, ; 56
	i32 73, ; 57
	i32 142, ; 58
	i32 61, ; 59
	i32 143, ; 60
	i32 171, ; 61
	i32 328, ; 62
	i32 162, ; 63
	i32 320, ; 64
	i32 233, ; 65
	i32 12, ; 66
	i32 246, ; 67
	i32 124, ; 68
	i32 149, ; 69
	i32 112, ; 70
	i32 163, ; 71
	i32 161, ; 72
	i32 248, ; 73
	i32 261, ; 74
	i32 83, ; 75
	i32 307, ; 76
	i32 301, ; 77
	i32 194, ; 78
	i32 147, ; 79
	i32 290, ; 80
	i32 59, ; 81
	i32 189, ; 82
	i32 50, ; 83
	i32 102, ; 84
	i32 113, ; 85
	i32 39, ; 86
	i32 283, ; 87
	i32 119, ; 88
	i32 315, ; 89
	i32 51, ; 90
	i32 43, ; 91
	i32 212, ; 92
	i32 118, ; 93
	i32 238, ; 94
	i32 313, ; 95
	i32 244, ; 96
	i32 80, ; 97
	i32 213, ; 98
	i32 279, ; 99
	i32 226, ; 100
	i32 8, ; 101
	i32 72, ; 102
	i32 295, ; 103
	i32 152, ; 104
	i32 292, ; 105
	i32 151, ; 106
	i32 91, ; 107
	i32 287, ; 108
	i32 44, ; 109
	i32 310, ; 110
	i32 298, ; 111
	i32 291, ; 112
	i32 108, ; 113
	i32 0, ; 114
	i32 193, ; 115
	i32 128, ; 116
	i32 206, ; 117
	i32 25, ; 118
	i32 216, ; 119
	i32 71, ; 120
	i32 54, ; 121
	i32 45, ; 122
	i32 319, ; 123
	i32 192, ; 124
	i32 239, ; 125
	i32 22, ; 126
	i32 253, ; 127
	i32 85, ; 128
	i32 42, ; 129
	i32 157, ; 130
	i32 70, ; 131
	i32 266, ; 132
	i32 3, ; 133
	i32 41, ; 134
	i32 62, ; 135
	i32 16, ; 136
	i32 202, ; 137
	i32 52, ; 138
	i32 322, ; 139
	i32 286, ; 140
	i32 104, ; 141
	i32 203, ; 142
	i32 291, ; 143
	i32 250, ; 144
	i32 33, ; 145
	i32 155, ; 146
	i32 84, ; 147
	i32 31, ; 148
	i32 12, ; 149
	i32 50, ; 150
	i32 55, ; 151
	i32 270, ; 152
	i32 35, ; 153
	i32 184, ; 154
	i32 297, ; 155
	i32 285, ; 156
	i32 224, ; 157
	i32 34, ; 158
	i32 57, ; 159
	i32 187, ; 160
	i32 257, ; 161
	i32 17, ; 162
	i32 288, ; 163
	i32 161, ; 164
	i32 310, ; 165
	i32 256, ; 166
	i32 191, ; 167
	i32 282, ; 168
	i32 175, ; 169
	i32 316, ; 170
	i32 150, ; 171
	i32 278, ; 172
	i32 264, ; 173
	i32 175, ; 174
	i32 314, ; 175
	i32 226, ; 176
	i32 179, ; 177
	i32 28, ; 178
	i32 51, ; 179
	i32 312, ; 180
	i32 283, ; 181
	i32 5, ; 182
	i32 296, ; 183
	i32 273, ; 184
	i32 277, ; 185
	i32 230, ; 186
	i32 292, ; 187
	i32 223, ; 188
	i32 207, ; 189
	i32 241, ; 190
	i32 84, ; 191
	i32 282, ; 192
	i32 60, ; 193
	i32 111, ; 194
	i32 56, ; 195
	i32 326, ; 196
	i32 270, ; 197
	i32 98, ; 198
	i32 19, ; 199
	i32 234, ; 200
	i32 110, ; 201
	i32 100, ; 202
	i32 101, ; 203
	i32 294, ; 204
	i32 103, ; 205
	i32 70, ; 206
	i32 37, ; 207
	i32 31, ; 208
	i32 102, ; 209
	i32 72, ; 210
	i32 300, ; 211
	i32 9, ; 212
	i32 122, ; 213
	i32 45, ; 214
	i32 225, ; 215
	i32 194, ; 216
	i32 9, ; 217
	i32 42, ; 218
	i32 4, ; 219
	i32 271, ; 220
	i32 173, ; 221
	i32 304, ; 222
	i32 188, ; 223
	i32 299, ; 224
	i32 30, ; 225
	i32 135, ; 226
	i32 91, ; 227
	i32 92, ; 228
	i32 319, ; 229
	i32 48, ; 230
	i32 138, ; 231
	i32 111, ; 232
	i32 137, ; 233
	i32 240, ; 234
	i32 114, ; 235
	i32 285, ; 236
	i32 154, ; 237
	i32 75, ; 238
	i32 78, ; 239
	i32 260, ; 240
	i32 36, ; 241
	i32 281, ; 242
	i32 244, ; 243
	i32 237, ; 244
	i32 63, ; 245
	i32 135, ; 246
	i32 15, ; 247
	i32 115, ; 248
	i32 275, ; 249
	i32 284, ; 250
	i32 232, ; 251
	i32 47, ; 252
	i32 69, ; 253
	i32 79, ; 254
	i32 125, ; 255
	i32 173, ; 256
	i32 174, ; 257
	i32 93, ; 258
	i32 120, ; 259
	i32 289, ; 260
	i32 26, ; 261
	i32 208, ; 262
	i32 253, ; 263
	i32 96, ; 264
	i32 27, ; 265
	i32 228, ; 266
	i32 317, ; 267
	i32 295, ; 268
	i32 146, ; 269
	i32 211, ; 270
	i32 166, ; 271
	i32 4, ; 272
	i32 97, ; 273
	i32 32, ; 274
	i32 92, ; 275
	i32 274, ; 276
	i32 189, ; 277
	i32 21, ; 278
	i32 40, ; 279
	i32 167, ; 280
	i32 311, ; 281
	i32 246, ; 282
	i32 303, ; 283
	i32 260, ; 284
	i32 288, ; 285
	i32 284, ; 286
	i32 265, ; 287
	i32 2, ; 288
	i32 133, ; 289
	i32 110, ; 290
	i32 190, ; 291
	i32 323, ; 292
	i32 216, ; 293
	i32 320, ; 294
	i32 57, ; 295
	i32 94, ; 296
	i32 302, ; 297
	i32 38, ; 298
	i32 227, ; 299
	i32 177, ; 300
	i32 25, ; 301
	i32 93, ; 302
	i32 88, ; 303
	i32 98, ; 304
	i32 10, ; 305
	i32 86, ; 306
	i32 99, ; 307
	i32 180, ; 308
	i32 289, ; 309
	i32 218, ; 310
	i32 299, ; 311
	i32 7, ; 312
	i32 177, ; 313
	i32 257, ; 314
	i32 294, ; 315
	i32 215, ; 316
	i32 87, ; 317
	i32 182, ; 318
	i32 252, ; 319
	i32 151, ; 320
	i32 298, ; 321
	i32 32, ; 322
	i32 115, ; 323
	i32 81, ; 324
	i32 209, ; 325
	i32 20, ; 326
	i32 11, ; 327
	i32 159, ; 328
	i32 3, ; 329
	i32 199, ; 330
	i32 306, ; 331
	i32 192, ; 332
	i32 190, ; 333
	i32 83, ; 334
	i32 185, ; 335
	i32 293, ; 336
	i32 63, ; 337
	i32 308, ; 338
	i32 278, ; 339
	i32 140, ; 340
	i32 261, ; 341
	i32 154, ; 342
	i32 174, ; 343
	i32 40, ; 344
	i32 116, ; 345
	i32 181, ; 346
	i32 217, ; 347
	i32 302, ; 348
	i32 268, ; 349
	i32 130, ; 350
	i32 204, ; 351
	i32 74, ; 352
	i32 65, ; 353
	i32 197, ; 354
	i32 312, ; 355
	i32 169, ; 356
	i32 221, ; 357
	i32 140, ; 358
	i32 205, ; 359
	i32 105, ; 360
	i32 148, ; 361
	i32 69, ; 362
	i32 153, ; 363
	i32 180, ; 364
	i32 120, ; 365
	i32 126, ; 366
	i32 307, ; 367
	i32 149, ; 368
	i32 243, ; 369
	i32 138, ; 370
	i32 230, ; 371
	i32 304, ; 372
	i32 20, ; 373
	i32 14, ; 374
	i32 134, ; 375
	i32 74, ; 376
	i32 58, ; 377
	i32 206, ; 378
	i32 233, ; 379
	i32 164, ; 380
	i32 165, ; 381
	i32 196, ; 382
	i32 15, ; 383
	i32 73, ; 384
	i32 6, ; 385
	i32 23, ; 386
	i32 255, ; 387
	i32 215, ; 388
	i32 90, ; 389
	i32 305, ; 390
	i32 1, ; 391
	i32 213, ; 392
	i32 256, ; 393
	i32 277, ; 394
	i32 133, ; 395
	i32 68, ; 396
	i32 143, ; 397
	i32 314, ; 398
	i32 293, ; 399
	i32 247, ; 400
	i32 191, ; 401
	i32 87, ; 402
	i32 95, ; 403
	i32 237, ; 404
	i32 242, ; 405
	i32 309, ; 406
	i32 30, ; 407
	i32 44, ; 408
	i32 251, ; 409
	i32 176, ; 410
	i32 217, ; 411
	i32 108, ; 412
	i32 155, ; 413
	i32 34, ; 414
	i32 22, ; 415
	i32 113, ; 416
	i32 56, ; 417
	i32 275, ; 418
	i32 141, ; 419
	i32 117, ; 420
	i32 119, ; 421
	i32 109, ; 422
	i32 219, ; 423
	i32 136, ; 424
	i32 225, ; 425
	i32 53, ; 426
	i32 104, ; 427
	i32 315, ; 428
	i32 198, ; 429
	i32 199, ; 430
	i32 132, ; 431
	i32 287, ; 432
	i32 280, ; 433
	i32 269, ; 434
	i32 321, ; 435
	i32 247, ; 436
	i32 201, ; 437
	i32 156, ; 438
	i32 300, ; 439
	i32 234, ; 440
	i32 160, ; 441
	i32 131, ; 442
	i32 269, ; 443
	i32 158, ; 444
	i32 313, ; 445
	i32 258, ; 446
	i32 176, ; 447
	i32 137, ; 448
	i32 280, ; 449
	i32 276, ; 450
	i32 166, ; 451
	i32 200, ; 452
	i32 220, ; 453
	i32 39, ; 454
	i32 245, ; 455
	i32 80, ; 456
	i32 55, ; 457
	i32 36, ; 458
	i32 96, ; 459
	i32 163, ; 460
	i32 169, ; 461
	i32 281, ; 462
	i32 81, ; 463
	i32 222, ; 464
	i32 97, ; 465
	i32 29, ; 466
	i32 156, ; 467
	i32 170, ; 468
	i32 18, ; 469
	i32 126, ; 470
	i32 193, ; 471
	i32 118, ; 472
	i32 241, ; 473
	i32 254, ; 474
	i32 273, ; 475
	i32 186, ; 476
	i32 162, ; 477
	i32 249, ; 478
	i32 328, ; 479
	i32 271, ; 480
	i32 262, ; 481
	i32 167, ; 482
	i32 16, ; 483
	i32 178, ; 484
	i32 141, ; 485
	i32 306, ; 486
	i32 124, ; 487
	i32 117, ; 488
	i32 37, ; 489
	i32 114, ; 490
	i32 46, ; 491
	i32 139, ; 492
	i32 116, ; 493
	i32 33, ; 494
	i32 94, ; 495
	i32 52, ; 496
	i32 263, ; 497
	i32 128, ; 498
	i32 150, ; 499
	i32 178, ; 500
	i32 24, ; 501
	i32 158, ; 502
	i32 240, ; 503
	i32 145, ; 504
	i32 103, ; 505
	i32 0, ; 506
	i32 88, ; 507
	i32 228, ; 508
	i32 59, ; 509
	i32 139, ; 510
	i32 99, ; 511
	i32 5, ; 512
	i32 13, ; 513
	i32 121, ; 514
	i32 134, ; 515
	i32 27, ; 516
	i32 301, ; 517
	i32 71, ; 518
	i32 238, ; 519
	i32 24, ; 520
	i32 171, ; 521
	i32 227, ; 522
	i32 267, ; 523
	i32 264, ; 524
	i32 318, ; 525
	i32 214, ; 526
	i32 207, ; 527
	i32 220, ; 528
	i32 235, ; 529
	i32 165, ; 530
	i32 268, ; 531
	i32 297, ; 532
	i32 100, ; 533
	i32 122, ; 534
	i32 239, ; 535
	i32 182, ; 536
	i32 183, ; 537
	i32 160, ; 538
	i32 164, ; 539
	i32 242, ; 540
	i32 38, ; 541
	i32 195, ; 542
	i32 305, ; 543
	i32 17, ; 544
	i32 168, ; 545
	i32 318, ; 546
	i32 317, ; 547
	i32 214, ; 548
	i32 147, ; 549
	i32 231, ; 550
	i32 197, ; 551
	i32 152, ; 552
	i32 129, ; 553
	i32 19, ; 554
	i32 64, ; 555
	i32 144, ; 556
	i32 170, ; 557
	i32 46, ; 558
	i32 325, ; 559
	i32 172, ; 560
	i32 218, ; 561
	i32 78, ; 562
	i32 60, ; 563
	i32 105, ; 564
	i32 266, ; 565
	i32 172, ; 566
	i32 222, ; 567
	i32 48, ; 568
	i32 252, ; 569
	i32 322, ; 570
	i32 263, ; 571
	i32 14, ; 572
	i32 181, ; 573
	i32 67, ; 574
	i32 168, ; 575
	i32 231, ; 576
	i32 327, ; 577
	i32 77, ; 578
	i32 236, ; 579
	i32 107, ; 580
	i32 221, ; 581
	i32 262, ; 582
	i32 212, ; 583
	i32 66, ; 584
	i32 62, ; 585
	i32 210, ; 586
	i32 157, ; 587
	i32 209, ; 588
	i32 229, ; 589
	i32 10, ; 590
	i32 195, ; 591
	i32 11, ; 592
	i32 77, ; 593
	i32 125, ; 594
	i32 82, ; 595
	i32 184, ; 596
	i32 65, ; 597
	i32 106, ; 598
	i32 64, ; 599
	i32 127, ; 600
	i32 121, ; 601
	i32 76, ; 602
	i32 276, ; 603
	i32 267, ; 604
	i32 326, ; 605
	i32 8, ; 606
	i32 235, ; 607
	i32 2, ; 608
	i32 43, ; 609
	i32 279, ; 610
	i32 153, ; 611
	i32 127, ; 612
	i32 265, ; 613
	i32 23, ; 614
	i32 132, ; 615
	i32 224, ; 616
	i32 254, ; 617
	i32 321, ; 618
	i32 303, ; 619
	i32 28, ; 620
	i32 223, ; 621
	i32 211, ; 622
	i32 61, ; 623
	i32 198, ; 624
	i32 89, ; 625
	i32 86, ; 626
	i32 145, ; 627
	i32 200, ; 628
	i32 35, ; 629
	i32 85, ; 630
	i32 205, ; 631
	i32 243, ; 632
	i32 179, ; 633
	i32 316, ; 634
	i32 311, ; 635
	i32 183, ; 636
	i32 49, ; 637
	i32 6, ; 638
	i32 89, ; 639
	i32 323, ; 640
	i32 21, ; 641
	i32 159, ; 642
	i32 95, ; 643
	i32 49, ; 644
	i32 112, ; 645
	i32 259, ; 646
	i32 129, ; 647
	i32 202, ; 648
	i32 75, ; 649
	i32 210, ; 650
	i32 236, ; 651
	i32 258, ; 652
	i32 7, ; 653
	i32 196, ; 654
	i32 109, ; 655
	i32 259, ; 656
	i32 245 ; 657
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

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
!7 = !{i32 1, !"min_enum_size", i32 4}
