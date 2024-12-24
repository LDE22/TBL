; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [175 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [525 x i64] [
	i64 u0x0071cf2d27b7d61e, ; 0: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 94
	i64 u0x01109b0e4d99e61f, ; 1: System.ComponentModel.Annotations.dll => 112
	i64 u0x01a2bc6b8e30c883, ; 2: Dapper.dll => 35
	i64 u0x02123411c4e01926, ; 3: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 90
	i64 u0x02a4c5a44384f885, ; 4: Microsoft.Extensions.Caching.Memory => 44
	i64 u0x02abedc11addc1ed, ; 5: lib_Mono.Android.Runtime.dll.so => 173
	i64 u0x032267b2a94db371, ; 6: lib_Xamarin.AndroidX.AppCompat.dll.so => 73
	i64 u0x0363ac97a4cb84e6, ; 7: SQLitePCLRaw.provider.e_sqlite3.dll => 70
	i64 u0x043032f1d071fae0, ; 8: ru/Microsoft.Maui.Controls.resources => 24
	i64 u0x044440a55165631e, ; 9: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 2
	i64 u0x046eb1581a80c6b0, ; 10: vi/Microsoft.Maui.Controls.resources => 30
	i64 u0x0517ef04e06e9f76, ; 11: System.Net.Primitives => 137
	i64 u0x051a3be159e4ef99, ; 12: Xamarin.GooglePlayServices.Tasks => 101
	i64 u0x0565d18c6da3de38, ; 13: Xamarin.AndroidX.RecyclerView => 92
	i64 u0x057bf9fa9fb09f7c, ; 14: Microsoft.Data.Sqlite.dll => 38
	i64 u0x0581db89237110e9, ; 15: lib_System.Collections.dll.so => 111
	i64 u0x05989cb940b225a9, ; 16: Microsoft.Maui.dll => 60
	i64 u0x05ef98b6a1db882c, ; 17: lib_Microsoft.Data.Sqlite.dll.so => 38
	i64 u0x06076b5d2b581f08, ; 18: zh-HK/Microsoft.Maui.Controls.resources => 31
	i64 u0x06388ffe9f6c161a, ; 19: System.Xml.Linq.dll => 166
	i64 u0x0680a433c781bb3d, ; 20: Xamarin.AndroidX.Collection.Jvm => 76
	i64 u0x07c57877c7ba78ad, ; 21: ru/Microsoft.Maui.Controls.resources.dll => 24
	i64 u0x07dcdc7460a0c5e4, ; 22: System.Collections.NonGeneric => 109
	i64 u0x08a7c865576bbde7, ; 23: System.Reflection.Primitives => 148
	i64 u0x08f3c9788ee2153c, ; 24: Xamarin.AndroidX.DrawerLayout => 81
	i64 u0x09138715c92dba90, ; 25: lib_System.ComponentModel.Annotations.dll.so => 112
	i64 u0x0919c28b89381a0b, ; 26: lib_Microsoft.Extensions.Options.dll.so => 55
	i64 u0x092266563089ae3e, ; 27: lib_System.Collections.NonGeneric.dll.so => 109
	i64 u0x098b50f911ccea8d, ; 28: lib_Xamarin.GooglePlayServices.Basement.dll.so => 99
	i64 u0x09d144a7e214d457, ; 29: System.Security.Cryptography => 156
	i64 u0x0a066c5968b04c8d, ; 30: lib_Firebase.dll.so => 36
	i64 u0x0a1e8d87ca873548, ; 31: lib_Dapper.dll.so => 35
	i64 u0x0a805f95d98f597b, ; 32: lib_Microsoft.Extensions.Caching.Abstractions.dll.so => 43
	i64 u0x0abb3e2b271edc45, ; 33: System.Threading.Channels.dll => 161
	i64 u0x0b3b632c3bbee20c, ; 34: sk/Microsoft.Maui.Controls.resources => 25
	i64 u0x0b6aff547b84fbe9, ; 35: Xamarin.KotlinX.Serialization.Core.Jvm => 104
	i64 u0x0be2e1f8ce4064ed, ; 36: Xamarin.AndroidX.ViewPager => 95
	i64 u0x0c3ca6cc978e2aae, ; 37: pt-BR/Microsoft.Maui.Controls.resources => 21
	i64 u0x0c3dd9438f54f672, ; 38: lib_Xamarin.GooglePlayServices.Maps.dll.so => 100
	i64 u0x0c59ad9fbbd43abe, ; 39: Mono.Android => 174
	i64 u0x0c7790f60165fc06, ; 40: lib_Microsoft.Maui.Essentials.dll.so => 61
	i64 u0x0e14e73a54dda68e, ; 41: lib_System.Net.NameResolution.dll.so => 135
	i64 u0x102a31b45304b1da, ; 42: Xamarin.AndroidX.CustomView => 80
	i64 u0x10f6cfcbcf801616, ; 43: System.IO.Compression.Brotli => 125
	i64 u0x123639456fb056da, ; 44: System.Reflection.Emit.Lightweight.dll => 147
	i64 u0x125b7f94acb989db, ; 45: Xamarin.AndroidX.RecyclerView.dll => 92
	i64 u0x13a01de0cbc3f06c, ; 46: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 8
	i64 u0x13f1e5e209e91af4, ; 47: lib_Java.Interop.dll.so => 172
	i64 u0x13f1e880c25d96d1, ; 48: he/Microsoft.Maui.Controls.resources => 9
	i64 u0x143d8ea60a6a4011, ; 49: Microsoft.Extensions.DependencyInjection.Abstractions => 48
	i64 u0x16054fdcb6b3098b, ; 50: Microsoft.Extensions.DependencyModel.dll => 49
	i64 u0x16bf2a22df043a09, ; 51: System.IO.Pipes.dll => 128
	i64 u0x17125c9a85b4929f, ; 52: lib_netstandard.dll.so => 170
	i64 u0x1791d47293d97a1b, ; 53: lib_Npgsql.EntityFrameworkCore.PostgreSQL.dll.so => 66
	i64 u0x17b56e25558a5d36, ; 54: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 12
	i64 u0x17c042c5bbf49f7f, ; 55: lib_TBL.dll.so => 105
	i64 u0x17f9358913beb16a, ; 56: System.Text.Encodings.Web => 158
	i64 u0x18402a709e357f3b, ; 57: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 104
	i64 u0x18f0ce884e87d89a, ; 58: nb/Microsoft.Maui.Controls.resources.dll => 18
	i64 u0x1a91866a319e9259, ; 59: lib_System.Collections.Concurrent.dll.so => 107
	i64 u0x1aac34d1917ba5d3, ; 60: lib_System.dll.so => 169
	i64 u0x1aad60783ffa3e5b, ; 61: lib-th-Microsoft.Maui.Controls.resources.dll.so => 27
	i64 u0x1c292b1598348d77, ; 62: Microsoft.Extensions.Diagnostics.dll => 50
	i64 u0x1c753b5ff15bce1b, ; 63: Mono.Android.Runtime.dll => 173
	i64 u0x1e3d87657e9659bc, ; 64: Xamarin.AndroidX.Navigation.UI => 91
	i64 u0x1e71143913d56c10, ; 65: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 16
	i64 u0x1ed8fcce5e9b50a0, ; 66: Microsoft.Extensions.Options.dll => 55
	i64 u0x209375905fcc1bad, ; 67: lib_System.IO.Compression.Brotli.dll.so => 125
	i64 u0x20db6439c930bf87, ; 68: TBL => 105
	i64 u0x20fab3cf2dfbc8df, ; 69: lib_System.Diagnostics.Process.dll.so => 119
	i64 u0x2174319c0d835bc9, ; 70: System.Runtime => 155
	i64 u0x21cc7e445dcd5469, ; 71: System.Reflection.Emit.ILGeneration => 146
	i64 u0x220fd4f2e7c48170, ; 72: th/Microsoft.Maui.Controls.resources => 27
	i64 u0x224538d85ed15a82, ; 73: System.IO.Pipes => 128
	i64 u0x2347c268e3e4e536, ; 74: Xamarin.GooglePlayServices.Basement.dll => 99
	i64 u0x237be844f1f812c7, ; 75: System.Threading.Thread.dll => 162
	i64 u0x23807c59646ec4f3, ; 76: lib_Microsoft.EntityFrameworkCore.dll.so => 39
	i64 u0x2407aef2bbe8fadf, ; 77: System.Console => 116
	i64 u0x240abe014b27e7d3, ; 78: Xamarin.AndroidX.Core.dll => 78
	i64 u0x247619fe4413f8bf, ; 79: System.Runtime.Serialization.Primitives.dll => 154
	i64 u0x252073cc3caa62c2, ; 80: fr/Microsoft.Maui.Controls.resources.dll => 8
	i64 u0x25a0a7eff76ea08e, ; 81: SQLitePCLRaw.batteries_v2.dll => 67
	i64 u0x2662c629b96b0b30, ; 82: lib_Xamarin.Kotlin.StdLib.dll.so => 102
	i64 u0x268c1439f13bcc29, ; 83: lib_Microsoft.Extensions.Primitives.dll.so => 56
	i64 u0x273f3515de5faf0d, ; 84: id/Microsoft.Maui.Controls.resources.dll => 13
	i64 u0x2742545f9094896d, ; 85: hr/Microsoft.Maui.Controls.resources => 11
	i64 u0x27b410442fad6cf1, ; 86: Java.Interop.dll => 172
	i64 u0x2801845a2c71fbfb, ; 87: System.Net.Primitives.dll => 137
	i64 u0x28e52865585a1ebe, ; 88: Microsoft.Extensions.Diagnostics.Abstractions.dll => 51
	i64 u0x2a128783efe70ba0, ; 89: uk/Microsoft.Maui.Controls.resources.dll => 29
	i64 u0x2a3b095612184159, ; 90: lib_System.Net.NetworkInformation.dll.so => 136
	i64 u0x2a6507a5ffabdf28, ; 91: System.Diagnostics.TraceSource.dll => 120
	i64 u0x2ad156c8e1354139, ; 92: fi/Microsoft.Maui.Controls.resources => 7
	i64 u0x2af298f63581d886, ; 93: System.Text.RegularExpressions.dll => 160
	i64 u0x2afc1c4f898552ee, ; 94: lib_System.Formats.Asn1.dll.so => 124
	i64 u0x2b148910ed40fbf9, ; 95: zh-Hant/Microsoft.Maui.Controls.resources.dll => 33
	i64 u0x2c8bd14bb93a7d82, ; 96: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 20
	i64 u0x2cc9e1fed6257257, ; 97: lib_System.Reflection.Emit.Lightweight.dll.so => 147
	i64 u0x2cd723e9fe623c7c, ; 98: lib_System.Private.Xml.Linq.dll.so => 144
	i64 u0x2ce03196fe1170d2, ; 99: Microsoft.Maui.Controls.Maps.dll => 58
	i64 u0x2d169d318a968379, ; 100: System.Threading.dll => 163
	i64 u0x2d47774b7d993f59, ; 101: sv/Microsoft.Maui.Controls.resources.dll => 26
	i64 u0x2db915caf23548d2, ; 102: System.Text.Json.dll => 159
	i64 u0x2e6f1f226821322a, ; 103: el/Microsoft.Maui.Controls.resources.dll => 5
	i64 u0x2f02f94df3200fe5, ; 104: System.Diagnostics.Process => 119
	i64 u0x2f2e98e1c89b1aff, ; 105: System.Xml.ReaderWriter => 167
	i64 u0x2f5911d9ba814e4e, ; 106: System.Diagnostics.Tracing => 121
	i64 u0x2feb4d2fcda05cfd, ; 107: Microsoft.Extensions.Caching.Abstractions.dll => 43
	i64 u0x2ff49de6a71764a1, ; 108: lib_Microsoft.Extensions.Http.dll.so => 52
	i64 u0x309ee9eeec09a71e, ; 109: lib_Xamarin.AndroidX.Fragment.dll.so => 82
	i64 u0x30bde19041cd89dd, ; 110: lib_Microsoft.Maui.Maps.dll.so => 63
	i64 u0x31195fef5d8fb552, ; 111: _Microsoft.Android.Resource.Designer.dll => 34
	i64 u0x32243413e774362a, ; 112: Xamarin.AndroidX.CardView.dll => 75
	i64 u0x3235427f8d12dae1, ; 113: lib_System.Drawing.Primitives.dll.so => 122
	i64 u0x329753a17a517811, ; 114: fr/Microsoft.Maui.Controls.resources => 8
	i64 u0x32aa989ff07a84ff, ; 115: lib_System.Xml.ReaderWriter.dll.so => 167
	i64 u0x33829542f112d59b, ; 116: System.Collections.Immutable => 108
	i64 u0x33a31443733849fe, ; 117: lib-es-Microsoft.Maui.Controls.resources.dll.so => 6
	i64 u0x341abc357fbb4ebf, ; 118: lib_System.Net.Sockets.dll.so => 140
	i64 u0x34dfd74fe2afcf37, ; 119: Microsoft.Maui => 60
	i64 u0x34e292762d9615df, ; 120: cs/Microsoft.Maui.Controls.resources.dll => 2
	i64 u0x3508234247f48404, ; 121: Microsoft.Maui.Controls => 57
	i64 u0x353590da528c9d22, ; 122: System.ComponentModel.Annotations => 112
	i64 u0x3549870798b4cd30, ; 123: lib_Xamarin.AndroidX.ViewPager2.dll.so => 96
	i64 u0x355282fc1c909694, ; 124: Microsoft.Extensions.Configuration => 45
	i64 u0x36263608556d5d42, ; 125: Npgsql.dll => 65
	i64 u0x36b2b50fdf589ae2, ; 126: System.Reflection.Emit.Lightweight => 147
	i64 u0x374ef46b06791af6, ; 127: System.Reflection.Primitives.dll => 148
	i64 u0x380134e03b1e160a, ; 128: System.Collections.Immutable.dll => 108
	i64 u0x385c17636bb6fe6e, ; 129: Xamarin.AndroidX.CustomView.dll => 80
	i64 u0x38869c811d74050e, ; 130: System.Net.NameResolution.dll => 135
	i64 u0x393c226616977fdb, ; 131: lib_Xamarin.AndroidX.ViewPager.dll.so => 95
	i64 u0x395b3053dde89e41, ; 132: lib_System.Reactive.dll.so => 71
	i64 u0x395e37c3334cf82a, ; 133: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 1
	i64 u0x39a87563fdb248a0, ; 134: System.Reactive.dll => 71
	i64 u0x39aa39fda111d9d3, ; 135: Newtonsoft.Json => 64
	i64 u0x3b860f9932505633, ; 136: lib_System.Text.Encoding.Extensions.dll.so => 157
	i64 u0x3c7c495f58ac5ee9, ; 137: Xamarin.Kotlin.StdLib => 102
	i64 u0x3d46f0b995082740, ; 138: System.Xml.Linq => 166
	i64 u0x3d9c2a242b040a50, ; 139: lib_Xamarin.AndroidX.Core.dll.so => 78
	i64 u0x3da7781d6333a8fe, ; 140: SQLitePCLRaw.batteries_v2 => 67
	i64 u0x3f2839b8d63653b8, ; 141: lib_LiteDB.dll.so => 37
	i64 u0x407a10bb4bf95829, ; 142: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 88
	i64 u0x41cab042be111c34, ; 143: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 74
	i64 u0x43375950ec7c1b6a, ; 144: netstandard.dll => 170
	i64 u0x434c4e1d9284cdae, ; 145: Mono.Android.dll => 174
	i64 u0x43950f84de7cc79a, ; 146: pl/Microsoft.Maui.Controls.resources.dll => 20
	i64 u0x448bd33429269b19, ; 147: Microsoft.CSharp => 106
	i64 u0x4499fa3c8e494654, ; 148: lib_System.Runtime.Serialization.Primitives.dll.so => 154
	i64 u0x4515080865a951a5, ; 149: Xamarin.Kotlin.StdLib.dll => 102
	i64 u0x453c1277f85cf368, ; 150: lib_Microsoft.EntityFrameworkCore.Abstractions.dll.so => 40
	i64 u0x45c40276a42e283e, ; 151: System.Diagnostics.TraceSource => 120
	i64 u0x45fcc9fd66f25095, ; 152: Microsoft.Extensions.DependencyModel => 49
	i64 u0x46a4213bc97fe5ae, ; 153: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 24
	i64 u0x47358bd471172e1d, ; 154: lib_System.Xml.Linq.dll.so => 166
	i64 u0x47daf4e1afbada10, ; 155: pt/Microsoft.Maui.Controls.resources => 22
	i64 u0x49e952f19a4e2022, ; 156: System.ObjectModel => 142
	i64 u0x4a5667b2462a664b, ; 157: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 91
	i64 u0x4b7b6532ded934b7, ; 158: System.Text.Json => 159
	i64 u0x4c7755cf07ad2d5f, ; 159: System.Net.Http.Json.dll => 133
	i64 u0x4c9caee94c082049, ; 160: Xamarin.GooglePlayServices.Maps => 100
	i64 u0x4ca014ceac582c86, ; 161: Microsoft.EntityFrameworkCore.Relational.dll => 41
	i64 u0x4cc5f15266470798, ; 162: lib_Xamarin.AndroidX.Loader.dll.so => 87
	i64 u0x4cf6f67dc77aacd2, ; 163: System.Net.NetworkInformation.dll => 136
	i64 u0x4d479f968a05e504, ; 164: System.Linq.Expressions.dll => 129
	i64 u0x4d55a010ffc4faff, ; 165: System.Private.Xml => 145
	i64 u0x4d95fccc1f67c7ca, ; 166: System.Runtime.Loader.dll => 151
	i64 u0x4dcf44c3c9b076a2, ; 167: it/Microsoft.Maui.Controls.resources.dll => 14
	i64 u0x4dd9247f1d2c3235, ; 168: Xamarin.AndroidX.Loader.dll => 87
	i64 u0x4e32f00cb0937401, ; 169: Mono.Android.Runtime => 173
	i64 u0x4ebd0c4b82c5eefc, ; 170: lib_System.Threading.Channels.dll.so => 161
	i64 u0x4f21ee6ef9eb527e, ; 171: ca/Microsoft.Maui.Controls.resources => 1
	i64 u0x4fd5f3ee53d0a4f0, ; 172: SQLitePCLRaw.lib.e_sqlite3.android => 69
	i64 u0x5037f0be3c28c7a3, ; 173: lib_Microsoft.Maui.Controls.dll.so => 57
	i64 u0x5131bbe80989093f, ; 174: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 85
	i64 u0x51bb8a2afe774e32, ; 175: System.Drawing => 123
	i64 u0x526ce79eb8e90527, ; 176: lib_System.Net.Primitives.dll.so => 137
	i64 u0x52829f00b4467c38, ; 177: lib_System.Data.Common.dll.so => 117
	i64 u0x529ffe06f39ab8db, ; 178: Xamarin.AndroidX.Core => 78
	i64 u0x52ff996554dbf352, ; 179: Microsoft.Maui.Graphics => 62
	i64 u0x535f7e40e8fef8af, ; 180: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 25
	i64 u0x53a96d5c86c9e194, ; 181: System.Net.NetworkInformation => 136
	i64 u0x53be1038a61e8d44, ; 182: System.Runtime.InteropServices.RuntimeInformation.dll => 149
	i64 u0x53c3014b9437e684, ; 183: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 31
	i64 u0x54795225dd1587af, ; 184: lib_System.Runtime.dll.so => 155
	i64 u0x556e8b63b660ab8b, ; 185: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 83
	i64 u0x5588627c9a108ec9, ; 186: System.Collections.Specialized => 110
	i64 u0x571c5cfbec5ae8e2, ; 187: System.Private.Uri => 143
	i64 u0x578cd35c91d7b347, ; 188: lib_SQLitePCLRaw.core.dll.so => 68
	i64 u0x579a06fed6eec900, ; 189: System.Private.CoreLib.dll => 171
	i64 u0x57c542c14049b66d, ; 190: System.Diagnostics.DiagnosticSource => 118
	i64 u0x58601b2dda4a27b9, ; 191: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 15
	i64 u0x58688d9af496b168, ; 192: Microsoft.Extensions.DependencyInjection.dll => 47
	i64 u0x595a356d23e8da9a, ; 193: lib_Microsoft.CSharp.dll.so => 106
	i64 u0x5a89a886ae30258d, ; 194: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 77
	i64 u0x5a8f6699f4a1caa9, ; 195: lib_System.Threading.dll.so => 163
	i64 u0x5ae9cd33b15841bf, ; 196: System.ComponentModel => 115
	i64 u0x5b5f0e240a06a2a2, ; 197: da/Microsoft.Maui.Controls.resources.dll => 3
	i64 u0x5b755276902c8414, ; 198: Xamarin.GooglePlayServices.Base => 98
	i64 u0x5c393624b8176517, ; 199: lib_Microsoft.Extensions.Logging.dll.so => 53
	i64 u0x5db0cbbd1028510e, ; 200: lib_System.Runtime.InteropServices.dll.so => 150
	i64 u0x5db30905d3e5013b, ; 201: Xamarin.AndroidX.Collection.Jvm.dll => 76
	i64 u0x5e467bc8f09ad026, ; 202: System.Collections.Specialized.dll => 110
	i64 u0x5ea92fdb19ec8c4c, ; 203: System.Text.Encodings.Web.dll => 158
	i64 u0x5eb8046dd40e9ac3, ; 204: System.ComponentModel.Primitives => 113
	i64 u0x5f36ccf5c6a57e24, ; 205: System.Xml.ReaderWriter.dll => 167
	i64 u0x5f4294b9b63cb842, ; 206: System.Data.Common => 117
	i64 u0x5f7399e166075632, ; 207: lib_SQLitePCLRaw.lib.e_sqlite3.android.dll.so => 69
	i64 u0x5f9a2d823f664957, ; 208: lib-el-Microsoft.Maui.Controls.resources.dll.so => 5
	i64 u0x609f4b7b63d802d4, ; 209: lib_Microsoft.Extensions.DependencyInjection.dll.so => 47
	i64 u0x60cd4e33d7e60134, ; 210: Xamarin.KotlinX.Coroutines.Core.Jvm => 103
	i64 u0x60f62d786afcf130, ; 211: System.Memory => 132
	i64 u0x61be8d1299194243, ; 212: Microsoft.Maui.Controls.Xaml => 59
	i64 u0x61d2cba29557038f, ; 213: de/Microsoft.Maui.Controls.resources => 4
	i64 u0x61d88f399afb2f45, ; 214: lib_System.Runtime.Loader.dll.so => 151
	i64 u0x622eef6f9e59068d, ; 215: System.Private.CoreLib => 171
	i64 u0x63f1f6883c1e23c2, ; 216: lib_System.Collections.Immutable.dll.so => 108
	i64 u0x6400f68068c1e9f1, ; 217: Xamarin.Google.Android.Material.dll => 97
	i64 u0x65ecac39144dd3cc, ; 218: Microsoft.Maui.Controls.dll => 57
	i64 u0x65ece51227bfa724, ; 219: lib_System.Runtime.Numerics.dll.so => 152
	i64 u0x6692e924eade1b29, ; 220: lib_System.Console.dll.so => 116
	i64 u0x66a4e5c6a3fb0bae, ; 221: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 85
	i64 u0x66d13304ce1a3efa, ; 222: Xamarin.AndroidX.CursorAdapter => 79
	i64 u0x68558ec653afa616, ; 223: lib-da-Microsoft.Maui.Controls.resources.dll.so => 3
	i64 u0x6872ec7a2e36b1ac, ; 224: System.Drawing.Primitives.dll => 122
	i64 u0x68fbbbe2eb455198, ; 225: System.Formats.Asn1 => 124
	i64 u0x69063fc0ba8e6bdd, ; 226: he/Microsoft.Maui.Controls.resources.dll => 9
	i64 u0x699dffb2427a2d71, ; 227: SQLitePCLRaw.lib.e_sqlite3.android.dll => 69
	i64 u0x6a4d7577b2317255, ; 228: System.Runtime.InteropServices.dll => 150
	i64 u0x6ab05716e0ac384b, ; 229: LiteDB.dll => 37
	i64 u0x6ace3b74b15ee4a4, ; 230: nb/Microsoft.Maui.Controls.resources => 18
	i64 u0x6c07f7c8a4a1e99d, ; 231: LiteDB => 37
	i64 u0x6d12bfaa99c72b1f, ; 232: lib_Microsoft.Maui.Graphics.dll.so => 62
	i64 u0x6d79993361e10ef2, ; 233: Microsoft.Extensions.Primitives => 56
	i64 u0x6d86d56b84c8eb71, ; 234: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 79
	i64 u0x6d9bea6b3e895cf7, ; 235: Microsoft.Extensions.Primitives.dll => 56
	i64 u0x6e25a02c3833319a, ; 236: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 89
	i64 u0x6fd2265da78b93a4, ; 237: lib_Microsoft.Maui.dll.so => 60
	i64 u0x6fdfc7de82c33008, ; 238: cs/Microsoft.Maui.Controls.resources => 2
	i64 u0x70e99f48c05cb921, ; 239: tr/Microsoft.Maui.Controls.resources.dll => 28
	i64 u0x70fd3deda22442d2, ; 240: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 18
	i64 u0x717530326f808838, ; 241: lib_Microsoft.Extensions.Diagnostics.Abstractions.dll.so => 51
	i64 u0x71a495ea3761dde8, ; 242: lib-it-Microsoft.Maui.Controls.resources.dll.so => 14
	i64 u0x71ad672adbe48f35, ; 243: System.ComponentModel.Primitives.dll => 113
	i64 u0x72b1fb4109e08d7b, ; 244: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 11
	i64 u0x73e4ce94e2eb6ffc, ; 245: lib_System.Memory.dll.so => 132
	i64 u0x73f2645914262879, ; 246: lib_Microsoft.EntityFrameworkCore.Sqlite.dll.so => 42
	i64 u0x746cf89b511b4d40, ; 247: lib_Microsoft.Extensions.Diagnostics.dll.so => 50
	i64 u0x755a91767330b3d4, ; 248: lib_Microsoft.Extensions.Configuration.dll.so => 45
	i64 u0x76012e7334db86e5, ; 249: lib_Xamarin.AndroidX.SavedState.dll.so => 93
	i64 u0x76ca07b878f44da0, ; 250: System.Runtime.Numerics.dll => 152
	i64 u0x780bc73597a503a9, ; 251: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 17
	i64 u0x783606d1e53e7a1a, ; 252: th/Microsoft.Maui.Controls.resources.dll => 27
	i64 u0x78a45e51311409b6, ; 253: Xamarin.AndroidX.Fragment.dll => 82
	i64 u0x7a25bdb29108c6e7, ; 254: Microsoft.Extensions.Http => 52
	i64 u0x7adb8da2ac89b647, ; 255: fi/Microsoft.Maui.Controls.resources.dll => 7
	i64 u0x7b150145c0a9058c, ; 256: Microsoft.Data.Sqlite => 38
	i64 u0x7bef86a4335c4870, ; 257: System.ComponentModel.TypeConverter => 114
	i64 u0x7c0820144cd34d6a, ; 258: sk/Microsoft.Maui.Controls.resources.dll => 25
	i64 u0x7c2a0bd1e0f988fc, ; 259: lib-de-Microsoft.Maui.Controls.resources.dll.so => 4
	i64 u0x7cb95ad2a929d044, ; 260: Xamarin.GooglePlayServices.Basement => 99
	i64 u0x7d649b75d580bb42, ; 261: ms/Microsoft.Maui.Controls.resources.dll => 17
	i64 u0x7d8ee2bdc8e3aad1, ; 262: System.Numerics.Vectors => 141
	i64 u0x7dfc3d6d9d8d7b70, ; 263: System.Collections => 111
	i64 u0x7e2e564fa2f76c65, ; 264: lib_System.Diagnostics.Tracing.dll.so => 121
	i64 u0x7e946809d6008ef2, ; 265: lib_System.ObjectModel.dll.so => 142
	i64 u0x7eb4f0dc47488736, ; 266: lib_Xamarin.GooglePlayServices.Tasks.dll.so => 101
	i64 u0x7ecc13347c8fd849, ; 267: lib_System.ComponentModel.dll.so => 115
	i64 u0x7f00ddd9b9ca5a13, ; 268: Xamarin.AndroidX.ViewPager.dll => 95
	i64 u0x7f9351cd44b1273f, ; 269: Microsoft.Extensions.Configuration.Abstractions => 46
	i64 u0x7fbd557c99b3ce6f, ; 270: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 84
	i64 u0x80fa55b6d1b0be99, ; 271: SQLitePCLRaw.provider.e_sqlite3 => 70
	i64 u0x812c069d5cdecc17, ; 272: System.dll => 169
	i64 u0x81ab745f6c0f5ce6, ; 273: zh-Hant/Microsoft.Maui.Controls.resources => 33
	i64 u0x8277f2be6b5ce05f, ; 274: Xamarin.AndroidX.AppCompat => 73
	i64 u0x828f06563b30bc50, ; 275: lib_Xamarin.AndroidX.CardView.dll.so => 75
	i64 u0x82df8f5532a10c59, ; 276: lib_System.Drawing.dll.so => 123
	i64 u0x82f6403342e12049, ; 277: uk/Microsoft.Maui.Controls.resources => 29
	i64 u0x83c14ba66c8e2b8c, ; 278: zh-Hans/Microsoft.Maui.Controls.resources => 32
	i64 u0x84ae73148a4557d2, ; 279: lib_System.IO.Pipes.dll.so => 128
	i64 u0x84cd5cdec0f54bcc, ; 280: lib_Microsoft.EntityFrameworkCore.Relational.dll.so => 41
	i64 u0x86a909228dc7657b, ; 281: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 33
	i64 u0x86b3e00c36b84509, ; 282: Microsoft.Extensions.Configuration.dll => 45
	i64 u0x87c4b8a492b176ad, ; 283: Microsoft.EntityFrameworkCore.Abstractions => 40
	i64 u0x87c69b87d9283884, ; 284: lib_System.Threading.Thread.dll.so => 162
	i64 u0x87f6569b25707834, ; 285: System.IO.Compression.Brotli.dll => 125
	i64 u0x8842b3a5d2d3fb36, ; 286: Microsoft.Maui.Essentials => 61
	i64 u0x88bda98e0cffb7a9, ; 287: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 103
	i64 u0x8930322c7bd8f768, ; 288: netstandard => 170
	i64 u0x897a606c9e39c75f, ; 289: lib_System.ComponentModel.Primitives.dll.so => 113
	i64 u0x89c5188089ec2cd5, ; 290: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 149
	i64 u0x8a399a706fcbce4b, ; 291: Microsoft.Extensions.Caching.Abstractions => 43
	i64 u0x8ad229ea26432ee2, ; 292: Xamarin.AndroidX.Loader => 87
	i64 u0x8b4ff5d0fdd5faa1, ; 293: lib_System.Diagnostics.DiagnosticSource.dll.so => 118
	i64 u0x8b8d01333a96d0b5, ; 294: System.Diagnostics.Process.dll => 119
	i64 u0x8b9ceca7acae3451, ; 295: lib-he-Microsoft.Maui.Controls.resources.dll.so => 9
	i64 u0x8d0f420977c2c1c7, ; 296: Xamarin.AndroidX.CursorAdapter.dll => 79
	i64 u0x8d52a25632e81824, ; 297: Microsoft.EntityFrameworkCore.Sqlite.dll => 42
	i64 u0x8d7b8ab4b3310ead, ; 298: System.Threading => 163
	i64 u0x8da188285aadfe8e, ; 299: System.Collections.Concurrent => 107
	i64 u0x8ec6e06a61c1baeb, ; 300: lib_Newtonsoft.Json.dll.so => 64
	i64 u0x8ed807bfe9858dfc, ; 301: Xamarin.AndroidX.Navigation.Common => 88
	i64 u0x8ee08b8194a30f48, ; 302: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 10
	i64 u0x8ef7601039857a44, ; 303: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 23
	i64 u0x8ef9414937d93a0a, ; 304: SQLitePCLRaw.core.dll => 68
	i64 u0x8efbc0801a122264, ; 305: Xamarin.GooglePlayServices.Tasks.dll => 101
	i64 u0x8f32c6f611f6ffab, ; 306: pt/Microsoft.Maui.Controls.resources.dll => 22
	i64 u0x8f8829d21c8985a4, ; 307: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 21
	i64 u0x8fd27d934d7b3a55, ; 308: SQLitePCLRaw.core => 68
	i64 u0x90263f8448b8f572, ; 309: lib_System.Diagnostics.TraceSource.dll.so => 120
	i64 u0x903101b46fb73a04, ; 310: _Microsoft.Android.Resource.Designer => 34
	i64 u0x90393bd4865292f3, ; 311: lib_System.IO.Compression.dll.so => 126
	i64 u0x90634f86c5ebe2b5, ; 312: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 85
	i64 u0x907b636704ad79ef, ; 313: lib_Microsoft.Maui.Controls.Xaml.dll.so => 59
	i64 u0x91418dc638b29e68, ; 314: lib_Xamarin.AndroidX.CustomView.dll.so => 80
	i64 u0x9157bd523cd7ed36, ; 315: lib_System.Text.Json.dll.so => 159
	i64 u0x91a74f07b30d37e2, ; 316: System.Linq.dll => 131
	i64 u0x91fa41a87223399f, ; 317: ca/Microsoft.Maui.Controls.resources.dll => 1
	i64 u0x93cfa73ab28d6e35, ; 318: ms/Microsoft.Maui.Controls.resources => 17
	i64 u0x944077d8ca3c6580, ; 319: System.IO.Compression.dll => 126
	i64 u0x967fc325e09bfa8c, ; 320: es/Microsoft.Maui.Controls.resources => 6
	i64 u0x9732d8dbddea3d9a, ; 321: id/Microsoft.Maui.Controls.resources => 13
	i64 u0x978be80e5210d31b, ; 322: Microsoft.Maui.Graphics.dll => 62
	i64 u0x979ab54025cc1c7f, ; 323: lib_Xamarin.GooglePlayServices.Base.dll.so => 98
	i64 u0x97b8c771ea3e4220, ; 324: System.ComponentModel.dll => 115
	i64 u0x97e144c9d3c6976e, ; 325: System.Collections.Concurrent.dll => 107
	i64 u0x991d510397f92d9d, ; 326: System.Linq.Expressions => 129
	i64 u0x99a00ca5270c6878, ; 327: Xamarin.AndroidX.Navigation.Runtime => 90
	i64 u0x99cdc6d1f2d3a72f, ; 328: ko/Microsoft.Maui.Controls.resources.dll => 16
	i64 u0x9acfd25e735d5594, ; 329: lib_Npgsql.dll.so => 65
	i64 u0x9b211a749105beac, ; 330: System.Transactions.Local => 164
	i64 u0x9d5dbcf5a48583fe, ; 331: lib_Xamarin.AndroidX.Activity.dll.so => 72
	i64 u0x9d74dee1a7725f34, ; 332: Microsoft.Extensions.Configuration.Abstractions.dll => 46
	i64 u0x9e4534b6adaf6e84, ; 333: nl/Microsoft.Maui.Controls.resources => 19
	i64 u0x9eaf1efdf6f7267e, ; 334: Xamarin.AndroidX.Navigation.Common.dll => 88
	i64 u0x9ef542cf1f78c506, ; 335: Xamarin.AndroidX.Lifecycle.LiveData.Core => 84
	i64 u0xa0d8259f4cc284ec, ; 336: lib_System.Security.Cryptography.dll.so => 156
	i64 u0xa1440773ee9d341e, ; 337: Xamarin.Google.Android.Material => 97
	i64 u0xa1a184e02d8fa4f2, ; 338: Firebase.dll => 36
	i64 u0xa1b9d7c27f47219f, ; 339: Xamarin.AndroidX.Navigation.UI.dll => 91
	i64 u0xa1cfec8d4a8d7c32, ; 340: Npgsql.EntityFrameworkCore.PostgreSQL.dll => 66
	i64 u0xa2572680829d2c7c, ; 341: System.IO.Pipelines.dll => 127
	i64 u0xa46aa1eaa214539b, ; 342: ko/Microsoft.Maui.Controls.resources => 16
	i64 u0xa4a372eecb9e4df0, ; 343: Microsoft.Extensions.Diagnostics => 50
	i64 u0xa4edc8f2ceae241a, ; 344: System.Data.Common.dll => 117
	i64 u0xa5494f40f128ce6a, ; 345: System.Runtime.Serialization.Formatters.dll => 153
	i64 u0xa5e599d1e0524750, ; 346: System.Numerics.Vectors.dll => 141
	i64 u0xa5f1ba49b85dd355, ; 347: System.Security.Cryptography.dll => 156
	i64 u0xa66a6d0f6d93aac8, ; 348: TBL.dll => 105
	i64 u0xa67dbee13e1df9ca, ; 349: Xamarin.AndroidX.SavedState.dll => 93
	i64 u0xa68a420042bb9b1f, ; 350: Xamarin.AndroidX.DrawerLayout.dll => 81
	i64 u0xa78ce3745383236a, ; 351: Xamarin.AndroidX.Lifecycle.Common.Jvm => 83
	i64 u0xa7c31b56b4dc7b33, ; 352: hu/Microsoft.Maui.Controls.resources => 12
	i64 u0xa843f6095f0d247d, ; 353: Xamarin.GooglePlayServices.Base.dll => 98
	i64 u0xaa2219c8e3449ff5, ; 354: Microsoft.Extensions.Logging.Abstractions => 54
	i64 u0xaa443ac34067eeef, ; 355: System.Private.Xml.dll => 145
	i64 u0xaa52de307ef5d1dd, ; 356: System.Net.Http => 134
	i64 u0xaaaf86367285a918, ; 357: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 48
	i64 u0xaaf84bb3f052a265, ; 358: el/Microsoft.Maui.Controls.resources => 5
	i64 u0xab9c1b2687d86b0b, ; 359: lib_System.Linq.Expressions.dll.so => 129
	i64 u0xac2af3fa195a15ce, ; 360: System.Runtime.Numerics => 152
	i64 u0xac5376a2a538dc10, ; 361: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 84
	i64 u0xac98d31068e24591, ; 362: System.Xml.XDocument => 168
	i64 u0xacd46e002c3ccb97, ; 363: ro/Microsoft.Maui.Controls.resources => 23
	i64 u0xacf42eea7ef9cd12, ; 364: System.Threading.Channels => 161
	i64 u0xad89c07347f1bad6, ; 365: nl/Microsoft.Maui.Controls.resources.dll => 19
	i64 u0xadbb53caf78a79d2, ; 366: System.Web.HttpUtility => 165
	i64 u0xadc90ab061a9e6e4, ; 367: System.ComponentModel.TypeConverter.dll => 114
	i64 u0xadf511667bef3595, ; 368: System.Net.Security => 139
	i64 u0xae282bcd03739de7, ; 369: Java.Interop => 172
	i64 u0xae53579c90db1107, ; 370: System.ObjectModel.dll => 142
	i64 u0xaf12fb8133ac3fbb, ; 371: Microsoft.EntityFrameworkCore.Sqlite => 42
	i64 u0xafe29f45095518e7, ; 372: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 86
	i64 u0xb05cc42cd94c6d9d, ; 373: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 26
	i64 u0xb0bb43dc52ea59f9, ; 374: System.Diagnostics.Tracing.dll => 121
	i64 u0xb220631954820169, ; 375: System.Text.RegularExpressions => 160
	i64 u0xb2a3f67f3bf29fce, ; 376: da/Microsoft.Maui.Controls.resources => 3
	i64 u0xb3f0a0fcda8d3ebc, ; 377: Xamarin.AndroidX.CardView => 75
	i64 u0xb46be1aa6d4fff93, ; 378: hi/Microsoft.Maui.Controls.resources => 10
	i64 u0xb477491be13109d8, ; 379: ar/Microsoft.Maui.Controls.resources => 0
	i64 u0xb4bd7015ecee9d86, ; 380: System.IO.Pipelines => 127
	i64 u0xb5c7fcdafbc67ee4, ; 381: Microsoft.Extensions.Logging.Abstractions.dll => 54
	i64 u0xb7212c4683a94afe, ; 382: System.Drawing.Primitives => 122
	i64 u0xb7b7753d1f319409, ; 383: sv/Microsoft.Maui.Controls.resources => 26
	i64 u0xb81a2c6e0aee50fe, ; 384: lib_System.Private.CoreLib.dll.so => 171
	i64 u0xb872c26142d22aa9, ; 385: Microsoft.Extensions.Http.dll => 52
	i64 u0xb9185c33a1643eed, ; 386: Microsoft.CSharp.dll => 106
	i64 u0xb9b19a3eb1924681, ; 387: lib_Microsoft.Maui.Controls.Maps.dll.so => 58
	i64 u0xb9f64d3b230def68, ; 388: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 22
	i64 u0xb9fc3c8a556e3691, ; 389: ja/Microsoft.Maui.Controls.resources => 15
	i64 u0xba4670aa94a2b3c6, ; 390: lib_System.Xml.XDocument.dll.so => 168
	i64 u0xba48785529705af9, ; 391: System.Collections.dll => 111
	i64 u0xbb65706fde942ce3, ; 392: System.Net.Sockets => 140
	i64 u0xbbd180354b67271a, ; 393: System.Runtime.Serialization.Formatters => 153
	i64 u0xbc22a245dab70cb4, ; 394: lib_SQLitePCLRaw.provider.e_sqlite3.dll.so => 70
	i64 u0xbd0e2c0d55246576, ; 395: System.Net.Http.dll => 134
	i64 u0xbd437a2cdb333d0d, ; 396: Xamarin.AndroidX.ViewPager2 => 96
	i64 u0xbee38d4a88835966, ; 397: Xamarin.AndroidX.AppCompat.AppCompatResources => 74
	i64 u0xbfc1e1fb3095f2b3, ; 398: lib_System.Net.Http.Json.dll.so => 133
	i64 u0xc040a4ab55817f58, ; 399: ar/Microsoft.Maui.Controls.resources.dll => 0
	i64 u0xc0d928351ab5ca77, ; 400: System.Console.dll => 116
	i64 u0xc12b8b3afa48329c, ; 401: lib_System.Linq.dll.so => 131
	i64 u0xc1c2cb7af77b8858, ; 402: Microsoft.EntityFrameworkCore => 39
	i64 u0xc1ff9ae3cdb6e1e6, ; 403: Xamarin.AndroidX.Activity.dll => 72
	i64 u0xc28c50f32f81cc73, ; 404: ja/Microsoft.Maui.Controls.resources.dll => 15
	i64 u0xc2bcfec99f69365e, ; 405: Xamarin.AndroidX.ViewPager2.dll => 96
	i64 u0xc3492f8f90f96ce4, ; 406: lib_Microsoft.Extensions.DependencyModel.dll.so => 49
	i64 u0xc472ce300460ccb6, ; 407: Microsoft.EntityFrameworkCore.dll => 39
	i64 u0xc4d3858ed4d08512, ; 408: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 86
	i64 u0xc4d69851fe06342f, ; 409: lib_Microsoft.Extensions.Caching.Memory.dll.so => 44
	i64 u0xc50fded0ded1418c, ; 410: lib_System.ComponentModel.TypeConverter.dll.so => 114
	i64 u0xc519125d6bc8fb11, ; 411: lib_System.Net.Requests.dll.so => 138
	i64 u0xc5293b19e4dc230e, ; 412: Xamarin.AndroidX.Navigation.Fragment => 89
	i64 u0xc5325b2fcb37446f, ; 413: lib_System.Private.Xml.dll.so => 145
	i64 u0xc5a0f4b95a699af7, ; 414: lib_System.Private.Uri.dll.so => 143
	i64 u0xc64f6952cef5d09f, ; 415: Microsoft.Maui.Maps.dll => 63
	i64 u0xc68e480c8069e1f7, ; 416: Microsoft.Maui.Maps => 63
	i64 u0xc7c01e7d7c93a110, ; 417: System.Text.Encoding.Extensions.dll => 157
	i64 u0xc7ce851898a4548e, ; 418: lib_System.Web.HttpUtility.dll.so => 165
	i64 u0xc858a28d9ee5a6c5, ; 419: lib_System.Collections.Specialized.dll.so => 110
	i64 u0xca32340d8d54dcd5, ; 420: Microsoft.Extensions.Caching.Memory.dll => 44
	i64 u0xca3a723e7342c5b6, ; 421: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 28
	i64 u0xcab3493c70141c2d, ; 422: pl/Microsoft.Maui.Controls.resources => 20
	i64 u0xcacfddc9f7c6de76, ; 423: ro/Microsoft.Maui.Controls.resources.dll => 23
	i64 u0xcb45618372c47127, ; 424: Microsoft.EntityFrameworkCore.Relational => 41
	i64 u0xcb6f731cbdfa3dd8, ; 425: Npgsql.EntityFrameworkCore.PostgreSQL => 66
	i64 u0xcb76efab0f56f81a, ; 426: System.Reactive => 71
	i64 u0xcbd4fdd9cef4a294, ; 427: lib__Microsoft.Android.Resource.Designer.dll.so => 34
	i64 u0xcc2876b32ef2794c, ; 428: lib_System.Text.RegularExpressions.dll.so => 160
	i64 u0xcc5c3bb714c4561e, ; 429: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 103
	i64 u0xcc76886e09b88260, ; 430: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 104
	i64 u0xccf25c4b634ccd3a, ; 431: zh-Hans/Microsoft.Maui.Controls.resources.dll => 32
	i64 u0xcd10a42808629144, ; 432: System.Net.Requests => 138
	i64 u0xcdd0c48b6937b21c, ; 433: Xamarin.AndroidX.SwipeRefreshLayout => 94
	i64 u0xcf23d8093f3ceadf, ; 434: System.Diagnostics.DiagnosticSource.dll => 118
	i64 u0xcf8fc898f98b0d34, ; 435: System.Private.Xml.Linq => 144
	i64 u0xcfb21487d9cb358b, ; 436: Xamarin.GooglePlayServices.Maps.dll => 100
	i64 u0xd1194e1d8a8de83c, ; 437: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 83
	i64 u0xd16fd7fb9bbcd43e, ; 438: Microsoft.Extensions.Diagnostics.Abstractions => 51
	i64 u0xd333d0af9e423810, ; 439: System.Runtime.InteropServices => 150
	i64 u0xd3426d966bb704f5, ; 440: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 74
	i64 u0xd3651b6fc3125825, ; 441: System.Private.Uri.dll => 143
	i64 u0xd373685349b1fe8b, ; 442: Microsoft.Extensions.Logging.dll => 53
	i64 u0xd3e4c8d6a2d5d470, ; 443: it/Microsoft.Maui.Controls.resources => 14
	i64 u0xd42655883bb8c19f, ; 444: Microsoft.EntityFrameworkCore.Abstractions.dll => 40
	i64 u0xd4645626dffec99d, ; 445: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 48
	i64 u0xd5507e11a2b2839f, ; 446: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 86
	i64 u0xd6694f8359737e4e, ; 447: Xamarin.AndroidX.SavedState => 93
	i64 u0xd6d21782156bc35b, ; 448: Xamarin.AndroidX.SwipeRefreshLayout.dll => 94
	i64 u0xd72329819cbbbc44, ; 449: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 46
	i64 u0xd7b3764ada9d341d, ; 450: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 54
	i64 u0xda1dfa4c534a9251, ; 451: Microsoft.Extensions.DependencyInjection => 47
	i64 u0xdad05a11827959a3, ; 452: System.Collections.NonGeneric.dll => 109
	i64 u0xdb5383ab5865c007, ; 453: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 30
	i64 u0xdb58816721c02a59, ; 454: lib_System.Reflection.Emit.ILGeneration.dll.so => 146
	i64 u0xdbeda89f832aa805, ; 455: vi/Microsoft.Maui.Controls.resources.dll => 30
	i64 u0xdbf2a779fbc3ac31, ; 456: System.Transactions.Local.dll => 164
	i64 u0xdbf9607a441b4505, ; 457: System.Linq => 131
	i64 u0xdc75032002d1a212, ; 458: lib_System.Transactions.Local.dll.so => 164
	i64 u0xdca8be7403f92d4f, ; 459: lib_System.Linq.Queryable.dll.so => 130
	i64 u0xdce2c53525640bf3, ; 460: Microsoft.Extensions.Logging => 53
	i64 u0xdd2b722d78ef5f43, ; 461: System.Runtime.dll => 155
	i64 u0xdd67031857c72f96, ; 462: lib_System.Text.Encodings.Web.dll.so => 158
	i64 u0xdde30e6b77aa6f6c, ; 463: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 32
	i64 u0xde110ae80fa7c2e2, ; 464: System.Xml.XDocument.dll => 168
	i64 u0xde8769ebda7d8647, ; 465: hr/Microsoft.Maui.Controls.resources.dll => 11
	i64 u0xe0142572c095a480, ; 466: Xamarin.AndroidX.AppCompat.dll => 73
	i64 u0xe02f89350ec78051, ; 467: Xamarin.AndroidX.CoordinatorLayout.dll => 77
	i64 u0xe192a588d4410686, ; 468: lib_System.IO.Pipelines.dll.so => 127
	i64 u0xe1a08bd3fa539e0d, ; 469: System.Runtime.Loader => 151
	i64 u0xe1b52f9f816c70ef, ; 470: System.Private.Xml.Linq.dll => 144
	i64 u0xe1ecfdb7fff86067, ; 471: System.Net.Security.dll => 139
	i64 u0xe2420585aeceb728, ; 472: System.Net.Requests.dll => 138
	i64 u0xe29b73bc11392966, ; 473: lib-id-Microsoft.Maui.Controls.resources.dll.so => 13
	i64 u0xe3811d68d4fe8463, ; 474: pt-BR/Microsoft.Maui.Controls.resources.dll => 21
	i64 u0xe494f7ced4ecd10a, ; 475: hu/Microsoft.Maui.Controls.resources.dll => 12
	i64 u0xe4a9b1e40d1e8917, ; 476: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 7
	i64 u0xe4f74a0b5bf9703f, ; 477: System.Runtime.Serialization.Primitives => 154
	i64 u0xe510ac08fe43304f, ; 478: Dapper => 35
	i64 u0xe5434e8a119ceb69, ; 479: lib_Mono.Android.dll.so => 174
	i64 u0xe89a2a9ef110899b, ; 480: System.Drawing.dll => 123
	i64 u0xedc4817167106c23, ; 481: System.Net.Sockets.dll => 140
	i64 u0xedc632067fb20ff3, ; 482: System.Memory.dll => 132
	i64 u0xedc8e4ca71a02a8b, ; 483: Xamarin.AndroidX.Navigation.Runtime.dll => 90
	i64 u0xee27c952ed6d058b, ; 484: Microsoft.Maui.Controls.Maps => 58
	i64 u0xeeb7ebb80150501b, ; 485: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 76
	i64 u0xef72742e1bcca27a, ; 486: Microsoft.Maui.Essentials.dll => 61
	i64 u0xefec0b7fdc57ec42, ; 487: Xamarin.AndroidX.Activity => 72
	i64 u0xf00c29406ea45e19, ; 488: es/Microsoft.Maui.Controls.resources.dll => 6
	i64 u0xf09e47b6ae914f6e, ; 489: System.Net.NameResolution => 135
	i64 u0xf11b621fc87b983f, ; 490: Microsoft.Maui.Controls.Xaml.dll => 59
	i64 u0xf1c4b4005493d871, ; 491: System.Formats.Asn1.dll => 124
	i64 u0xf238bd79489d3a96, ; 492: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 19
	i64 u0xf37221fda4ef8830, ; 493: lib_Xamarin.Google.Android.Material.dll.so => 97
	i64 u0xf3ddfe05336abf29, ; 494: System => 169
	i64 u0xf408654b2a135055, ; 495: System.Reflection.Emit.ILGeneration.dll => 146
	i64 u0xf4103170a1de5bd0, ; 496: System.Linq.Queryable.dll => 130
	i64 u0xf4c1dd70a5496a17, ; 497: System.IO.Compression => 126
	i64 u0xf6077741019d7428, ; 498: Xamarin.AndroidX.CoordinatorLayout => 77
	i64 u0xf77b20923f07c667, ; 499: de/Microsoft.Maui.Controls.resources.dll => 4
	i64 u0xf79cbf52994c8548, ; 500: Npgsql => 65
	i64 u0xf7e2cac4c45067b3, ; 501: lib_System.Numerics.Vectors.dll.so => 141
	i64 u0xf7e74930e0e3d214, ; 502: zh-HK/Microsoft.Maui.Controls.resources.dll => 31
	i64 u0xf7fa0bf77fe677cc, ; 503: Newtonsoft.Json.dll => 64
	i64 u0xf84773b5c81e3cef, ; 504: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 29
	i64 u0xf84bc13af9296b71, ; 505: Firebase => 36
	i64 u0xf8aac5ea82de1348, ; 506: System.Linq.Queryable => 130
	i64 u0xf8b77539b362d3ba, ; 507: lib_System.Reflection.Primitives.dll.so => 148
	i64 u0xf8e045dc345b2ea3, ; 508: lib_Xamarin.AndroidX.RecyclerView.dll.so => 92
	i64 u0xf915dc29808193a1, ; 509: System.Web.HttpUtility.dll => 165
	i64 u0xf96c777a2a0686f4, ; 510: hi/Microsoft.Maui.Controls.resources.dll => 10
	i64 u0xf9eec5bb3a6aedc6, ; 511: Microsoft.Extensions.Options => 55
	i64 u0xfa3f278f288b0e84, ; 512: lib_System.Net.Security.dll.so => 139
	i64 u0xfa5ed7226d978949, ; 513: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 0
	i64 u0xfa645d91e9fc4cba, ; 514: System.Threading.Thread => 162
	i64 u0xfb022853d73b7fa5, ; 515: lib_SQLitePCLRaw.batteries_v2.dll.so => 67
	i64 u0xfbf0a31c9fc34bc4, ; 516: lib_System.Net.Http.dll.so => 134
	i64 u0xfc6b7527cc280b3f, ; 517: lib_System.Runtime.Serialization.Formatters.dll.so => 153
	i64 u0xfc719aec26adf9d9, ; 518: Xamarin.AndroidX.Navigation.Fragment.dll => 89
	i64 u0xfd22f00870e40ae0, ; 519: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 81
	i64 u0xfd49b3c1a76e2748, ; 520: System.Runtime.InteropServices.RuntimeInformation => 149
	i64 u0xfd536c702f64dc47, ; 521: System.Text.Encoding.Extensions => 157
	i64 u0xfd583f7657b6a1cb, ; 522: Xamarin.AndroidX.Fragment => 82
	i64 u0xfeae9952cf03b8cb, ; 523: tr/Microsoft.Maui.Controls.resources => 28
	i64 u0xff9b54613e0d2cc8 ; 524: System.Net.Http.Json => 133
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [525 x i32] [
	i32 94, i32 112, i32 35, i32 90, i32 44, i32 173, i32 73, i32 70,
	i32 24, i32 2, i32 30, i32 137, i32 101, i32 92, i32 38, i32 111,
	i32 60, i32 38, i32 31, i32 166, i32 76, i32 24, i32 109, i32 148,
	i32 81, i32 112, i32 55, i32 109, i32 99, i32 156, i32 36, i32 35,
	i32 43, i32 161, i32 25, i32 104, i32 95, i32 21, i32 100, i32 174,
	i32 61, i32 135, i32 80, i32 125, i32 147, i32 92, i32 8, i32 172,
	i32 9, i32 48, i32 49, i32 128, i32 170, i32 66, i32 12, i32 105,
	i32 158, i32 104, i32 18, i32 107, i32 169, i32 27, i32 50, i32 173,
	i32 91, i32 16, i32 55, i32 125, i32 105, i32 119, i32 155, i32 146,
	i32 27, i32 128, i32 99, i32 162, i32 39, i32 116, i32 78, i32 154,
	i32 8, i32 67, i32 102, i32 56, i32 13, i32 11, i32 172, i32 137,
	i32 51, i32 29, i32 136, i32 120, i32 7, i32 160, i32 124, i32 33,
	i32 20, i32 147, i32 144, i32 58, i32 163, i32 26, i32 159, i32 5,
	i32 119, i32 167, i32 121, i32 43, i32 52, i32 82, i32 63, i32 34,
	i32 75, i32 122, i32 8, i32 167, i32 108, i32 6, i32 140, i32 60,
	i32 2, i32 57, i32 112, i32 96, i32 45, i32 65, i32 147, i32 148,
	i32 108, i32 80, i32 135, i32 95, i32 71, i32 1, i32 71, i32 64,
	i32 157, i32 102, i32 166, i32 78, i32 67, i32 37, i32 88, i32 74,
	i32 170, i32 174, i32 20, i32 106, i32 154, i32 102, i32 40, i32 120,
	i32 49, i32 24, i32 166, i32 22, i32 142, i32 91, i32 159, i32 133,
	i32 100, i32 41, i32 87, i32 136, i32 129, i32 145, i32 151, i32 14,
	i32 87, i32 173, i32 161, i32 1, i32 69, i32 57, i32 85, i32 123,
	i32 137, i32 117, i32 78, i32 62, i32 25, i32 136, i32 149, i32 31,
	i32 155, i32 83, i32 110, i32 143, i32 68, i32 171, i32 118, i32 15,
	i32 47, i32 106, i32 77, i32 163, i32 115, i32 3, i32 98, i32 53,
	i32 150, i32 76, i32 110, i32 158, i32 113, i32 167, i32 117, i32 69,
	i32 5, i32 47, i32 103, i32 132, i32 59, i32 4, i32 151, i32 171,
	i32 108, i32 97, i32 57, i32 152, i32 116, i32 85, i32 79, i32 3,
	i32 122, i32 124, i32 9, i32 69, i32 150, i32 37, i32 18, i32 37,
	i32 62, i32 56, i32 79, i32 56, i32 89, i32 60, i32 2, i32 28,
	i32 18, i32 51, i32 14, i32 113, i32 11, i32 132, i32 42, i32 50,
	i32 45, i32 93, i32 152, i32 17, i32 27, i32 82, i32 52, i32 7,
	i32 38, i32 114, i32 25, i32 4, i32 99, i32 17, i32 141, i32 111,
	i32 121, i32 142, i32 101, i32 115, i32 95, i32 46, i32 84, i32 70,
	i32 169, i32 33, i32 73, i32 75, i32 123, i32 29, i32 32, i32 128,
	i32 41, i32 33, i32 45, i32 40, i32 162, i32 125, i32 61, i32 103,
	i32 170, i32 113, i32 149, i32 43, i32 87, i32 118, i32 119, i32 9,
	i32 79, i32 42, i32 163, i32 107, i32 64, i32 88, i32 10, i32 23,
	i32 68, i32 101, i32 22, i32 21, i32 68, i32 120, i32 34, i32 126,
	i32 85, i32 59, i32 80, i32 159, i32 131, i32 1, i32 17, i32 126,
	i32 6, i32 13, i32 62, i32 98, i32 115, i32 107, i32 129, i32 90,
	i32 16, i32 65, i32 164, i32 72, i32 46, i32 19, i32 88, i32 84,
	i32 156, i32 97, i32 36, i32 91, i32 66, i32 127, i32 16, i32 50,
	i32 117, i32 153, i32 141, i32 156, i32 105, i32 93, i32 81, i32 83,
	i32 12, i32 98, i32 54, i32 145, i32 134, i32 48, i32 5, i32 129,
	i32 152, i32 84, i32 168, i32 23, i32 161, i32 19, i32 165, i32 114,
	i32 139, i32 172, i32 142, i32 42, i32 86, i32 26, i32 121, i32 160,
	i32 3, i32 75, i32 10, i32 0, i32 127, i32 54, i32 122, i32 26,
	i32 171, i32 52, i32 106, i32 58, i32 22, i32 15, i32 168, i32 111,
	i32 140, i32 153, i32 70, i32 134, i32 96, i32 74, i32 133, i32 0,
	i32 116, i32 131, i32 39, i32 72, i32 15, i32 96, i32 49, i32 39,
	i32 86, i32 44, i32 114, i32 138, i32 89, i32 145, i32 143, i32 63,
	i32 63, i32 157, i32 165, i32 110, i32 44, i32 28, i32 20, i32 23,
	i32 41, i32 66, i32 71, i32 34, i32 160, i32 103, i32 104, i32 32,
	i32 138, i32 94, i32 118, i32 144, i32 100, i32 83, i32 51, i32 150,
	i32 74, i32 143, i32 53, i32 14, i32 40, i32 48, i32 86, i32 93,
	i32 94, i32 46, i32 54, i32 47, i32 109, i32 30, i32 146, i32 30,
	i32 164, i32 131, i32 164, i32 130, i32 53, i32 155, i32 158, i32 32,
	i32 168, i32 11, i32 73, i32 77, i32 127, i32 151, i32 144, i32 139,
	i32 138, i32 13, i32 21, i32 12, i32 7, i32 154, i32 35, i32 174,
	i32 123, i32 140, i32 132, i32 90, i32 58, i32 76, i32 61, i32 72,
	i32 6, i32 135, i32 59, i32 124, i32 19, i32 97, i32 169, i32 146,
	i32 130, i32 126, i32 77, i32 4, i32 65, i32 141, i32 31, i32 64,
	i32 29, i32 36, i32 130, i32 148, i32 92, i32 165, i32 10, i32 55,
	i32 139, i32 0, i32 162, i32 67, i32 134, i32 153, i32 89, i32 81,
	i32 149, i32 157, i32 82, i32 28, i32 133
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 4b20432d95ea8965a41cc73997e459d7fa561233"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
