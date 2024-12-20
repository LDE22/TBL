; ModuleID = 'typemaps.x86_64.ll'
source_filename = "typemaps.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.TypeMapJava = type {
	i32, ; uint32_t module_index
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_name_index
}

%struct.TypeMapModule = type {
	[16 x i8], ; uint8_t module_uuid[16]
	i32, ; uint32_t entry_count
	i32, ; uint32_t duplicate_count
	ptr, ; TypeMapModuleEntry map
	ptr, ; TypeMapModuleEntry duplicate_map
	ptr, ; char* assembly_name
	ptr, ; MonoImage image
	i32, ; uint32_t java_name_width
	ptr ; uint8_t java_map
}

%struct.TypeMapModuleEntry = type {
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_map_index
}

@map_module_count = dso_local local_unnamed_addr constant i32 34, align 4

@java_type_count = dso_local local_unnamed_addr constant i32 991, align 4

; Managed modules map
@map_modules = dso_local local_unnamed_addr global [34 x %struct.TypeMapModule] [
	%struct.TypeMapModule {
		[16 x i8] c"\0B\C2\BE\C3\96\0BSA\B8\9C\D9\C2Y\8C_\82", ; module_uuid: c3bec20b-0b96-4153-b89c-d9c2598c5f82
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module0_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.0_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 0
	%struct.TypeMapModule {
		[16 x i8] c"\13\95\A8\11''[N\80\E5\EC\AB\DE y\97", ; module_uuid: 11a89513-2727-4e5b-80e5-ecabde207997
		i32 4, ; uint32_t entry_count (0x4)
		i32 2, ; uint32_t duplicate_count (0x2)
		ptr @module1_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module1_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.1_assembly_name, ; assembly_name: Xamarin.AndroidX.SwipeRefreshLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 1
	%struct.TypeMapModule {
		[16 x i8] c"\1B\19\B3\D1\1F\F8\8CM\BF\99\F0\83\AA\9F\0B\1A", ; module_uuid: d1b3191b-f81f-4d8c-bf99-f083aa9f0b1a
		i32 4, ; uint32_t entry_count (0x4)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module2_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.2_assembly_name, ; assembly_name: Microsoft.Maui.Essentials
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 2
	%struct.TypeMapModule {
		[16 x i8] c"#n\F0AW\A0JD\8F\5C\A7c`\E1e3", ; module_uuid: 41f06e23-a057-444a-8f5c-a76360e16533
		i32 41, ; uint32_t entry_count (0x29)
		i32 21, ; uint32_t duplicate_count (0x15)
		ptr @module3_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module3_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.3_assembly_name, ; assembly_name: Xamarin.AndroidX.RecyclerView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 3
	%struct.TypeMapModule {
		[16 x i8] c",7\19\22d\5CMN\824_\1D\A9\90Jg", ; module_uuid: 2219372c-5c64-4e4d-8234-5f1da9904a67
		i32 1, ; uint32_t entry_count (0x1)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module4_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module4_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.4_assembly_name, ; assembly_name: Xamarin.AndroidX.CustomView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 4
	%struct.TypeMapModule {
		[16 x i8] c"6v#\10j\9D\B0N\89\F9F\F6J\F4'\89", ; module_uuid: 10237636-9d6a-4eb0-89f9-46f64af42789
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module5_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.5_assembly_name, ; assembly_name: Xamarin.AndroidX.Collection
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 5
	%struct.TypeMapModule {
		[16 x i8] c"6\963\E8\BD\FE\D6F\9D\82\90\D7\AE\16>\92", ; module_uuid: e8339636-febd-46d6-9d82-90d7ae163e92
		i32 6, ; uint32_t entry_count (0x6)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module6_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module6_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.6_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Runtime
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 6
	%struct.TypeMapModule {
		[16 x i8] c"7\12\AA\C1\88\E8\EAB\82a%\BA\DB\9A\E7\90", ; module_uuid: c1aa1237-e888-42ea-8261-25badb9ae790
		i32 3, ; uint32_t entry_count (0x3)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module7_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.7_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 7
	%struct.TypeMapModule {
		[16 x i8] c":=\B2p\C0\94eC\9A\BC)\06M\A6\EC\D4", ; module_uuid: 70b23d3a-94c0-4365-9abc-29064da6ecd4
		i32 2, ; uint32_t entry_count (0x2)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module8_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module8_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.8_assembly_name, ; assembly_name: Xamarin.AndroidX.SavedState
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 8
	%struct.TypeMapModule {
		[16 x i8] c":_\B0\A6o~\E4C\B2O\FF\C7\86\DF\06\A7", ; module_uuid: a6b05f3a-7e6f-43e4-b24f-ffc786df06a7
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module9_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.9_assembly_name, ; assembly_name: Microsoft.Maui.Graphics
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 9
	%struct.TypeMapModule {
		[16 x i8] c">$\B3\F1\E0zUD\A6\18\5C\CD\DF\86\F4\9E", ; module_uuid: f1b3243e-7ae0-4455-a618-5ccddf86f49e
		i32 12, ; uint32_t entry_count (0xc)
		i32 6, ; uint32_t duplicate_count (0x6)
		ptr @module10_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module10_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.10_assembly_name, ; assembly_name: Xamarin.AndroidX.Activity
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 10
	%struct.TypeMapModule {
		[16 x i8] c">\C1\C01\14.\B2N\BCE$\17\9C\12\B7&", ; module_uuid: 31c0c13e-2e14-4eb2-bc45-24179c12b726
		i32 9, ; uint32_t entry_count (0x9)
		i32 8, ; uint32_t duplicate_count (0x8)
		ptr @module11_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module11_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.11_assembly_name, ; assembly_name: Xamarin.Kotlin.StdLib
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 11
	%struct.TypeMapModule {
		[16 x i8] c"[\DBN\93\22`\84G\ADYd\CC\85RN\09", ; module_uuid: 934edb5b-6022-4784-ad59-64cc85524e09
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module12_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.12_assembly_name, ; assembly_name: Xamarin.AndroidX.CardView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 12
	%struct.TypeMapModule {
		[16 x i8] c"f\A8\B9\C0\87\AA9L\8E}'\0D\12,\0D\95", ; module_uuid: c0b9a866-aa87-4c39-8e7d-270d122c0d95
		i32 106, ; uint32_t entry_count (0x6a)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module13_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.13_assembly_name, ; assembly_name: Microsoft.Maui.Controls
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 13
	%struct.TypeMapModule {
		[16 x i8] c"l\AA\0E.\B5Z\90C\BA\A1\E4\96$\E8\06\B0", ; module_uuid: 2e0eaa6c-5ab5-4390-baa1-e49624e806b0
		i32 56, ; uint32_t entry_count (0x38)
		i32 19, ; uint32_t duplicate_count (0x13)
		ptr @module14_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module14_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.14_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 14
	%struct.TypeMapModule {
		[16 x i8] c"p\F1\88\B5D\E7\D8L\B4;\DF\05\08,<\85", ; module_uuid: b588f170-e744-4cd8-b43b-df05082c3c85
		i32 5, ; uint32_t entry_count (0x5)
		i32 4, ; uint32_t duplicate_count (0x4)
		ptr @module15_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module15_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.15_assembly_name, ; assembly_name: Xamarin.AndroidX.Loader
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 15
	%struct.TypeMapModule {
		[16 x i8] c"t&\F5l\5C\DD\85D\86_\A4-kB\8C\C8", ; module_uuid: 6cf52674-dd5c-4485-865f-a42d6b428cc8
		i32 2, ; uint32_t entry_count (0x2)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module16_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.16_assembly_name, ; assembly_name: TBL
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 16
	%struct.TypeMapModule {
		[16 x i8] c"w\DA\1Dtr\F4\1DK\92\CA\F4U\C2N5\C1", ; module_uuid: 741dda77-f472-4b1d-92ca-f455c24e35c1
		i32 1, ; uint32_t entry_count (0x1)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module17_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module17_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.17_assembly_name, ; assembly_name: Xamarin.AndroidX.CursorAdapter
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 17
	%struct.TypeMapModule {
		[16 x i8] c"\85\E4W\AC\7F\C3\10B\B4\A67\C3\FA\F8\DAb", ; module_uuid: ac57e485-c37f-4210-b4a6-37c3faf8da62
		i32 4, ; uint32_t entry_count (0x4)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module18_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module18_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.18_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.UI
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 18
	%struct.TypeMapModule {
		[16 x i8] c"\91+\CC\B0\AA\07\EEC\BFa\ED\91\1C\A9\C2'", ; module_uuid: b0cc2b91-07aa-43ee-bf61-ed911ca9c227
		i32 2, ; uint32_t entry_count (0x2)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module19_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.19_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat.AppCompatResources
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 19
	%struct.TypeMapModule {
		[16 x i8] c"\94\EF\DC/\B1\B4~I\B0\CA\93U\15\AD\C9\BE", ; module_uuid: 2fdcef94-b4b1-497e-b0ca-935515adc9be
		i32 19, ; uint32_t entry_count (0x13)
		i32 10, ; uint32_t duplicate_count (0xa)
		ptr @module20_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module20_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.20_assembly_name, ; assembly_name: Xamarin.AndroidX.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 20
	%struct.TypeMapModule {
		[16 x i8] c"\9B\86\E7\92\CE[\A5M\8D\89\A2M\F5x\AB\DD", ; module_uuid: 92e7869b-5bce-4da5-8d89-a24df578abdd
		i32 7, ; uint32_t entry_count (0x7)
		i32 4, ; uint32_t duplicate_count (0x4)
		ptr @module21_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module21_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.21_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 21
	%struct.TypeMapModule {
		[16 x i8] c"\9ESb\17\11z\F4F\B6A\89#\B5\14\05x", ; module_uuid: 1762539e-7a11-46f4-b641-8923b5140578
		i32 66, ; uint32_t entry_count (0x42)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module22_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module22_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.22_assembly_name, ; assembly_name: Microsoft.Maui
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 22
	%struct.TypeMapModule {
		[16 x i8] c"\A3\F1\A5j^\FF\A7L\BF\DB^\5C\D5\D9\A7\A5", ; module_uuid: 6aa5f1a3-ff5e-4ca7-bfdb-5e5cd5d9a7a5
		i32 9, ; uint32_t entry_count (0x9)
		i32 5, ; uint32_t duplicate_count (0x5)
		ptr @module23_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module23_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.23_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModel
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 23
	%struct.TypeMapModule {
		[16 x i8] c"\A53W\D4l)\FAN\B4\875v>\88?\B9", ; module_uuid: d45733a5-296c-4efa-b487-35763e883fb9
		i32 17, ; uint32_t entry_count (0x11)
		i32 6, ; uint32_t duplicate_count (0x6)
		ptr @module24_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module24_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.24_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Common
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 24
	%struct.TypeMapModule {
		[16 x i8] c"\A5\BB8\17`a]I\B8\0B3x\96\AE\14\04", ; module_uuid: 1738bba5-6160-495d-b80b-337896ae1404
		i32 455, ; uint32_t entry_count (0x1c7)
		i32 172, ; uint32_t duplicate_count (0xac)
		ptr @module25_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module25_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.25_assembly_name, ; assembly_name: Mono.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 25
	%struct.TypeMapModule {
		[16 x i8] c"\A6\1B\E7\FD\9A\C4VE\A0r\17\1F\A7?\BD%", ; module_uuid: fde71ba6-c49a-4556-a072-171fa73fbd25
		i32 5, ; uint32_t entry_count (0x5)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module26_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module26_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.26_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.Common
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 26
	%struct.TypeMapModule {
		[16 x i8] c"\AA\DE\82\96\F6\D7pJ\91\AF\DE6\5C\FE\C1\D4", ; module_uuid: 9682deaa-d7f6-4a70-91af-de365cfec1d4
		i32 65, ; uint32_t entry_count (0x41)
		i32 23, ; uint32_t duplicate_count (0x17)
		ptr @module27_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module27_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.27_assembly_name, ; assembly_name: Xamarin.AndroidX.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 27
	%struct.TypeMapModule {
		[16 x i8] c"\B3nN\EF\89\D5\13H\A6\BC\C4\05\B3\B4\BF-", ; module_uuid: ef4e6eb3-d589-4813-a6bc-c405b3b4bf2d
		i32 67, ; uint32_t entry_count (0x43)
		i32 25, ; uint32_t duplicate_count (0x19)
		ptr @module28_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module28_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.28_assembly_name, ; assembly_name: Xamarin.Google.Android.Material
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 28
	%struct.TypeMapModule {
		[16 x i8] c"\B4\02\1F\F1\83\F8NB\96\1C[8\F6\EFd\5C", ; module_uuid: f11f02b4-f883-424e-961c-5b38f6ef645c
		i32 5, ; uint32_t entry_count (0x5)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module29_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module29_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.29_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager2
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 29
	%struct.TypeMapModule {
		[16 x i8] c"\C8vVR\93\E1\95B\B9\B5\8DV9\A8\F7\8B", ; module_uuid: 525676c8-e193-4295-b9b5-8d5639a8f78b
		i32 3, ; uint32_t entry_count (0x3)
		i32 2, ; uint32_t duplicate_count (0x2)
		ptr @module30_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module30_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.30_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 30
	%struct.TypeMapModule {
		[16 x i8] c"\C906\AC;\B2q@\9D\81\5C\17\A8\F7K\A5", ; module_uuid: ac3630c9-b23b-4071-9d81-5c17a8f74ba5
		i32 3, ; uint32_t entry_count (0x3)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module31_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module31_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.31_assembly_name, ; assembly_name: Xamarin.AndroidX.CoordinatorLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 31
	%struct.TypeMapModule {
		[16 x i8] c"\CC\84\B5\AA^\06\D1A\BB\BB\B5\B2e\DB1\CF", ; module_uuid: aab584cc-065e-41d1-bbbb-b5b265db31cf
		i32 4, ; uint32_t entry_count (0x4)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module32_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module32_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.32_assembly_name, ; assembly_name: Xamarin.AndroidX.DrawerLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 32
	%struct.TypeMapModule {
		[16 x i8] c"\CD\EF\E8\87S\B0^H\AB\88-\9A\B4m\DCb", ; module_uuid: 87e8efcd-b053-485e-ab88-2d9ab46ddc62
		i32 4, ; uint32_t entry_count (0x4)
		i32 4, ; uint32_t duplicate_count (0x4)
		ptr @module33_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module33_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.33_assembly_name, ; assembly_name: Xamarin.KotlinX.Coroutines.Core.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	} ; 33
], align 16

; Java types name hashes
@map_java_hashes = dso_local local_unnamed_addr constant [991 x i64] [
	i64 40394948990796659, ; 0: 0x8f82fdf9510373 => crc64e1fb321c08285b90/EntryCellEditText
	i64 52093131593007030, ; 1: 0xb9126d5bd6bfb6 => android/graphics/drawable/Animatable
	i64 123128373651107449, ; 2: 0x1b5709a7d3eee79 => mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor
	i64 128182020419974451, ; 3: 0x1c764de51b97533 => java/lang/String
	i64 146042335049966109, ; 4: 0x206d8baded2621d => java/util/concurrent/Executor
	i64 164896704060212347, ; 5: 0x249d4adbe24447b => kotlin/coroutines/Continuation
	i64 176627442730137433, ; 6: 0x27381b92d83f759 => android/content/pm/Signature
	i64 179924752871835988, ; 7: 0x27f389c0539c954 => androidx/core/app/ComponentActivity
	i64 212011099207366628, ; 8: 0x2f136f8b0b1f7e4 => com/google/android/material/badge/BadgeDrawable
	i64 276050983113093313, ; 9: 0x3d4bae8145a70c1 => androidx/appcompat/view/menu/MenuBuilder$Callback
	i64 280409858434120304, ; 10: 0x3e43747d37bba70 => crc6452ffdc5b34af3a0f/MauiSwipeView
	i64 288436644922149331, ; 11: 0x400bb99b0ca49d3 => android/graphics/Paint$Cap
	i64 305303872570400021, ; 12: 0x43ca841291c1d15 => android/view/View$OnHoverListener
	i64 313029130739313069, ; 13: 0x4581a55fe10e9ad => android/graphics/drawable/shapes/Shape
	i64 318564728890166633, ; 14: 0x46bc4eedf778d69 => android/widget/Button
	i64 336734988557421638, ; 15: 0x4ac52b020690c46 => androidx/recyclerview/widget/RecyclerView$SmoothScroller
	i64 361870449891484378, ; 16: 0x5059f41c47e22da => android/os/Bundle
	i64 363417747702605178, ; 17: 0x50b1e841ce2e57a => android/widget/TextView
	i64 374702298598502009, ; 18: 0x53335c15c7c6e79 => crc649ff77a65592e7d55/TabbedPageManager_Listeners
	i64 381033654718824648, ; 19: 0x549b41714fc00c8 => crc6452ffdc5b34af3a0f/WrapperView
	i64 382408712250526578, ; 20: 0x54e96b29cb50b72 => androidx/core/util/Predicate
	i64 403762510766094389, ; 21: 0x59a73dd43d53835 => crc64338477404e88479c/FragmentContainer
	i64 412836909682626269, ; 22: 0x5bab0fb67cd8edd => crc64b5e713d400f589b7/LinearGradientShaderFactory
	i64 439133414594709010, ; 23: 0x6181d8391ec0612 => android/widget/DatePicker
	i64 497701358617613252, ; 24: 0x6e830bfaca1d3c4 => crc6452ffdc5b34af3a0f/MauiWebViewClient
	i64 515916014736443504, ; 25: 0x728e6e1c84d0870 => android/webkit/ValueCallback
	i64 535364814668407723, ; 26: 0x76dff76638da3ab => androidx/recyclerview/widget/RecyclerView$ItemAnimator
	i64 582128946798849863, ; 27: 0x81423315f6aef47 => android/view/ActionProvider
	i64 591405550240679337, ; 28: 0x8351836ec4a45a9 => android/graphics/Path$FillType
	i64 619638459439082186, ; 29: 0x89965e558096aca => java/text/NumberFormat
	i64 654924058700157350, ; 30: 0x916c1f621ae11a6 => android/widget/SectionIndexer
	i64 698692053645229055, ; 31: 0x9b240b890e97bff => javax/net/ssl/HttpsURLConnection
	i64 698738878519169148, ; 32: 0x9b26b4ed4e3d07c => mono/android/content/DialogInterface_OnClickListenerImplementor
	i64 705175846315662030, ; 33: 0x9c949b22fd49ace => android/view/MotionEvent
	i64 713241699942045525, ; 34: 0x9e5f18c140a9755 => crc64e1fb321c08285b90/SwitchCellView
	i64 753213119692529150, ; 35: 0xa73f357776fddfe => android/animation/TimeInterpolator
	i64 769314120471534533, ; 36: 0xaad271dd765dbc5 => android/widget/SeekBar$OnSeekBarChangeListener
	i64 816513157356790819, ; 37: 0xb54d663faaf2423 => android/text/TextUtils$TruncateAt
	i64 844845191340040045, ; 38: 0xbb97e39b0051f6d => android/widget/TimePicker
	i64 868122344904594316, ; 39: 0xc0c30ac559e138c => android/text/TextPaint
	i64 870874870088288028, ; 40: 0xc15f8148b6d471c => java/lang/Exception
	i64 872223982470459621, ; 41: 0xc1ac3173fba70e5 => android/graphics/Shader
	i64 891089673577469184, ; 42: 0xc5dc956409a9500 => androidx/core/content/res/ResourcesCompat$FontCallback
	i64 918764874599828123, ; 43: 0xcc01bc91ea10a9b => crc64e1fb321c08285b90/FrameRenderer
	i64 963739547087029502, ; 44: 0xd5fe403101e44fe => android/widget/RadioButton
	i64 1042816948562317609, ; 45: 0xe78d47d58d05129 => android/graphics/Path$Direction
	i64 1047274886995206934, ; 46: 0xe88aaf605896316 => crc64338477404e88479c/MauiViewPager
	i64 1058288277257806020, ; 47: 0xeafcb94c3e960c4 => crc6452ffdc5b34af3a0f/NavigationViewFragment
	i64 1071931666502492146, ; 48: 0xee0442bdd5f9ff2 => crc645d80431ce5f73f11/StructuredItemsViewAdapter_2
	i64 1079586186822872943, ; 49: 0xefb75eac1feef6f => java/util/function/Consumer
	i64 1087315166910411745, ; 50: 0xf16eb622a96f3e1 => androidx/appcompat/widget/AppCompatEditText
	i64 1093289771861447773, ; 51: 0xf2c2541485e945d => android/text/Spanned
	i64 1129615369612962765, ; 52: 0xfad3331969a2bcd => android/text/style/LineHeightSpan
	i64 1162204341407583715, ; 53: 0x1020fab0de040de3 => crc6452ffdc5b34af3a0f/MauiTextView
	i64 1175590042387538510, ; 54: 0x105088ea3dfee24e => android/view/animation/LinearInterpolator
	i64 1210920456359698245, ; 55: 0x10ce0dbd4492df45 => androidx/appcompat/widget/TooltipCompat
	i64 1217044833273073796, ; 56: 0x10e3cfd3e2f75084 => java/util/HashSet
	i64 1248298339946314785, ; 57: 0x1152d8b9f635bc21 => kotlin/jvm/functions/Function2
	i64 1283121375857603354, ; 58: 0x11ce9017d3b3f31a => java/net/ConnectException
	i64 1309713578889228674, ; 59: 0x122d098f9332b182 => android/animation/AnimatorListenerAdapter
	i64 1312315937130052437, ; 60: 0x1236486451b87b55 => crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks
	i64 1317579852464953526, ; 61: 0x1248fbe51d6298b6 => java/io/FileInputStream
	i64 1320822650197077237, ; 62: 0x12548133cc496cf5 => android/runtime/JavaProxyThrowable
	i64 1340245152876570335, ; 63: 0x129981dd9925a6df => androidx/core/util/Consumer
	i64 1351596142494714808, ; 64: 0x12c1d587d12f8bb8 => androidx/appcompat/view/menu/MenuView
	i64 1356236609822008698, ; 65: 0x12d25202cfd2257a => androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener
	i64 1362204976567274499, ; 66: 0x12e786357b8fcc03 => androidx/navigation/NavOptions
	i64 1362770524300979611, ; 67: 0x12e9889253552d9b => java/util/Iterator
	i64 1363008265218827226, ; 68: 0x12ea60cbb24a23da => androidx/core/view/MenuItemCompat
	i64 1378526132265832386, ; 69: 0x13218236ab4c4fc2 => com/google/android/material/tabs/TabLayout
	i64 1379266653454234386, ; 70: 0x132423b6b1ae7312 => crc64338477404e88479c/ModalNavigationManager_ModalContainer
	i64 1387289802307557894, ; 71: 0x1340a4b99b105a06 => androidx/core/view/accessibility/AccessibilityWindowInfoCompat
	i64 1388766292909739546, ; 72: 0x1345e395dcebce1a => com/google/android/material/appbar/AppBarLayout$ChildScrollEffect
	i64 1407244619530254470, ; 73: 0x138789868b2e3886 => android/widget/AdapterView$OnItemLongClickListener
	i64 1433124019402031604, ; 74: 0x13e37ab3df89c1f4 => crc640ec207abc449b2ca/ShellSearchView
	i64 1441304590135825040, ; 75: 0x14008ae36c2f9290 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout
	i64 1441774642277557196, ; 76: 0x14023665f71ea3cc => androidx/drawerlayout/widget/DrawerLayout$LayoutParams
	i64 1450903687219826498, ; 77: 0x1422a537600acf42 => crc645d80431ce5f73f11/NongreedySnapHelper
	i64 1471437350001669807, ; 78: 0x146b98794c1776af => androidx/core/content/res/ResourcesCompat
	i64 1484717914214221266, ; 79: 0x149ac7139c65c5d2 => android/text/style/SuperscriptSpan
	i64 1485931295180209339, ; 80: 0x149f16a3e1da3cbb => android/text/Layout$Alignment
	i64 1494974867389571991, ; 81: 0x14bf37b89ee46397 => android/view/ScaleGestureDetector$OnScaleGestureListener
	i64 1500343592614924887, ; 82: 0x14d24a8c5ed89257 => crc6452ffdc5b34af3a0f/MauiAppCompatEditText
	i64 1541538811043856098, ; 83: 0x1564a56197bf3ee2 => crc640ec207abc449b2ca/ShellPageContainer
	i64 1550860884384862055, ; 84: 0x1585c3c1edcecf67 => java/net/ProtocolException
	i64 1553575153728360906, ; 85: 0x158f685f01da11ca => com/google/android/material/navigation/NavigationBarPresenter
	i64 1554440221627438146, ; 86: 0x15927b2552aed442 => android/graphics/drawable/Icon
	i64 1585010481244597099, ; 87: 0x15ff16a28bdaeb6b => android/graphics/drawable/GradientDrawable
	i64 1603037949398414562, ; 88: 0x163f22858f5cf4e2 => android/content/DialogInterface$OnMultiChoiceClickListener
	i64 1610464427476120569, ; 89: 0x165984dd3b1df3f9 => androidx/core/app/SharedElementCallback
	i64 1613636342437143453, ; 90: 0x1664c9b43ba0639d => android/view/WindowInsetsController
	i64 1614800872838357676, ; 91: 0x1668ecd6988562ac => androidx/fragment/app/FragmentManager$OnBackStackChangedListener
	i64 1620318094642314671, ; 92: 0x167c86b8e64afdaf => crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener
	i64 1633393020343953050, ; 93: 0x16aafa4c4434269a => android/text/method/KeyListener
	i64 1644779904733773429, ; 94: 0x16d36e9be35b7e75 => android/graphics/BlurMaskFilter$Blur
	i64 1687552701322874432, ; 95: 0x176b643da619ce40 => crc640ec207abc449b2ca/ShellFlyoutLayout
	i64 1739308160026767747, ; 96: 0x1823438e69557183 => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener
	i64 1747499027921055994, ; 97: 0x18405d1b749330fa => android/os/BaseBundle
	i64 1818439532979151601, ; 98: 0x193c651ee8bfe2f1 => androidx/appcompat/app/ActionBar$TabListener
	i64 1822438921100964747, ; 99: 0x194a9a8b0511b38b => androidx/core/view/MenuProvider
	i64 1827611961367173634, ; 100: 0x195cfb65508b9a02 => android/view/View$AccessibilityDelegate
	i64 1831728799718484971, ; 101: 0x196b9ba37012abeb => java/io/IOException
	i64 1844760744016486967, ; 102: 0x1999e81f6ab02237 => android/text/format/DateFormat
	i64 1853552035664219559, ; 103: 0x19b923c18277cda7 => android/animation/ValueAnimator
	i64 1859272559660710869, ; 104: 0x19cd768acb353bd5 => crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks
	i64 1877272793125324469, ; 105: 0x1a0d69a8bcbd86b5 => java/net/Proxy
	i64 1878806388185091404, ; 106: 0x1a12dc74a981cd4c => androidx/lifecycle/ViewModelStore
	i64 1885389416169908981, ; 107: 0x1a2a3faf4e16aaf5 => android/provider/MediaStore$Images$Media
	i64 1891509142727870308, ; 108: 0x1a3ffd8b2db2c764 => android/database/Cursor
	i64 1903059501350258092, ; 109: 0x1a6906889c6a05ac => com/google/android/material/bottomnavigation/BottomNavigationView
	i64 1910760924702700175, ; 110: 0x1a8462eff799f28f => crc64338477404e88479c/ModalNavigationManager_ModalContainer_ModalFragment
	i64 1920667697910321371, ; 111: 0x1aa79518598310db => androidx/loader/content/Loader
	i64 1941234859008890695, ; 112: 0x1af0a6d1b4d49747 => android/util/TypedValue
	i64 1970400480939886480, ; 113: 0x1b5844cc3bae4790 => androidx/appcompat/widget/AppCompatImageView
	i64 1984480781877804166, ; 114: 0x1b8a4ac1c36a7c86 => androidx/viewpager2/adapter/FragmentViewHolder
	i64 2009769534521005831, ; 115: 0x1be422be5186d707 => android/text/style/TypefaceSpan
	i64 2011266387142458950, ; 116: 0x1be9741f7a4f3e46 => crc640ec207abc449b2ca/RecyclerViewContainer
	i64 2015282576494675565, ; 117: 0x1bf7b8d36dffc66d => com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener
	i64 2091945087796016600, ; 118: 0x1d0814f947b475d8 => android/view/MenuInflater
	i64 2103360364221246790, ; 119: 0x1d30a31b700b2d46 => androidx/fragment/app/FragmentManager
	i64 2111352555338672611, ; 120: 0x1d4d07f6709329e3 => android/view/InputEvent
	i64 2128291229747518775, ; 121: 0x1d893598e7ae1d37 => com/google/android/material/appbar/AppBarLayout$Behavior
	i64 2146917528506713388, ; 122: 0x1dcb621e08b3c52c => androidx/recyclerview/widget/RecyclerView$Adapter
	i64 2156356945290632642, ; 123: 0x1deceb3784fe9dc2 => androidx/lifecycle/Lifecycle
	i64 2157468975174833820, ; 124: 0x1df0de9a2738d69c => org/xmlpull/v1/XmlPullParserException
	i64 2164140653916027403, ; 125: 0x1e08927568a57a0b => java/io/InputStream
	i64 2173847856803601638, ; 126: 0x1e2b0f1bb485dce6 => android/app/TimePickerDialog$OnTimeSetListener
	i64 2179099327615755049, ; 127: 0x1e3db74b08d46329 => androidx/core/view/MenuItemCompat$OnActionExpandListener
	i64 2198886843581711497, ; 128: 0x1e8403ef1cf7c489 => android/util/Pair
	i64 2201816183325057292, ; 129: 0x1e8e6c272bcbe10c => android/os/CancellationSignal
	i64 2208930198539504994, ; 130: 0x1ea7b24fe9948d62 => android/view/View$MeasureSpec
	i64 2226060781910726129, ; 131: 0x1ee48e7caa3795f1 => android/widget/AbsListView
	i64 2251816740797555390, ; 132: 0x1f400f65268422be => crc6452ffdc5b34af3a0f/StepperHandlerHolder
	i64 2261358779623026332, ; 133: 0x1f61f5d431242e9c => android/text/style/ClickableSpan
	i64 2266689907793747123, ; 134: 0x1f74e67632025cb3 => java/net/HttpURLConnection
	i64 2317137210756387550, ; 135: 0x2028200436f952de => crc64f728827fec74e9c3/TapWindowTracker_GestureListener
	i64 2319268360137032813, ; 136: 0x202fb24918c5446d => java/security/SecureRandom
	i64 2349580542494205303, ; 137: 0x209b630e06896577 => android/view/SubMenu
	i64 2357387754135176159, ; 138: 0x20b71fac231543df => java/io/File
	i64 2371646188211964694, ; 139: 0x20e9c7a485488b16 => androidx/viewpager/widget/ViewPager$PageTransformer
	i64 2459346298715867829, ; 140: 0x22215a6db2a18ab5 => androidx/fragment/app/strictmode/FragmentStrictMode$Policy
	i64 2463092707438669875, ; 141: 0x222ea9c473bcb033 => crc645d80431ce5f73f11/SizedItemContentView
	i64 2463909603826170827, ; 142: 0x223190baf6bb7bcb => androidx/core/app/ActivityOptionsCompat
	i64 2487165067737985186, ; 143: 0x22842f73984870a2 => crc640ec207abc449b2ca/ShellItemRendererBase
	i64 2496549706824420838, ; 144: 0x22a586bb27600de6 => crc6469068ad1cdfc2512/MainActivity
	i64 2542726837267699812, ; 145: 0x2349949628319864 => android/view/Window
	i64 2556174521866237421, ; 146: 0x23795b2f37bdb5ed => com/google/android/material/appbar/MaterialToolbar
	i64 2592719635570013650, ; 147: 0x23fb30c59054b5d2 => crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener
	i64 2600674482769555637, ; 148: 0x241773a9c1e6f0b5 => android/os/PowerManager
	i64 2603260641783996945, ; 149: 0x2420a3c2d34a6211 => android/view/inputmethod/InputMethodManager
	i64 2617258777567259524, ; 150: 0x24525efdca2b6b84 => androidx/fragment/app/FragmentManager$BackStackEntry
	i64 2638117222333619937, ; 151: 0x249c79a2e9091ee1 => crc6452ffdc5b34af3a0f/MauiSearchView
	i64 2651308274382996518, ; 152: 0x24cb56d40ca70426 => crc64338477404e88479c/TapAndPanGestureDetector
	i64 2752941965278863903, ; 153: 0x26346a21b7b6621f => androidx/navigation/NavDeepLinkRequest
	i64 2756350410967651318, ; 154: 0x26408618523a93f6 => com/microsoft/maui/PlatformInterop
	i64 2803312063028526139, ; 155: 0x26e75d77ff61fc3b => com/google/android/material/appbar/AppBarLayout
	i64 2846152699003131831, ; 156: 0x277f90ccd899d7b7 => mono/java/lang/Runnable
	i64 2875386311327125492, ; 157: 0x27e76c9d9eac8ff4 => android/graphics/drawable/AnimationDrawable
	i64 2877567288675703671, ; 158: 0x27ef2c33facc9b77 => androidx/core/graphics/Insets
	i64 2885364006830175112, ; 159: 0x280adf46e2cf7388 => android/content/IntentFilter
	i64 2897230707376911941, ; 160: 0x283507fa698df645 => android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo
	i64 2927215136274531841, ; 161: 0x289f8ea84aca4601 => kotlinx/coroutines/flow/Flow
	i64 2943981444848205315, ; 162: 0x28db1f86b584be03 => crc6452ffdc5b34af3a0f/MauiTimePicker
	i64 2949523039309837599, ; 163: 0x28eecf93b6e4b51f => android/view/animation/AnimationUtils
	i64 2968152967169336397, ; 164: 0x2930ff65cf26644d => androidx/appcompat/content/res/AppCompatResources
	i64 2972252214977986258, ; 165: 0x293f8fa450a17ed2 => android/content/Intent
	i64 3018121850479589018, ; 166: 0x29e285d512ae369a => crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks
	i64 3058182385761881316, ; 167: 0x2a70d8ad49b18ce4 => crc649ff77a65592e7d55/TabbedPageManager_TempView
	i64 3071747017624329461, ; 168: 0x2aa109a3415d1cf5 => android/os/Build
	i64 3155261737265476761, ; 169: 0x2bc9bdd52f173499 => android/content/ClipData
	i64 3171452383522110633, ; 170: 0x2c034323c5e6bca9 => android/view/MenuItem
	i64 3176842606959065297, ; 171: 0x2c166984f71ef8d1 => androidx/appcompat/widget/AppCompatButton
	i64 3213996194751771492, ; 172: 0x2c9a6882b9a2f364 => androidx/appcompat/widget/TintTypedArray
	i64 3230266667917055639, ; 173: 0x2cd4366b76fb1697 => android/app/DatePickerDialog$OnDateSetListener
	i64 3311365047123382586, ; 174: 0x2df454f74b6f113a => androidx/navigation/NavDestination
	i64 3312753486604898190, ; 175: 0x2df943be8d858f8e => android/app/Dialog
	i64 3321451588128007402, ; 176: 0x2e182a9f2106e4ea => com/google/android/material/shape/CornerTreatment
	i64 3338289054904600959, ; 177: 0x2e53fc355b29c97f => microsoft/maui/platform/MauiNavHostFragment
	i64 3348270271503902806, ; 178: 0x2e77721270fda856 => crc645d80431ce5f73f11/EmptyViewAdapter
	i64 3351507757710206225, ; 179: 0x2e82f28c70486511 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback
	i64 3371417764163457944, ; 180: 0x2ec9ae980e679398 => android/widget/TextView$BufferType
	i64 3407524337605236775, ; 181: 0x2f49f554ca755827 => crc6452ffdc5b34af3a0f/MauiDatePicker
	i64 3409385869268749592, ; 182: 0x2f50926268000d18 => androidx/viewpager2/widget/ViewPager2
	i64 3409776279075562360, ; 183: 0x2f51f575c5da2378 => androidx/lifecycle/LiveData
	i64 3443619838097558668, ; 184: 0x2fca31ff674b0c8c => android/view/WindowInsetsAnimationController
	i64 3462954715912111105, ; 185: 0x300ee2f773348401 => androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry
	i64 3463222012655579408, ; 186: 0x300fd61252a63110 => androidx/appcompat/widget/Toolbar
	i64 3476617847597562063, ; 187: 0x303f6d8331d5f8cf => java/io/PrintWriter
	i64 3480992816410333166, ; 188: 0x304ef885ffd30fee => kotlinx/coroutines/flow/StateFlow
	i64 3481315469795932841, ; 189: 0x30501df998423aa9 => androidx/lifecycle/SavedStateHandle
	i64 3487642848378226015, ; 190: 0x306698b13904055f => androidx/appcompat/view/menu/SubMenuBuilder
	i64 3492966660860961054, ; 191: 0x307982abe8e6611e => android/widget/AdapterView
	i64 3499331509520825070, ; 192: 0x30901f77b851faee => kotlinx/coroutines/flow/FlowCollector
	i64 3523214698873108952, ; 193: 0x30e4f91a11c439d8 => crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener
	i64 3530631042196079534, ; 194: 0x30ff523a0f1083ae => android/content/DialogInterface
	i64 3531967851957559493, ; 195: 0x3104120c5607a0c5 => androidx/core/content/ContextCompat
	i64 3560635333444528101, ; 196: 0x3169eaf880aa67e5 => android/os/Parcelable$Creator
	i64 3602161531208416675, ; 197: 0x31fd72d3db413da3 => crc64b5e713d400f589b7/RadialGradientShaderFactory
	i64 3606789160940313841, ; 198: 0x320de3a1dd939cf1 => androidx/appcompat/app/ActionBar
	i64 3638635082376706332, ; 199: 0x327f07544056791c => androidx/lifecycle/viewmodel/CreationExtras$Key
	i64 3648679180818523925, ; 200: 0x32a2b662280d2715 => android/content/pm/PackageManager
	i64 3656396631051491790, ; 201: 0x32be215d0fc259ce => java/net/InetSocketAddress
	i64 3664445150084014760, ; 202: 0x32dab972eda922a8 => android/text/InputFilter
	i64 3668991680153232620, ; 203: 0x32eae07e7365a4ec => android/view/MenuItem$OnMenuItemClickListener
	i64 3689136595673991541, ; 204: 0x33327230190ac975 => androidx/appcompat/widget/DecorToolbar
	i64 3710250570247091010, ; 205: 0x337d753c6344b342 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat
	i64 3715390174298437201, ; 206: 0x338fb7adb508f651 => android/graphics/BlendMode
	i64 3725746463137408145, ; 207: 0x33b482ab1a792491 => crc645d80431ce5f73f11/CarouselViewOnScrollListener
	i64 3744735303238863079, ; 208: 0x33f7f8eaf76ac8e7 => androidx/core/os/LocaleListCompat
	i64 3804259243029590846, ; 209: 0x34cb71a02e46733e => androidx/core/view/WindowInsetsAnimationControlListenerCompat
	i64 3840930880540434390, ; 210: 0x354dba492570dfd6 => android/graphics/drawable/GradientDrawable$Orientation
	i64 3851157429295671005, ; 211: 0x35720f47134666dd => android/graphics/Paint$FontMetrics
	i64 3852940616739286617, ; 212: 0x35786513c16b6e59 => android/text/method/NumberKeyListener
	i64 3875416832529181358, ; 213: 0x35c83f138b78aaae => crc6488302ad6e9e4df1a/MauiApplication
	i64 3880992763041431256, ; 214: 0x35dc0e5b08f23ed8 => android/widget/SpinnerAdapter
	i64 3893923358819291733, ; 215: 0x3609fea9f9051255 => crc64e1fb321c08285b90/ListViewRenderer
	i64 3894539018839858856, ; 216: 0x360c2e9a7dd91ea8 => androidx/core/util/Pair
	i64 3919736965617219737, ; 217: 0x3665b400a894f899 => crc640ec207abc449b2ca/ShellFragmentContainer
	i64 3936478700004404583, ; 218: 0x36a12e8573a76d67 => java/net/SocketAddress
	i64 3940353796168302121, ; 219: 0x36aef2e695f93e29 => android/graphics/Canvas
	i64 3957166361670620563, ; 220: 0x36eaadd708809593 => javax/security/cert/Certificate
	i64 3965607035774982021, ; 221: 0x3708aa969e285785 => crc6452ffdc5b34af3a0f/MauiPickerBase
	i64 4032644632170534830, ; 222: 0x37f6d4ed55e917ae => android/text/GetChars
	i64 4033429712169049384, ; 223: 0x37f99ef404579d28 => androidx/lifecycle/ViewModelProvider$Factory
	i64 4074005787519580853, ; 224: 0x3889c6adc1fd7ab5 => android/view/animation/Interpolator
	i64 4104154920565321793, ; 225: 0x38f4e327cf77b041 => android/preference/PreferenceManager
	i64 4109074850654656120, ; 226: 0x39065dce4cc31678 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo
	i64 4130165489315611710, ; 227: 0x39514ba1463c043e => android/graphics/drawable/ColorDrawable
	i64 4143115911838098129, ; 228: 0x397f4df87c60e2d1 => crc645d80431ce5f73f11/SimpleItemTouchHelperCallback
	i64 4154483228285186197, ; 229: 0x39a7b07c1741b095 => androidx/appcompat/app/AppCompatDialog
	i64 4200728372439161058, ; 230: 0x3a4bfc32c52418e2 => android/text/style/ForegroundColorSpan
	i64 4216519898928517408, ; 231: 0x3a8416820c001120 => android/os/IInterface
	i64 4234344718569147786, ; 232: 0x3ac36a1646dd8d8a => crc645d80431ce5f73f11/SimpleViewHolder
	i64 4300416241721128614, ; 233: 0x3bae25c98a1bb6a6 => android/content/DialogInterface$OnDismissListener
	i64 4305371449952891808, ; 234: 0x3bbfc085dc8cf3a0 => java/lang/Class
	i64 4328468547648071486, ; 235: 0x3c11cf35fc03a73e => android/net/Uri
	i64 4348168546437780602, ; 236: 0x3c57cc4161f3547a => androidx/core/view/WindowInsetsAnimationCompat$Callback
	i64 4358625020334866226, ; 237: 0x3c7cf25cee307f32 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat
	i64 4368187459060775074, ; 238: 0x3c9eeb59b1a238a2 => crc64338477404e88479c/GenericAnimatorListener
	i64 4392730638380572422, ; 239: 0x3cf61d3deea61f06 => crc6452ffdc5b34af3a0f/ContentViewGroup
	i64 4397070217501049681, ; 240: 0x3d058810ee998351 => android/view/WindowInsetsController$OnControllableInsetsChangedListener
	i64 4406641945990788791, ; 241: 0x3d278980a31df6b7 => android/content/BroadcastReceiver
	i64 4413535772071861656, ; 242: 0x3d40076699d29d98 => android/provider/MediaStore
	i64 4424452416381353675, ; 243: 0x3d66d007ec077ecb => androidx/fragment/app/FragmentOnAttachListener
	i64 4443498772478509003, ; 244: 0x3daa7a9745773fcb => android/text/style/UnderlineSpan
	i64 4504302345287347834, ; 245: 0x3e827f1e43cfae7a => android/window/OnBackInvokedCallback
	i64 4544552304279233283, ; 246: 0x3f117e3e1fbf2303 => android/content/DialogInterface$OnKeyListener
	i64 4547751580410723029, ; 247: 0x3f1cdbf7a51a3ad5 => android/content/res/Resources$Theme
	i64 4552905414023119785, ; 248: 0x3f2f2b5a0acd03a9 => androidx/core/widget/NestedScrollView$OnScrollChangeListener
	i64 4590799101254748484, ; 249: 0x3fb5cb75a178c944 => javax/net/ssl/TrustManagerFactory
	i64 4622649712627763794, ; 250: 0x4026f36bfa3d4a52 => crc645d80431ce5f73f11/StartSnapHelper
	i64 4627003729261783485, ; 251: 0x40366b60790e69bd => com/google/android/material/appbar/CollapsingToolbarLayout
	i64 4642866827801349258, ; 252: 0x406ec6c7ea8b4c8a => android/text/Spannable
	i64 4657718675205956216, ; 253: 0x40a38a751b5aa278 => android/view/ActionMode$Callback
	i64 4670057858260774363, ; 254: 0x40cf60e10a27addb => androidx/activity/result/contract/ActivityResultContract$SynchronousResult
	i64 4672418894112007217, ; 255: 0x40d7c43a895ea431 => android/webkit/WebSettings
	i64 4697026815471874820, ; 256: 0x412f3100b4af7304 => crc645d80431ce5f73f11/MauiCarouselRecyclerView
	i64 4709865806769841699, ; 257: 0x415ccdff50466623 => androidx/navigation/NavAction
	i64 4714314902586562790, ; 258: 0x416c9c6d280098e6 => android/widget/AbsListView$OnScrollListener
	i64 4718542789084137320, ; 259: 0x417ba1aab0d74768 => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer
	i64 4721440782757463965, ; 260: 0x4185ed606c4d079d => android/view/Menu
	i64 4728550804089827080, ; 261: 0x419f2fe744296f08 => android/text/TextUtils
	i64 4731100047365685390, ; 262: 0x41a83e6d3810c08e => crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener
	i64 4736390534106549806, ; 263: 0x41bb0a18a6f18e2e => mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor
	i64 4740665257139828038, ; 264: 0x41ca39ef2adaf546 => android/widget/Switch
	i64 4740724644572720007, ; 265: 0x41ca6ff261b26b87 => mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor
	i64 4745606114980505205, ; 266: 0x41dbc79e4755a675 => androidx/activity/result/contract/ActivityResultContract
	i64 4756101769800025001, ; 267: 0x4201115c588983a9 => javax/net/SocketFactory
	i64 4767374780372439158, ; 268: 0x42291e1aa7415076 => androidx/navigation/fragment/FragmentNavigator$Destination
	i64 4813887237269061198, ; 269: 0x42ce5cefee357e4e => mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor
	i64 4837197082485161987, ; 270: 0x43212d1e32158003 => androidx/appcompat/view/ActionMode
	i64 4849170862723298580, ; 271: 0x434bb73527cbf514 => com/microsoft/maui/PlatformFontSpan
	i64 4871072858788003099, ; 272: 0x439986f4ff1afd1b => crc6452ffdc5b34af3a0f/MauiPicker
	i64 4919249705507088493, ; 273: 0x4444af8b3a31e86d => android/view/ContextMenu
	i64 4959838116221829671, ; 274: 0x44d4e27d04d84227 => androidx/appcompat/app/ActionBar$LayoutParams
	i64 4975918358601069938, ; 275: 0x450e036233c2f572 => crc640ec207abc449b2ca/ShellFragmentStateAdapter
	i64 4979108282683510661, ; 276: 0x4519589a478e4f85 => android/text/TextDirectionHeuristic
	i64 5067355848399572953, ; 277: 0x4652dd4bce5acfd9 => androidx/lifecycle/ViewModelProvider
	i64 5098392237163656829, ; 278: 0x46c120ba2dbfb67d => com/google/android/material/tabs/TabLayoutMediator
	i64 5099603885957472034, ; 279: 0x46c56eb725b25f22 => kotlin/Function
	i64 5180434130187613241, ; 280: 0x47e49964f0247439 => crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling
	i64 5182512798889215594, ; 281: 0x47ebfbeeb5b5066a => androidx/appcompat/widget/SearchView$OnSuggestionListener
	i64 5191481922773524551, ; 282: 0x480bd94d98c72047 => com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy
	i64 5207449722149223037, ; 283: 0x484493ee9a693a7d => kotlin/jvm/functions/Function1
	i64 5214467817578676657, ; 284: 0x485d82da477bc1b1 => java/lang/Error
	i64 5271295239434318331, ; 285: 0x492767177cb0b1fb => crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView
	i64 5273367786484979320, ; 286: 0x492ec40ff36cd678 => android/text/InputFilter$LengthFilter
	i64 5284111793688697262, ; 287: 0x4954efae104459ae => androidx/collection/SparseArrayCompat
	i64 5316905010693685758, ; 288: 0x49c970efe2e441fe => crc64e1fb321c08285b90/VisualElementRenderer_1
	i64 5318185584737426782, ; 289: 0x49cdfd9cc3e09d5e => androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties
	i64 5340832762153484109, ; 290: 0x4a1e7319a8ed3f4d => com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener
	i64 5367760951850986098, ; 291: 0x4a7e1e25664a6a72 => androidx/recyclerview/widget/RecyclerView$LayoutParams
	i64 5386283435113439196, ; 292: 0x4abfec3f1981dfdc => androidx/recyclerview/widget/RecyclerView$LayoutManager
	i64 5395622369430182331, ; 293: 0x4ae119f5300999bb => crc645d80431ce5f73f11/GridLayoutSpanSizeLookup
	i64 5397707764748188610, ; 294: 0x4ae8829d1f2efbc2 => crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable
	i64 5415641819925984136, ; 295: 0x4b28398abb703388 => androidx/appcompat/widget/LinearLayoutCompat$LayoutParams
	i64 5464633097221434266, ; 296: 0x4bd646d95bb9eb9a => crc64e1fb321c08285b90/ConditionalFocusLayout
	i64 5466832252367671256, ; 297: 0x4bde16f811060fd8 => androidx/appcompat/view/menu/MenuPresenter$Callback
	i64 5517358870160988903, ; 298: 0x4c9198a9024bdae7 => android/text/NoCopySpan
	i64 5618336483967093590, ; 299: 0x4df85743d379cb56 => androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat
	i64 5619483153547007314, ; 300: 0x4dfc6a27a4761552 => android/animation/Animator$AnimatorListener
	i64 5640220797240722407, ; 301: 0x4e4616ee924dc3e7 => android/view/ViewGroup$OnHierarchyChangeListener
	i64 5642493887972642468, ; 302: 0x4e4e2a4bbfec0ea4 => android/graphics/drawable/LayerDrawable
	i64 5642528231169355553, ; 303: 0x4e4e4987e5f66f21 => android/view/View$OnAttachStateChangeListener
	i64 5646917630193404304, ; 304: 0x4e5de1aa7f918990 => crc645d80431ce5f73f11/CarouselViewAdapter_2
	i64 5657780495434239337, ; 305: 0x4e847962677dcd69 => androidx/navigation/NavDestination$DeepLinkMatch
	i64 5700592894481602885, ; 306: 0x4f1c9308d4b11945 => androidx/navigation/NavigatorState
	i64 5701820723754511198, ; 307: 0x4f20efbd1c592b5e => android/provider/MediaStore$Video$Media
	i64 5711826783282435557, ; 308: 0x4f447c32641c95e5 => androidx/drawerlayout/widget/DrawerLayout$DrawerListener
	i64 5769270564821428901, ; 309: 0x50109103054c6aa5 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer
	i64 5783881719663270525, ; 310: 0x504479c79b679a7d => mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor
	i64 5788385766688147453, ; 311: 0x50547a2fc65fc7fd => com/google/android/material/internal/ScrimInsetsFrameLayout
	i64 5788584975648159211, ; 312: 0x50552f5db9abf5eb => androidx/appcompat/widget/LinearLayoutCompat
	i64 5793982059409158284, ; 313: 0x50685bfc3611b08c => java/net/URLConnection
	i64 5838060704937632400, ; 314: 0x5104f5479ef96290 => android/text/style/SubscriptSpan
	i64 5856823971975629766, ; 315: 0x51479e5f29998bc6 => android/widget/LinearLayout$LayoutParams
	i64 5866051512250042973, ; 316: 0x516866c54dce8a5d => android/database/ContentObserver
	i64 5880236631793339455, ; 317: 0x519acc0fd1480c3f => android/content/pm/PackageInfo
	i64 5890385405214755341, ; 318: 0x51beda5143f88a0d => android/widget/FrameLayout
	i64 5898685796340291262, ; 319: 0x51dc577aac8156be => androidx/activity/OnBackPressedCallback
	i64 5902220174995442397, ; 320: 0x51e8e5fa54bf4add => android/view/accessibility/AccessibilityRecord
	i64 5908028809052366783, ; 321: 0x51fd88e6565727bf => crc64338477404e88479c/ColorChangeRevealDrawable
	i64 5916786898001085367, ; 322: 0x521ca655d30a43b7 => android/text/style/WrapTogetherSpan
	i64 5928119462157283979, ; 323: 0x5244e93e07f6f28b => android/widget/Adapter
	i64 5933291542840177326, ; 324: 0x52574938e7d172ae => com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer
	i64 5974281808001166189, ; 325: 0x52e8e9a6b9fceb6d => crc64f728827fec74e9c3/Toolbar_Container
	i64 5991054489085362647, ; 326: 0x53248050dbf141d7 => javax/security/cert/X509Certificate
	i64 6000768439507874839, ; 327: 0x5347031a303df417 => java/lang/Enum
	i64 6012758298688632601, ; 328: 0x53719bd0d19e3719 => android/text/method/DigitsKeyListener
	i64 6038550797406471446, ; 329: 0x53cd3df4e5908516 => androidx/core/view/PointerIconCompat
	i64 6082559832693444876, ; 330: 0x546997f0e8c0910c => android/text/SpannableStringBuilder
	i64 6116679261601087867, ; 331: 0x54e2cf6180bb417b => android/widget/LinearLayout
	i64 6127537489962729811, ; 332: 0x550962e1cd1e0153 => crc64338477404e88479c/InnerGestureListener
	i64 6160296053631453721, ; 333: 0x557dc49f43f18a19 => android/graphics/PorterDuff
	i64 6190038067490173605, ; 334: 0x55e76ed37ee5b2a5 => androidx/core/app/ComponentActivity$ExtraData
	i64 6193589699106797389, ; 335: 0x55f40d042bc7774d => android/view/ActionMode
	i64 6202640532551873668, ; 336: 0x561434b38c31b484 => crc645d80431ce5f73f11/SelectableItemsViewAdapter_2
	i64 6204908697973250647, ; 337: 0x561c4395f66d5a57 => android/app/Application$ActivityLifecycleCallbacks
	i64 6216810235712202870, ; 338: 0x56468bf8a7a36876 => crc645d80431ce5f73f11/CenterSnapHelper
	i64 6283887777065464784, ; 339: 0x5734daa3c867f3d0 => androidx/appcompat/app/AlertDialog$Builder
	i64 6288369407718046879, ; 340: 0x5744c6a8bb77bc9f => androidx/navigation/Navigator
	i64 6296800472137223880, ; 341: 0x5762baaae3404ec8 => androidx/loader/content/Loader$OnLoadCompleteListener
	i64 6312114910038555662, ; 342: 0x57992311524b7c0e => android/graphics/drawable/ShapeDrawable
	i64 6317594897563382175, ; 343: 0x57ac9b165815f19f => kotlin/coroutines/CoroutineContext$Key
	i64 6351822608111181092, ; 344: 0x5826350238c31d24 => androidx/appcompat/widget/AppCompatRadioButton
	i64 6360797179963918470, ; 345: 0x58461755900e4886 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener
	i64 6364569032989959824, ; 346: 0x58537dd087d16690 => android/view/KeyboardShortcutGroup
	i64 6368200640279435473, ; 347: 0x586064bdfe4558d1 => androidx/navigation/NavController
	i64 6372223310668282668, ; 348: 0x586eaf56edd8bb2c => com/google/android/material/bottomsheet/BottomSheetBehavior
	i64 6373415978121019041, ; 349: 0x5872ec1075b3bea1 => mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor
	i64 6435837332721058469, ; 350: 0x5950aff4a10942a5 => android/text/Layout
	i64 6446708716262054708, ; 351: 0x59774f6bdb36db34 => android/text/Html
	i64 6448463832069935326, ; 352: 0x597d8bb0997b90de => crc64e1fb321c08285b90/TextCellRenderer_TextCellView
	i64 6471278565172645060, ; 353: 0x59ce999197b70cc4 => androidx/recyclerview/widget/RecyclerView$RecycledViewPool
	i64 6485460119900587756, ; 354: 0x5a00fb9e1ba306ec => android/view/DragEvent
	i64 6545321162758640842, ; 355: 0x5ad5a6eb3f1354ca => android/graphics/drawable/PaintDrawable
	i64 6559521101221494528, ; 356: 0x5b0819b00efc7f00 => crc64338477404e88479c/ControlsAccessibilityDelegate
	i64 6575421132961433232, ; 357: 0x5b4096aeaec34690 => com/google/android/material/shape/CornerSize
	i64 6577678479794931002, ; 358: 0x5b489bba32e8853a => androidx/appcompat/view/ActionMode$Callback
	i64 6606571485385333215, ; 359: 0x5baf41c3499e19df => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor
	i64 6686699664156607880, ; 360: 0x5ccbedeab9c74588 => androidx/fragment/app/FragmentFactory
	i64 6687740929511417890, ; 361: 0x5ccfa0f1355e6822 => mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor
	i64 6732005985592855696, ; 362: 0x5d6ce3c6b510cc90 => crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged
	i64 6737402552719891314, ; 363: 0x5d800fece7addb72 => android/content/ClipData$Item
	i64 6740334783866200195, ; 364: 0x5d8a7ac62b8de083 => javax/net/ssl/SSLSession
	i64 6788014833141418870, ; 365: 0x5e33df86bb7a0b76 => android/graphics/Shader$TileMode
	i64 6804602249961354267, ; 366: 0x5e6ecdb1aac5341b => android/view/Window$Callback
	i64 6828642768849235381, ; 367: 0x5ec4366b274c6db5 => android/text/style/MetricAffectingSpan
	i64 6844154811223275857, ; 368: 0x5efb5289f6be7951 => crc645d80431ce5f73f11/TextViewHolder
	i64 6873002302698470465, ; 369: 0x5f61cf2df8c8bc41 => androidx/core/view/ScaleGestureDetectorCompat
	i64 6875961628645093091, ; 370: 0x5f6c52abbc9b6ee3 => android/content/ContentResolver
	i64 6890188429085646662, ; 371: 0x5f9eddded7281f46 => android/app/SearchableInfo
	i64 6895655229236794186, ; 372: 0x5fb249e57039534a => androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate
	i64 6917527850199332409, ; 373: 0x5ffffeeddb00b639 => crc645d80431ce5f73f11/TemplatedItemViewHolder
	i64 6944519480758605639, ; 374: 0x605fe3ac92659747 => androidx/navigation/NavHostController
	i64 6962963354349051291, ; 375: 0x60a16a4788099d9b => androidx/recyclerview/widget/RecyclerView$State
	i64 6986254017918385287, ; 376: 0x60f42903b8abbc87 => androidx/navigation/NavigatorProvider
	i64 7017970021919054493, ; 377: 0x6164d68d58d35a9d => androidx/appcompat/app/AppCompatActivity
	i64 7045610246270173703, ; 378: 0x61c7093092c94207 => mono/android/app/DatePickerDialog_OnDateSetListenerImplementor
	i64 7045700695332650314, ; 379: 0x61c75b73e3067d4a => crc64e1fb321c08285b90/EntryCellView
	i64 7048179316721281784, ; 380: 0x61d029bee66d6af8 => mono/android/widget/TextView_OnEditorActionListenerImplementor
	i64 7088459779947002328, ; 381: 0x625f449d146279d8 => com/google/android/material/shape/ShapePathModel
	i64 7097363012129668510, ; 382: 0x627ee60e5bfc3d9e => mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor
	i64 7121581024859586825, ; 383: 0x62d4f035d9eb0109 => com/google/android/material/internal/StaticLayoutBuilderConfigurer
	i64 7177952650586447618, ; 384: 0x639d35e7c0c75f02 => java/text/DecimalFormatSymbols
	i64 7181616943456565684, ; 385: 0x63aa3a8f6ba7b9b4 => mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor
	i64 7208505001873526273, ; 386: 0x6409c11b5e4c4e01 => androidx/appcompat/widget/AppCompatAutoCompleteTextView
	i64 7234103110495206036, ; 387: 0x6464b273799d7a94 => android/graphics/Bitmap$Config
	i64 7244392534668770169, ; 388: 0x648940a0ba6c7b79 => android/graphics/RadialGradient
	i64 7251551689043245100, ; 389: 0x64a2afd73fce782c => crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper
	i64 7282188369651690282, ; 390: 0x650f87bd5091eb2a => android/os/Parcelable
	i64 7291810569935423650, ; 391: 0x6531b714667088a2 => android/os/Build$VERSION
	i64 7312906538941252399, ; 392: 0x657ca9c07139832f => com/google/android/material/navigation/NavigationBarItemView
	i64 7351379750238478805, ; 393: 0x660558eefdf6e1d5 => crc64338477404e88479c/PointerGestureHandler
	i64 7359209775714103835, ; 394: 0x66212a4cdd05721b => android/content/pm/PackageItemInfo
	i64 7404595276730345374, ; 395: 0x66c2682c470c279e => mono/android/view/View_OnKeyListenerImplementor
	i64 7406443753550440758, ; 396: 0x66c8f95a5348e936 => crc6452ffdc5b34af3a0f/MauiScrollView
	i64 7409799135806871516, ; 397: 0x66d4e50e22c3d7dc => crc6452ffdc5b34af3a0f/MauiMaterialButton
	i64 7435834490012150186, ; 398: 0x6731641269c5a9aa => crc64338477404e88479c/GenericGlobalLayoutListener
	i64 7437796681088239247, ; 399: 0x67385cac9fd8068f => java/io/FileDescriptor
	i64 7472244136216057313, ; 400: 0x67b2be73c62755e1 => androidx/recyclerview/widget/RecyclerView$OnFlingListener
	i64 7516290617095606990, ; 401: 0x684f3a7e4495d2ce => androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener
	i64 7538647566659605431, ; 402: 0x689ea805399bd3b7 => android/view/WindowManager$LayoutParams
	i64 7543760211319933178, ; 403: 0x68b0d1f1927348fa => mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor
	i64 7570501070567637873, ; 404: 0x690fd29d0ae60371 => kotlinx/coroutines/flow/SharedFlow
	i64 7605367724016209675, ; 405: 0x698bb1a668350f0b => androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback
	i64 7606121740798224536, ; 406: 0x698e5f6c9ea76898 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener
	i64 7620119821450638162, ; 407: 0x69c01a9abf7a7352 => java/io/InterruptedIOException
	i64 7626091922154612119, ; 408: 0x69d55232cc806597 => com/google/android/material/elevation/ElevationOverlayProvider
	i64 7643734333815795607, ; 409: 0x6a13ffe0dc8c2f97 => android/view/View$OnFocusChangeListener
	i64 7649779996619039646, ; 410: 0x6a297a606c5de39e => crc645d80431ce5f73f11/EndSnapHelper
	i64 7658195837123306865, ; 411: 0x6a476089fc1c2571 => java/lang/Character
	i64 7681872310366473403, ; 412: 0x6a9b7e2a7d4d8cbb => android/widget/ListAdapter
	i64 7691739891202254295, ; 413: 0x6abe8cadafcfe5d7 => androidx/core/view/WindowInsetsAnimationCompat
	i64 7705986769563355672, ; 414: 0x6af12a238baf0a18 => crc6452ffdc5b34af3a0f/MauiBoxView
	i64 7707137187261173951, ; 415: 0x6af5407009e7d0bf => crc645d80431ce5f73f11/SelectableViewHolder
	i64 7731510726439183081, ; 416: 0x6b4bd80ada87a2e9 => android/animation/ValueAnimator$AnimatorUpdateListener
	i64 7742963657184098828, ; 417: 0x6b74886c1737ba0c => androidx/appcompat/widget/Toolbar$LayoutParams
	i64 7749032626649128185, ; 418: 0x6b8a181e28555cf9 => android/graphics/drawable/RippleDrawable
	i64 7798613346913539658, ; 419: 0x6c3a3d852b66d64a => com/google/android/material/checkbox/MaterialCheckBox
	i64 7803133828481253567, ; 420: 0x6c4a4cdfcd7580bf => android/animation/ValueAnimator$DurationScaleChangeListener
	i64 7864467029396250131, ; 421: 0x6d24331872ef5e13 => crc6488302ad6e9e4df1a/MauiAppCompatActivity
	i64 7864855107911594701, ; 422: 0x6d25940d04fcb2cd => mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor
	i64 7865688982361293915, ; 423: 0x6d288a748b59445b => android/view/View$OnScrollChangeListener
	i64 7875199854262555871, ; 424: 0x6d4a548af88714df => android/content/ClipDescription
	i64 7885044884479929607, ; 425: 0x6d6d4e8bb16fed07 => androidx/lifecycle/ViewModel
	i64 7888810119934589243, ; 426: 0x6d7aaf01e335393b => crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener
	i64 7890605003148928414, ; 427: 0x6d810f71b39ca59e => androidx/appcompat/widget/AppCompatCheckBox
	i64 7933543037734065265, ; 428: 0x6e199b5bee699471 => java/util/HashMap
	i64 7949315060988846129, ; 429: 0x6e51a3ee41e72031 => android/content/res/TypedArray
	i64 7977746367831656039, ; 430: 0x6eb6a60dbac4c667 => android/widget/ProgressBar
	i64 7983078697141197390, ; 431: 0x6ec997c76516da4e => mono/android/view/View_OnTouchListenerImplementor
	i64 7984385532120790879, ; 432: 0x6ece3c569fd3f75f => android/text/method/MetaKeyKeyListener
	i64 7995168442746702247, ; 433: 0x6ef48b56a55489a7 => crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult
	i64 8037825913650420308, ; 434: 0x6f8c18150d901a54 => java/util/concurrent/atomic/AtomicReference
	i64 8045985209002586618, ; 435: 0x6fa914eb0aa571fa => androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener
	i64 8058145963905469793, ; 436: 0x6fd4490f6ed54d61 => android/view/ContextMenu$ContextMenuInfo
	i64 8062358743859858152, ; 437: 0x6fe3408fb3880ae8 => mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor
	i64 8074648518520542053, ; 438: 0x700eea0bd88d1365 => mono/android/view/View_OnFocusChangeListenerImplementor
	i64 8113256564074339257, ; 439: 0x709813dbf141dbb9 => crc6452ffdc5b34af3a0f/ScopedFragment
	i64 8128307717584548501, ; 440: 0x70cd8ccdb3b17295 => kotlin/jvm/functions/Function0
	i64 8137637341858592932, ; 441: 0x70eeb20c206f78a4 => crc64ba438d8f48cf7e75/IntermediateActivity
	i64 8178596677272620685, ; 442: 0x718036588e064e8d => android/view/View$OnDragListener
	i64 8188592205440608210, ; 443: 0x71a3b939cfd1e7d2 => androidx/appcompat/view/menu/MenuBuilder
	i64 8190305621607579207, ; 444: 0x71a9cf9199cdfe47 => java/nio/channels/spi/AbstractInterruptibleChannel
	i64 8233717759971265430, ; 445: 0x72440aadb7e98b96 => androidx/fragment/app/FragmentContainer
	i64 8252554373049789286, ; 446: 0x7286f67a773aab66 => crc64338477404e88479c/DragAndDropGestureHandler
	i64 8278064317100257641, ; 447: 0x72e197a32898f169 => androidx/navigation/NavDeepLinkBuilder
	i64 8362058396472415889, ; 448: 0x740bffceb8cf9691 => mono/android/content/DialogInterface_OnCancelListenerImplementor
	i64 8372779371615156560, ; 449: 0x7432167a43d6f950 => android/widget/SeekBar
	i64 8394886757576584589, ; 450: 0x7480a1072afbad8d => androidx/lifecycle/ViewModelProvider$Factory$Companion
	i64 8416619862292774857, ; 451: 0x74cdd72bed753fc9 => java/lang/IllegalArgumentException
	i64 8421791132995673144, ; 452: 0x74e0366a36bddc38 => androidx/recyclerview/widget/ItemTouchHelper
	i64 8425647329628860924, ; 453: 0x74ede99af53f31fc => crc6452ffdc5b34af3a0f/MauiShapeView
	i64 8427024478828076046, ; 454: 0x74f2ce1d7e119c0e => android/text/TextWatcher
	i64 8437033726010721180, ; 455: 0x75165d78f4dc039c => mono/android/view/View_OnAttachStateChangeListenerImplementor
	i64 8462361838522003613, ; 456: 0x75705941b1ecf09d => android/os/IBinder
	i64 8469710080902461022, ; 457: 0x758a7471b2bc765e => kotlin/sequences/Sequence
	i64 8487642170263250902, ; 458: 0x75ca29959b2aa7d6 => android/content/ContextWrapper
	i64 8549089476185573369, ; 459: 0x76a47795651247f9 => mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor
	i64 8574675756585218473, ; 460: 0x76ff5e2b876a71a9 => androidx/navigation/NavViewModelStoreProvider
	i64 8587172038193766563, ; 461: 0x772bc378d1b4e0a3 => java/lang/Runnable
	i64 8618892606698062027, ; 462: 0x779c7529337a80cb => crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener
	i64 8625055343724598723, ; 463: 0x77b25a233aca15c3 => android/provider/MediaStore$Audio$Media
	i64 8655205006257707444, ; 464: 0x781d7718902c59b4 => androidx/core/view/ActionProvider$SubUiVisibilityListener
	i64 8667795546213253293, ; 465: 0x784a322015c100ad => androidx/navigation/Navigator$Extras
	i64 8712284566595978930, ; 466: 0x78e840a7561246b2 => android/view/MenuItem$OnActionExpandListener
	i64 8719122993390795943, ; 467: 0x79008c2aa5ffbca7 => android/view/OrientationEventListener
	i64 8722435519081898203, ; 468: 0x790c50e4232060db => android/app/PendingIntent
	i64 8784751650103882924, ; 469: 0x79e9b5150877f4ac => android/content/res/Configuration
	i64 8808233201678771961, ; 470: 0x7a3d216dccdd66f9 => mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor
	i64 8815982235821639925, ; 471: 0x7a58a922684d88f5 => androidx/core/widget/TextViewCompat
	i64 8818441445812352019, ; 472: 0x7a6165c5da3a3413 => androidx/recyclerview/widget/OrientationHelper
	i64 8820163834125063958, ; 473: 0x7a678446a1c59716 => androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback
	i64 8844400343224702393, ; 474: 0x7abd9f40a54055b9 => androidx/appcompat/view/menu/MenuItemImpl
	i64 8853215855731863812, ; 475: 0x7adcf0ea18c0f104 => androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy
	i64 8914810474906455838, ; 476: 0x7bb7c4e4ecbb0f1e => com/microsoft/maui/PlatformAppCompatTextView
	i64 8931605240031794265, ; 477: 0x7bf36fa4e61cd459 => com/google/android/material/shape/EdgeTreatment
	i64 8950391188589719199, ; 478: 0x7c362d5d64ad2e9f => java/lang/Boolean
	i64 8972627133644507939, ; 479: 0x7c852cd6cae98b23 => android/view/LayoutInflater
	i64 8979848056199665951, ; 480: 0x7c9ed43ad6c3591f => androidx/core/view/ActionProvider
	i64 8981516335682015417, ; 481: 0x7ca4c1856cb1d0b9 => android/graphics/Paint$Style
	i64 8984696751965337035, ; 482: 0x7cb00e17cb7ff5cb => android/text/style/StyleSpan
	i64 9000742728442691829, ; 483: 0x7ce90fd2d381c0f5 => java/io/Reader
	i64 9013544160697135900, ; 484: 0x7d168aa889a6331c => android/view/ViewConfiguration
	i64 9026643144054951887, ; 485: 0x7d45141d439c4fcf => androidx/core/text/PrecomputedTextCompat
	i64 9036096474510254000, ; 486: 0x7d66a9de4757dfb0 => crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener
	i64 9039115063128758362, ; 487: 0x7d71634235ac185a => android/webkit/CookieManager
	i64 9052904945156302472, ; 488: 0x7da26115516b2688 => android/graphics/Paint
	i64 9090354662222454056, ; 489: 0x7e276d670c15dd28 => android/view/ViewTreeObserver$OnGlobalLayoutListener
	i64 9090573862148084054, ; 490: 0x7e2834c381c99156 => androidx/lifecycle/viewmodel/CreationExtras
	i64 9154019302997878316, ; 491: 0x7f099c0e5641e62c => javax/net/ssl/KeyManager
	i64 9187009981601112352, ; 492: 0x7f7ed0e7454d6120 => android/view/ViewGroup$MarginLayoutParams
	i64 9217569019755338609, ; 493: 0x7feb622fcb299b71 => java/security/Principal
	i64 9223813467167136034, ; 494: 0x8001917a80f61922 => androidx/appcompat/app/ActionBarDrawerToggle
	i64 9261475547774197607, ; 495: 0x80875ef0f90c1f67 => android/widget/ImageView
	i64 9263999828566228768, ; 496: 0x809056c2e4f83f20 => androidx/recyclerview/widget/RecyclerView$RecyclerListener
	i64 9266054422632426471, ; 497: 0x8097a3675a716be7 => android/text/SpannableStringInternal
	i64 9267880512747732096, ; 498: 0x809e20391717fc80 => mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor
	i64 9273509983330139147, ; 499: 0x80b22032596e7c0b => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat
	i64 9286063777946211584, ; 500: 0x80deb9ce6e1b1500 => android/content/res/AssetFileDescriptor
	i64 9313201588916243318, ; 501: 0x813f23806cf4cb76 => androidx/core/graphics/drawable/DrawableCompat
	i64 9354128719103063801, ; 502: 0x81d08a827d6af6f9 => mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor
	i64 9355021183435591253, ; 503: 0x81d3b63388eece55 => android/graphics/drawable/Drawable
	i64 9367788077672619287, ; 504: 0x8201119fbcd0dd17 => android/graphics/PathEffect
	i64 9374080444557732201, ; 505: 0x82176c7f91cca969 => android/os/IBinder$DeathRecipient
	i64 9387983273234612227, ; 506: 0x8248d10c1e754003 => com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener
	i64 9472253597416177494, ; 507: 0x83743475f0683f56 => androidx/recyclerview/widget/ItemTouchHelper$Callback
	i64 9490804761146227161, ; 508: 0x83b61ca554b4f9d9 => androidx/core/view/ActionProvider$VisibilityListener
	i64 9507464054666394215, ; 509: 0x83f14c2f5d2f7a67 => android/widget/AbsSeekBar
	i64 9508416549184848137, ; 510: 0x83f4ae79469bc109 => java/lang/ClassLoader
	i64 9511744497939342886, ; 511: 0x84008139b9f36626 => androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments
	i64 9521006120370395580, ; 512: 0x8421689f3cff59bc => androidx/viewpager/widget/ViewPager
	i64 9561326475558871143, ; 513: 0x84b0a7c57d396067 => com/microsoft/maui/MauiViewGroup
	i64 9653796168998115956, ; 514: 0x85f92c77bb28da74 => android/view/accessibility/AccessibilityEvent
	i64 9656994348200431989, ; 515: 0x86048931da711175 => android/text/SpannableString
	i64 9667515047141612341, ; 516: 0x8629e9b6f59e9b35 => java/lang/Thread
	i64 9712620497184332666, ; 517: 0x86ca28e1ecd99b7a => mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor
	i64 9733439219601035317, ; 518: 0x87141f66772cd035 => androidx/activity/contextaware/OnContextAvailableListener
	i64 9785570804745343508, ; 519: 0x87cd54ccfd479214 => java/net/URL
	i64 9800253854282402593, ; 520: 0x88017ef4dd27cb21 => android/view/ViewPropertyAnimator
	i64 9864125463926107429, ; 521: 0x88e469d8d9336d25 => androidx/activity/ComponentDialog
	i64 9866983915955550238, ; 522: 0x88ee91981305f81e => java/lang/SecurityException
	i64 9869939015140501507, ; 523: 0x88f9113db837e803 => android/app/Activity
	i64 9876054856643157065, ; 524: 0x890ecb91087c9c49 => crc64e1fb321c08285b90/ListViewAdapter
	i64 9891313474396361641, ; 525: 0x89450132d36e13a9 => androidx/core/internal/view/SupportMenuItem
	i64 9907358733905502342, ; 526: 0x897e0246eccd2086 => crc64b5e713d400f589b7/MauiDrawable
	i64 9921777852642371167, ; 527: 0x89b13c639f16265f => androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener
	i64 9924230831254210082, ; 528: 0x89b9f35c35e30622 => android/graphics/drawable/ShapeDrawable$ShaderFactory
	i64 9929704669852541671, ; 529: 0x89cd65c9931922e7 => androidx/navigation/fragment/FragmentNavigator
	i64 9977296435420958008, ; 530: 0x8a767a3efc098d38 => java/lang/NullPointerException
	i64 9995467285110801699, ; 531: 0x8ab708899d114523 => com/google/android/material/appbar/HeaderBehavior
	i64 10002475813170388786, ; 532: 0x8acfeec1b6751f32 => android/graphics/Insets
	i64 10012846325985404475, ; 533: 0x8af4c6aee2ef663b => crc645d80431ce5f73f11/PositionalSmoothScroller
	i64 10018881518736268144, ; 534: 0x8b0a37a8b3005b70 => android/view/WindowInsetsAnimationControlListener
	i64 10066722417169108808, ; 535: 0x8bb42eb3dfd38f48 => crc64338477404e88479c/GenericMenuClickListener
	i64 10083342998336719661, ; 536: 0x8bef3b087c484b2d => android/view/ScaleGestureDetector$SimpleOnScaleGestureListener
	i64 10091524575743969799, ; 537: 0x8c0c4c226b580a07 => androidx/core/view/ViewPropertyAnimatorUpdateListener
	i64 10095829318087436361, ; 538: 0x8c1b974659936849 => androidx/fragment/app/Fragment
	i64 10116006898471457589, ; 539: 0x8c6346ad60cad335 => androidx/appcompat/widget/SearchView$OnQueryTextListener
	i64 10128540585303438051, ; 540: 0x8c8fcdffc02372e3 => androidx/appcompat/graphics/drawable/DrawableWrapperCompat
	i64 10161219523932954642, ; 541: 0x8d03e75210c9a012 => androidx/recyclerview/widget/SnapHelper
	i64 10230811296040817611, ; 542: 0x8dfb24ab289113cb => androidx/lifecycle/ViewModelStoreOwner
	i64 10266059374509936169, ; 543: 0x8e785e9bf4bbce29 => java/lang/Long
	i64 10293068996586880171, ; 544: 0x8ed853b7a625bcab => crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick
	i64 10293479692282140573, ; 545: 0x8ed9c93e312c979d => crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1
	i64 10365934324252812416, ; 546: 0x8fdb3258ca1e2480 => android/graphics/drawable/StateListDrawable
	i64 10369805750189513392, ; 547: 0x8fe8f36361d95ab0 => android/widget/AutoCompleteTextView
	i64 10373704809055737018, ; 548: 0x8ff6cd8fc48754ba => androidx/viewpager/widget/ViewPager$OnPageChangeListener
	i64 10396963593911974655, ; 549: 0x90496f4d9dcabaff => androidx/lifecycle/LifecycleObserver
	i64 10446292634862201785, ; 550: 0x90f8afcdf8bdabb9 => android/widget/Filter$FilterResults
	i64 10466912235619695019, ; 551: 0x9141f138e34d39ab => android/text/StaticLayout$Builder
	i64 10486969556178867945, ; 552: 0x9189333fbe6096e9 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat
	i64 10499957734077086001, ; 553: 0x91b757ed9047b931 => android/view/ViewGroup$LayoutParams
	i64 10528560983360194325, ; 554: 0x921cf66e8138c715 => mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor
	i64 10529189084302795258, ; 555: 0x921f31afa6c9e1fa => crc645d80431ce5f73f11/SpacingItemDecoration
	i64 10556732314164660806, ; 556: 0x92810c1b96ac0a46 => android/view/WindowManager
	i64 10565471938346028939, ; 557: 0x92a018bfe9790f8b => android/content/pm/ShortcutInfo
	i64 10582806380718996879, ; 558: 0x92ddae55497e3d8f => android/provider/DocumentsContract
	i64 10589642565195629679, ; 559: 0x92f5f7ce84d7846f => java/lang/UnsupportedOperationException
	i64 10592509549452171395, ; 560: 0x930027504f079883 => crc64e1fb321c08285b90/CellRenderer_RendererHolder
	i64 10596685970650905969, ; 561: 0x930efdbf25033d71 => androidx/core/app/TaskStackBuilder
	i64 10612931704630082588, ; 562: 0x9348b527d7f4fc1c => crc64338477404e88479c/MultiPageFragmentStateAdapter_1
	i64 10647948239400402802, ; 563: 0x93c51c822c34ff72 => com/google/android/material/tabs/TabLayout$Tab
	i64 10655477448226598286, ; 564: 0x93dfdc48b5bb6d8e => androidx/navigation/NavDeepLink
	i64 10655658609895831411, ; 565: 0x93e0810cb2ac7773 => android/content/res/ColorStateList
	i64 10669273640681975941, ; 566: 0x9410dfd91449b085 => androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener
	i64 10677704381882915324, ; 567: 0x942ed38ffac359fc => android/widget/FilterQueryProvider
	i64 10721574239302262859, ; 568: 0x94caaef71e97204b => mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor
	i64 10722894652849872693, ; 569: 0x94cf5fdfdb0d5f35 => java/lang/Short
	i64 10749607925354851574, ; 570: 0x952e4774497fecf6 => androidx/navigation/NavBackStackEntry
	i64 10783898034563810276, ; 571: 0x95a81a207c3583e4 => androidx/appcompat/app/ActionBarDrawerToggle$Delegate
	i64 10799644280525089146, ; 572: 0x95e00b411146e97a => android/view/View$OnLayoutChangeListener
	i64 10799850913504254972, ; 573: 0x95e0c72f8e995bfc => crc640ec207abc449b2ca/CustomFrameLayout
	i64 10804287674762873921, ; 574: 0x95f08a65895f4c41 => androidx/fragment/app/Fragment$SavedState
	i64 10807464319380525259, ; 575: 0x95fbd389bf6290cb => android/window/OnBackInvokedDispatcher
	i64 10808978037618020601, ; 576: 0x96013441bd3890f9 => android/database/DataSetObserver
	i64 10846083286812210570, ; 577: 0x96850748cabe358a => android/widget/CheckBox
	i64 10848177494516672777, ; 578: 0x968c77f4850da909 => crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat
	i64 10882406340763957480, ; 579: 0x970612e8d2b1b8e8 => crc64e1fb321c08285b90/TableViewRenderer
	i64 10941052169733558586, ; 580: 0x97d66cfaedfc513a => com/google/android/material/navigation/NavigationBarView
	i64 10954308252324574527, ; 581: 0x980585512befb53f => androidx/recyclerview/widget/LinearSnapHelper
	i64 10971842169477510975, ; 582: 0x9843d052635bb73f => java/io/RandomAccessFile
	i64 11005920483369566278, ; 583: 0x98bce25e25704046 => java/util/Random
	i64 11011592790621755141, ; 584: 0x98d1094d18431705 => androidx/recyclerview/widget/PagerSnapHelper
	i64 11013759639154314179, ; 585: 0x98d8bc09d553cbc3 => crc6452ffdc5b34af3a0f/BorderDrawable
	i64 11055023287189350860, ; 586: 0x996b551b9097a9cc => androidx/recyclerview/widget/GridLayoutManager
	i64 11068121910117196641, ; 587: 0x9999de3c5f40e361 => androidx/recyclerview/widget/LinearLayoutManager
	i64 11073595966862020696, ; 588: 0x99ad50dc87025058 => crc6469068ad1cdfc2512/MainApplication
	i64 11112718717483603117, ; 589: 0x9a384ecbbc71d4ad => android/os/Handler
	i64 11139934129755664080, ; 590: 0x9a98ff11b1562ed0 => android/graphics/Region
	i64 11160671548185282843, ; 591: 0x9ae2aba42c64891b => mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor
	i64 11198249491814670955, ; 592: 0x9b682c94f9cfe26b => crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper
	i64 11219748541155570913, ; 593: 0x9bb48dda78c8f4e1 => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener
	i64 11240308327273157113, ; 594: 0x9bfd98deb4fb51f9 => android/graphics/RectF
	i64 11253024261992253531, ; 595: 0x9c2ac5f1f8e6885b => com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener
	i64 11280841333105678042, ; 596: 0x9c8d996c8b4ed6da => java/util/function/IntConsumer
	i64 11291374328304676105, ; 597: 0x9cb305209890ad09 => android/view/GestureDetector
	i64 11300391941134751458, ; 598: 0x9cd30e99320616e2 => android/view/WindowInsetsAnimation
	i64 11303092492513440383, ; 599: 0x9cdca6bc4fa5f27f => androidx/appcompat/app/ActionBar$OnMenuVisibilityListener
	i64 11316980762789968198, ; 600: 0x9d0dfe0b38067946 => androidx/navigation/fragment/NavHostFragment
	i64 11318214316270108732, ; 601: 0x9d125ff44505403c => androidx/core/view/DisplayCutoutCompat
	i64 11319579417811750335, ; 602: 0x9d173981bd7e0dbf => crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout
	i64 11347448736908623594, ; 603: 0x9d7a3c813e64beea => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener
	i64 11348321151605279956, ; 604: 0x9d7d55f61e7c0cd4 => android/view/animation/Animation
	i64 11350043478091902911, ; 605: 0x9d83746880e82fbf => com/google/android/material/bottomnavigation/BottomNavigationMenuView
	i64 11362626114661944393, ; 606: 0x9db0283fe0008c49 => crc640ec207abc449b2ca/ScrollLayoutManager
	i64 11373498917253313136, ; 607: 0x9dd6c901802c7270 => android/graphics/Bitmap$CompressFormat
	i64 11382222561093279360, ; 608: 0x9df5c71d1c66de80 => androidx/appcompat/widget/AppCompatImageButton
	i64 11393831178655295976, ; 609: 0x9e1f05170284e9e8 => javax/net/ssl/SSLContext
	i64 11433447159505902538, ; 610: 0x9eabc39d548c5bca => crc64e1fb321c08285b90/ViewRenderer
	i64 11450474772635999718, ; 611: 0x9ee84223748a5de6 => androidx/core/view/OnApplyWindowInsetsListener
	i64 11455013877405489018, ; 612: 0x9ef8626e23ec977a => mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor
	i64 11458704622197203966, ; 613: 0x9f057f24a030e3fe => androidx/fragment/app/FragmentContainerView
	i64 11502418447837245771, ; 614: 0x9fa0cca2c93d314b => androidx/core/view/AccessibilityDelegateCompat
	i64 11535591933768018538, ; 615: 0xa016a7bede1aaa6a => android/widget/CompoundButton
	i64 11559083904147049039, ; 616: 0xa06a1d91739eca4f => crc6452ffdc5b34af3a0f/MauiHorizontalScrollView
	i64 11573301743732151818, ; 617: 0xa09ca09e3190560a => mono/java/lang/RunnableImplementor
	i64 11583143563284489324, ; 618: 0xa0bf97b35feca46c => android/util/StateSet
	i64 11585998938245262039, ; 619: 0xa0c9bca62a296ad7 => mono/android/runtime/JavaArray
	i64 11598024117237361233, ; 620: 0xa0f4757c5458aa51 => mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor
	i64 11599884267556258346, ; 621: 0xa0fb11485355422a => android/graphics/Paint$Join
	i64 11602363698226276253, ; 622: 0xa103e04fc3aa279d => com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback
	i64 11645903917753074926, ; 623: 0xa19e8fe91a0084ee => com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState
	i64 11652834085301598403, ; 624: 0xa1b72edc78f738c3 => androidx/appcompat/app/ActionBar$OnNavigationListener
	i64 11674634942540717397, ; 625: 0xa204a2a018809d55 => com/microsoft/maui/PlatformLineHeightSpan
	i64 11712899692065226922, ; 626: 0xa28c94365b5480aa => java/util/ArrayList
	i64 11727968597912444134, ; 627: 0xa2c21d4d6781dce6 => androidx/appcompat/widget/AppCompatTextView
	i64 11733033384446672514, ; 628: 0xa2d41bb2e9be3e82 => androidx/core/view/WindowInsetsAnimationControllerCompat
	i64 11746098886186715163, ; 629: 0xa30286b417c5481b => crc6452ffdc5b34af3a0f/MauiWebView
	i64 11763058807128842702, ; 630: 0xa33ec7a966f1e1ce => java/security/cert/Certificate
	i64 11772704798930040391, ; 631: 0xa3610ca3e1c2f647 => androidx/recyclerview/widget/RecyclerView
	i64 11803136239818375911, ; 632: 0xa3cd29dfd9ea02e7 => com/microsoft/maui/ImageLoaderCallback
	i64 11815547073218641318, ; 633: 0xa3f941762e1a7da6 => mono/androidx/fragment/app/FragmentOnAttachListenerImplementor
	i64 11852070525194104598, ; 634: 0xa47b035903126f16 => androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher
	i64 11862840459039463804, ; 635: 0xa4a1468ba42dd97c => androidx/recyclerview/widget/RecyclerView$ItemDecoration
	i64 11881882108125626106, ; 636: 0xa4e4ecd30de5befa => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat
	i64 11886035554516586888, ; 637: 0xa4f3ae5ca69fd188 => androidx/core/widget/CompoundButtonCompat
	i64 11887610981211642202, ; 638: 0xa4f947344327195a => crc645d80431ce5f73f11/DataChangeObserver
	i64 11887946763374938247, ; 639: 0xa4fa7898a3b7c887 => android/view/accessibility/AccessibilityNodeInfo
	i64 11893890523420890567, ; 640: 0xa50f966a1de315c7 => java/util/concurrent/Future
	i64 11895525870086415889, ; 641: 0xa51565c0eef86611 => java/util/concurrent/TimeUnit
	i64 11904910774208243445, ; 642: 0xa536bd46336726f5 => mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor
	i64 11916781626688848330, ; 643: 0xa560e9c06cb0c1ca => crc640ec207abc449b2ca/ShellSearchViewAdapter
	i64 11934798350699665373, ; 644: 0xa5a0ebdddf5f17dd => com/google/android/material/button/MaterialButton$OnCheckedChangeListener
	i64 11954228872253987625, ; 645: 0xa5e5f3d2b66adb29 => android/view/View
	i64 11964861904226695339, ; 646: 0xa60bba82640938ab => android/view/animation/DecelerateInterpolator
	i64 11999052403845373657, ; 647: 0xa68532966c801ed9 => androidx/activity/ComponentActivity
	i64 12010988764752805573, ; 648: 0xa6af9aa5044c7ec5 => android/provider/MediaStore$Images
	i64 12016049636675011370, ; 649: 0xa6c1957b1579c32a => android/widget/EditText
	i64 12038506047031854553, ; 650: 0xa7115d778fb9c5d9 => androidx/navigation/ui/AppBarConfiguration$Builder
	i64 12058030931184860355, ; 651: 0xa756bb3ee7f23cc3 => androidx/appcompat/widget/Toolbar$OnMenuItemClickListener
	i64 12073113755568574408, ; 652: 0xa78c50fe9d8c0fc8 => androidx/navigation/NavDirections
	i64 12087035618859132646, ; 653: 0xa7bdc6db0197a6e6 => androidx/navigation/NavController$OnDestinationChangedListener
	i64 12095812086181006791, ; 654: 0xa7dcf5018ab20dc7 => java/text/DecimalFormat
	i64 12121692130554347282, ; 655: 0xa838e6c4ee56ff12 => android/content/DialogInterface$OnShowListener
	i64 12140364777871027762, ; 656: 0xa87b3d716caaae32 => com/google/android/material/button/MaterialButton
	i64 12170573762016350767, ; 657: 0xa8e6905aa5ac922f => androidx/coordinatorlayout/widget/CoordinatorLayout
	i64 12177184876160314206, ; 658: 0xa8fe0d209bcb6b5e => crc640ec207abc449b2ca/ShellToolbarTracker
	i64 12178551107760647509, ; 659: 0xa902e7b531036d55 => android/content/pm/ShortcutInfo$Builder
	i64 12188243356700996345, ; 660: 0xa92556c1c02d72f9 => mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor
	i64 12204817298245236931, ; 661: 0xa96038ab3a7338c3 => android/animation/Animator
	i64 12228984007958404582, ; 662: 0xa9b61429ce4b1de6 => android/content/Context
	i64 12357628517981024779, ; 663: 0xab7f1da9e07ef20b => com/google/android/material/tabs/TabLayout$TabView
	i64 12394252047178846529, ; 664: 0xac013a91c0c0d141 => androidx/core/view/ViewPropertyAnimatorListener
	i64 12406331470302940810, ; 665: 0xac2c24bd9d280e8a => crc6488302ad6e9e4df1a/ImageLoaderCallback
	i64 12418532417713721361, ; 666: 0xac577d700d7fd011 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener
	i64 12424155630573804649, ; 667: 0xac6b77b852855c69 => androidx/cursoradapter/widget/CursorAdapter
	i64 12426529965699990912, ; 668: 0xac73e72a4c4b8580 => java/lang/IndexOutOfBoundsException
	i64 12458575303368155603, ; 669: 0xace5c03ae4b6a1d3 => android/content/res/Resources
	i64 12459958381958228342, ; 670: 0xaceaaa21f8c56976 => androidx/core/view/accessibility/AccessibilityNodeProviderCompat
	i64 12473096163495768810, ; 671: 0xad1956e01a73f2ea => android/provider/MediaStore$Video
	i64 12476375190645835422, ; 672: 0xad24fd221af1069e => android/os/Looper
	i64 12488842103917764438, ; 673: 0xad5147b98bf5df56 => java/lang/IllegalStateException
	i64 12498190180125277945, ; 674: 0xad727dc025a47ef9 => android/view/animation/AccelerateInterpolator
	i64 12507292395611969941, ; 675: 0xad92d42ad6655995 => crc645d80431ce5f73f11/CarouselSpacingItemDecoration
	i64 12519182673097780081, ; 676: 0xadbd124fcc37eb71 => crc640ec207abc449b2ca/ShellItemRenderer
	i64 12521855745784279582, ; 677: 0xadc691750827f21e => android/graphics/drawable/Drawable$ConstantState
	i64 12532121860257401396, ; 678: 0xadeb0a6f128cca34 => java/lang/Number
	i64 12552175079452445066, ; 679: 0xae3248bb0146098a => androidx/lifecycle/Lifecycle$Event
	i64 12562806007935242682, ; 680: 0xae580d80ed1f91ba => androidx/swiperefreshlayout/widget/SwipeRefreshLayout
	i64 12617938093516012652, ; 681: 0xaf1bebd7e5e43c6c => crc640ec207abc449b2ca/ShellSectionRenderer
	i64 12620927486094336076, ; 682: 0xaf268aae189de04c => crc6452ffdc5b34af3a0f/MauiWebChromeClient
	i64 12636253712611178016, ; 683: 0xaf5cfdcd47e67620 => android/text/style/ParagraphStyle
	i64 12636367776980213416, ; 684: 0xaf5d658af6191ea8 => androidx/fragment/app/strictmode/Violation
	i64 12693819786861733279, ; 685: 0xb02981d766b7e59f => crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData
	i64 12710812532019973712, ; 686: 0xb065e0a731a24e50 => androidx/navigation/NavGraphNavigator
	i64 12728286941582258848, ; 687: 0xb0a3f5893840f2a0 => android/text/StaticLayout
	i64 12743457539483353118, ; 688: 0xb0d9db1d4b2dc01e => androidx/lifecycle/Lifecycle$State
	i64 12774266387958735952, ; 689: 0xb1474f99507e2450 => androidx/core/content/pm/PackageInfoCompat
	i64 12779280579384883315, ; 690: 0xb1591ffabb48b873 => androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup
	i64 12787245097144369327, ; 691: 0xb1756baa872540af => android/text/style/CharacterStyle
	i64 12792955789176512524, ; 692: 0xb189b582a124a00c => androidx/core/view/ViewPropertyAnimatorCompat
	i64 12805546267304270225, ; 693: 0xb1b6707bc1801991 => com/google/android/material/appbar/AppBarLayout$BaseBehavior
	i64 12806567541869262104, ; 694: 0xb1ba1153c52a3518 => java/lang/Integer
	i64 12807831994208149158, ; 695: 0xb1be8f5705a8dea6 => com/google/android/material/bottomsheet/BottomSheetDialog
	i64 12811923833721965587, ; 696: 0xb1cd18d8a65bcc13 => crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable
	i64 12829421241662982594, ; 697: 0xb20b42a5672c49c2 => androidx/appcompat/app/AppCompatDelegate
	i64 12834769660475362759, ; 698: 0xb21e430132984dc7 => android/widget/Filter
	i64 12849974230675558933, ; 699: 0xb254477b10571215 => android/widget/ImageButton
	i64 12860500274240197627, ; 700: 0xb279acdc8fe693fb => androidx/lifecycle/viewmodel/ViewModelInitializer
	i64 12882710959019299141, ; 701: 0xb2c8955c98609145 => java/net/SocketTimeoutException
	i64 12888661543481730055, ; 702: 0xb2ddb96301776407 => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener
	i64 12915473442100513285, ; 703: 0xb33cfaaa9e648a05 => crc643f2b18b2570eaa5a/PlatformGraphicsView
	i64 12961895021666395627, ; 704: 0xb3e1e6d8de5465eb => crc6452ffdc5b34af3a0f/ContainerView
	i64 12972298771783691784, ; 705: 0xb406dd00b4672e08 => crc645d80431ce5f73f11/EndSingleSnapHelper
	i64 13046320909237610371, ; 706: 0xb50dd7be9cdbe783 => android/content/res/XmlResourceParser
	i64 13093392672838054310, ; 707: 0xb5b51343a136f1a6 => android/os/Message
	i64 13096056689640900747, ; 708: 0xb5be8a2c606c888b => android/widget/Filterable
	i64 13098653679835327793, ; 709: 0xb5c7c41f4672ad31 => crc645d80431ce5f73f11/ScrollHelper
	i64 13110294641226230201, ; 710: 0xb5f11f83ceff29b9 => crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener
	i64 13120818853233679472, ; 711: 0xb616833add3ddc70 => android/widget/AdapterView$OnItemClickListener
	i64 13147524012913224524, ; 712: 0xb675636e619c6b4c => androidx/drawerlayout/widget/DrawerLayout
	i64 13162079438830684735, ; 713: 0xb6a9198390f9ca3f => androidx/activity/result/ActivityResultCallback
	i64 13182567943790513355, ; 714: 0xb6f1e3b35d15cccb => androidx/recyclerview/widget/RecyclerView$Recycler
	i64 13190940126609738208, ; 715: 0xb70fa228140509e0 => crc64e1fb321c08285b90/BaseCellView
	i64 13191394589072141775, ; 716: 0xb7113f7cdda7adcf => android/app/AlertDialog$Builder
	i64 13210945690397914619, ; 717: 0xb756b51c5f2535fb => android/view/View$OnKeyListener
	i64 13268016443183773138, ; 718: 0xb82176a87a02b5d2 => com/google/android/material/navigation/NavigationBarMenuView
	i64 13289276415019534080, ; 719: 0xb86cfe7d67374700 => crc640ec207abc449b2ca/ShellContentFragment
	i64 13291089739636035741, ; 720: 0xb8736fb2f0d8509d => android/content/ComponentName
	i64 13311117679692485447, ; 721: 0xb8ba97011d7e1347 => android/widget/HorizontalScrollView
	i64 13328964012539637362, ; 722: 0xb8f9fe264763ee72 => crc6452ffdc5b34af3a0f/MauiStepper
	i64 13335777145830317192, ; 723: 0xb91232a87cfd1c88 => android/graphics/Point
	i64 13350193320460643475, ; 724: 0xb9456a17b4d96c93 => android/graphics/Region$Op
	i64 13392547762908668185, ; 725: 0xb9dbe33bcd9fa119 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor
	i64 13402681668680117407, ; 726: 0xb9ffe3f79b516c9f => android/view/ViewManager
	i64 13402779434266666368, ; 727: 0xba003ce26e602580 => mono/android/TypeManager
	i64 13428863503685738205, ; 728: 0xba5ce8351a655edd => androidx/appcompat/view/menu/MenuPresenter
	i64 13455380521827779074, ; 729: 0xbabb1d4b81414202 => crc645d80431ce5f73f11/RecyclerViewScrollListener_2
	i64 13481151543294994875, ; 730: 0xbb16abe7054ea9bb => androidx/navigation/NavInflater
	i64 13491848569179882038, ; 731: 0xbb3cacca71544236 => android/app/AlertDialog
	i64 13493236796125990997, ; 732: 0xbb419b603751d055 => android/graphics/Rect
	i64 13496056631819609460, ; 733: 0xbb4ba0006029a574 => androidx/loader/app/LoaderManager
	i64 13501119006686247638, ; 734: 0xbb5d9c345fcefad6 => android/content/IntentSender
	i64 13502560151794130917, ; 735: 0xbb62baeb1e089fe5 => javax/security/auth/Subject
	i64 13504893900460985028, ; 736: 0xbb6b057352510ac4 => androidx/activity/OnBackPressedDispatcher
	i64 13523980973848974312, ; 737: 0xbbaed50ae768d3e8 => crc6452ffdc5b34af3a0f/MauiPageControl
	i64 13538702551831216454, ; 738: 0xbbe3223d61930146 => androidx/core/text/PrecomputedTextCompat$Params
	i64 13549049598049389944, ; 739: 0xbc07e4d2cfe20d78 => crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper
	i64 13556576098032765635, ; 740: 0xbc22a222a5cb4ac3 => android/util/DisplayMetrics
	i64 13564741051355351458, ; 741: 0xbc3fa41dfc31c9a2 => crc640ec207abc449b2ca/ContainerView
	i64 13570449615737423646, ; 742: 0xbc53ec06b45d871e => androidx/fragment/app/FragmentResultListener
	i64 13664354974869333647, ; 743: 0xbda18a73e9eda68f => androidx/appcompat/app/AppCompatCallback
	i64 13667817128403725814, ; 744: 0xbdadd7435980edf6 => android/content/DialogInterface$OnCancelListener
	i64 13753163933648662796, ; 745: 0xbedd0dbaf2d7b10c => android/view/accessibility/AccessibilityWindowInfo
	i64 13768816776394003597, ; 746: 0xbf14a9e86667548d => crc64ba438d8f48cf7e75/ActivityLifecycleContextListener
	i64 13770727111868296170, ; 747: 0xbf1b735909c02bea => java/io/StringWriter
	i64 13780597133996308832, ; 748: 0xbf3e8414a49db960 => android/graphics/Xfermode
	i64 13789203013919682202, ; 749: 0xbf5d1715346dae9a => java/lang/RuntimeException
	i64 13791871322112145521, ; 750: 0xbf6691e51e643871 => mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor
	i64 13805562342397192842, ; 751: 0xbf9735ce2f182a8a => android/util/AttributeSet
	i64 13814726415558267663, ; 752: 0xbfb7c47b3c8e530f => androidx/savedstate/SavedStateRegistry$SavedStateProvider
	i64 13854972641976575186, ; 753: 0xc046c03609c4e4d2 => crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver
	i64 13877554026709814142, ; 754: 0xc096f9dc61548b7e => android/view/View$OnClickListener
	i64 13947259019881283147, ; 755: 0xc18e9e2ece62fe4b => androidx/core/view/WindowInsetsCompat$Type
	i64 13959986462581077347, ; 756: 0xc1bbd5b97b683563 => java/net/UnknownServiceException
	i64 13963521009268026143, ; 757: 0xc1c86460431feb1f => androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory
	i64 13975325537152167595, ; 758: 0xc1f2548816666eab => android/graphics/Typeface
	i64 13981492061668866838, ; 759: 0xc2083cf3f5b77b16 => crc64338477404e88479c/GradientStrokeDrawable
	i64 13999439648138060820, ; 760: 0xc248003011c9e414 => crc645d80431ce5f73f11/EdgeSnapHelper
	i64 14019895060012318725, ; 761: 0xc290ac46c849c005 => android/widget/SearchView
	i64 14024183407882682596, ; 762: 0xc29fe88193c640e4 => android/webkit/WebChromeClient$FileChooserParams
	i64 14031640676547298208, ; 763: 0xc2ba66da3d8603a0 => java/nio/channels/FileChannel
	i64 14043684570532002328, ; 764: 0xc2e530b5d431ba18 => androidx/appcompat/app/ActionBar$Tab
	i64 14047598317436139102, ; 765: 0xc2f3183e0a27f65e => android/graphics/drawable/DrawableWrapper
	i64 14048987852729596032, ; 766: 0xc2f808046fb9b880 => android/graphics/ColorFilter
	i64 14105780303820480374, ; 767: 0xc3c1cc7360ebdf76 => com/google/android/material/shape/MaterialShapeDrawable
	i64 14106376025425781447, ; 768: 0xc3c3ea419f9722c7 => androidx/appcompat/app/AlertDialog
	i64 14112586515800836564, ; 769: 0xc3d9faaa1846c9d4 => androidx/viewpager/widget/PagerAdapter
	i64 14116135994739045768, ; 770: 0xc3e696e58f86b588 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder
	i64 14146902927644867185, ; 771: 0xc453e5425a34ba71 => android/widget/CompoundButton$OnCheckedChangeListener
	i64 14155244942094649191, ; 772: 0xc4718846f2324767 => crc645d80431ce5f73f11/SingleSnapHelper
	i64 14160925941038085484, ; 773: 0xc485b71d9630756c => javax/net/ssl/KeyManagerFactory
	i64 14166708697631601657, ; 774: 0xc49a428086c4b3f9 => androidx/savedstate/SavedStateRegistry
	i64 14167891754637755728, ; 775: 0xc49e767c735e8550 => java/lang/Object
	i64 14180814796703042768, ; 776: 0xc4cc5feca7168cd0 => java/lang/ClassCastException
	i64 14206023932851353817, ; 777: 0xc525ef800c4d78d9 => mono/android/runtime/OutputStreamAdapter
	i64 14232617762048217248, ; 778: 0xc5846a726acc90a0 => androidx/viewpager2/widget/ViewPager2$PageTransformer
	i64 14253600974846093496, ; 779: 0xc5cef6915bdce8b8 => androidx/core/view/WindowInsetsControllerCompat
	i64 14254302629814136516, ; 780: 0xc5d174b822fceec4 => android/webkit/MimeTypeMap
	i64 14279287371309537477, ; 781: 0xc62a383594a058c5 => android/view/View$OnTouchListener
	i64 14284032202517437988, ; 782: 0xc63b139baf4ade24 => androidx/fragment/app/FragmentActivity
	i64 14296237994325564878, ; 783: 0xc66670b60c37ddce => android/content/SharedPreferences
	i64 14302633742771949387, ; 784: 0xc67d299c46700f4b => crc6452ffdc5b34af3a0f/ViewFragment
	i64 14328901088261815086, ; 785: 0xc6da7b9f3b8dbb2e => android/view/ViewParent
	i64 14348802445188264590, ; 786: 0xc7212fccf9b3f28e => android/widget/ImageView$ScaleType
	i64 14361620789319229198, ; 787: 0xc74eba044a3cdf0e => android/os/Parcel
	i64 14373035975141672420, ; 788: 0xc77748115a3ac5e4 => com/google/android/material/appbar/AppBarLayout$LayoutParams
	i64 14383499576874121735, ; 789: 0xc79c74a87a903a07 => androidx/navigation/NavGraph
	i64 14388002076679644731, ; 790: 0xc7ac73a86812a63b => android/graphics/drawable/shapes/OvalShape
	i64 14409437776328802396, ; 791: 0xc7f89b50272c405c => crc6452ffdc5b34af3a0f/LayoutViewGroup
	i64 14409679416056247518, ; 792: 0xc7f97715494a74de => androidx/customview/widget/Openable
	i64 14410455096550147880, ; 793: 0xc7fc388f7996c728 => android/graphics/drawable/InsetDrawable
	i64 14473677460123656210, ; 794: 0xc8dcd4f7143fa012 => mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor
	i64 14477118653081573042, ; 795: 0xc8e90eb6401bd6b2 => androidx/navigation/NavType
	i64 14501341618205132561, ; 796: 0xc93f1d5ecfb48711 => java/lang/Byte
	i64 14511787718764536802, ; 797: 0xc9643a0b20d623e2 => android/app/DatePickerDialog
	i64 14529413187006755165, ; 798: 0xc9a2d8503e69f15d => androidx/cardview/widget/CardView
	i64 14569790583249546864, ; 799: 0xca324b57666bae70 => crc64e1fb321c08285b90/CellAdapter
	i64 14580999150803139285, ; 800: 0xca5a1d7965e4bad5 => mono/android/view/View_OnLayoutChangeListenerImplementor
	i64 14640111878662023944, ; 801: 0xcb2c202fdfa06b08 => android/webkit/WebChromeClient
	i64 14646637314621902207, ; 802: 0xcb434f0954050d7f => androidx/navigation/NavArgument
	i64 14649586819325063784, ; 803: 0xcb4dc998681d7268 => mono/android/view/View_OnClickListenerImplementor
	i64 14684559126920293129, ; 804: 0xcbca08b94b4deb09 => java/lang/CharSequence
	i64 14696990417030334583, ; 805: 0xcbf632ea9269c877 => crc645d80431ce5f73f11/GroupableItemsViewAdapter_2
	i64 14717452127296789712, ; 806: 0xcc3ee4bbbe579cd0 => android/widget/TextView$OnEditorActionListener
	i64 14767308754462789278, ; 807: 0xccf0051256454e9e => mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor
	i64 14830759644181035942, ; 808: 0xcdd17151d49bfba6 => android/content/res/AssetManager
	i64 14839707784907493044, ; 809: 0xcdf13b9b32028eb4 => com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener
	i64 14871549625697939253, ; 810: 0xce625b977b51af35 => androidx/core/view/WindowInsetsCompat
	i64 14940408132235664607, ; 811: 0xcf56fe09e1439cdf => java/lang/Throwable
	i64 14958061161715232945, ; 812: 0xcf95b560189a70b1 => mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor
	i64 15015211024739412603, ; 813: 0xd060bedf7d1f2a7b => crc64e1fb321c08285b90/ListViewRenderer_Container
	i64 15069781826446509586, ; 814: 0xd1229eba5ffb4612 => com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener
	i64 15102224934851433618, ; 815: 0xd195e1902fddd492 => android/graphics/PointF
	i64 15108480622982719114, ; 816: 0xd1ac1b1414c1e68a => android/view/WindowInsetsAnimation$Bounds
	i64 15108754265133970823, ; 817: 0xd1ad13f45bfa7587 => mono/android/content/DialogInterface_OnDismissListenerImplementor
	i64 15142650489578038267, ; 818: 0xd22580641d31a3fb => java/lang/StackTraceElement
	i64 15163559008692216854, ; 819: 0xd26fc89413c62416 => androidx/recyclerview/widget/RecyclerView$ViewCacheExtension
	i64 15178898666151156562, ; 820: 0xd2a647ea65971b52 => javax/net/ssl/HostnameVerifier
	i64 15183122999177041308, ; 821: 0xd2b549ec9302d59c => org/xmlpull/v1/XmlPullParser
	i64 15200090388991477583, ; 822: 0xd2f191acddaa874f => com/google/android/material/bottomnavigation/BottomNavigationItemView
	i64 15223859190564664402, ; 823: 0xd34603463c2c3452 => android/text/Editable
	i64 15254143212594890638, ; 824: 0xd3b19a6e93a7878e => androidx/viewpager/widget/ViewPager$OnAdapterChangeListener
	i64 15281211929309566451, ; 825: 0xd411c5494ff555f3 => android/opengl/Matrix
	i64 15292011917245906584, ; 826: 0xd43823d1747b7e98 => com/google/android/material/appbar/HeaderScrollingViewBehavior
	i64 15295416057057826855, ; 827: 0xd4443bdd84bcd827 => android/widget/AdapterView$OnItemSelectedListener
	i64 15367873893566575642, ; 828: 0xd545a7e23b08f41a => android/widget/AbsoluteLayout
	i64 15402581295675135441, ; 829: 0xd5c0f61500cad5d1 => crc6452ffdc5b34af3a0f/SwipeViewPager
	i64 15406288353308370229, ; 830: 0xd5ce21a19e2ee535 => crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector
	i64 15446304586598055563, ; 831: 0xd65c4c2ef8a9fe8b => android/webkit/WebResourceRequest
	i64 15491531562149856067, ; 832: 0xd6fcf9e0ccb1c343 => mono/android/view/View_OnScrollChangeListenerImplementor
	i64 15510641966713668568, ; 833: 0xd740deb0983c03d8 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat
	i64 15514897124683647083, ; 834: 0xd74ffcbbc37f886b => mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor
	i64 15529409965027140022, ; 835: 0xd7838c15b8daa1b6 => android/app/UiModeManager
	i64 15545162226811407960, ; 836: 0xd7bb82aef8ea0e58 => androidx/core/view/ContentInfoCompat
	i64 15562956098342981803, ; 837: 0xd7faba1d88bb90ab => kotlin/jvm/internal/DefaultConstructorMarker
	i64 15580854786307338793, ; 838: 0xd83a50e092cb3229 => kotlin/coroutines/CoroutineContext
	i64 15625622630723498443, ; 839: 0xd8d95cfe9a9431cb => mono/android/text/TextWatcherImplementor
	i64 15633873768898914415, ; 840: 0xd8f6ad5c6a84686f => java/io/Writer
	i64 15645438581444444576, ; 841: 0xd91fc37f2a3001a0 => java/lang/Appendable
	i64 15650899170711101772, ; 842: 0xd93329dfadb0e14c => com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator
	i64 15655567004052913371, ; 843: 0xd943bf3e51e67cdb => androidx/lifecycle/LifecycleOwner
	i64 15662842236679988787, ; 844: 0xd95d98076a4ba633 => androidx/navigation/ui/NavigationUI
	i64 15695387359379628636, ; 845: 0xd9d137a547faa25c => crc640ec207abc449b2ca/ShellFlyoutRenderer
	i64 15696148966177826650, ; 846: 0xd9d3ec52aea4e75a => androidx/appcompat/widget/ScrollingTabContainerView
	i64 15699556301161391558, ; 847: 0xd9e00746adf865c6 => android/view/WindowMetrics
	i64 15735391017453652107, ; 848: 0xda5f56c2bd32888b => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer
	i64 15767615218119146656, ; 849: 0xdad1d2801f08fca0 => javax/net/ssl/SSLSessionContext
	i64 15792778596129101375, ; 850: 0xdb2b38759eaad63f => androidx/appcompat/widget/SwitchCompat
	i64 15795508579813667467, ; 851: 0xdb34eb5d7a6db28b => android/graphics/Paint$FontMetricsInt
	i64 15799365448008084158, ; 852: 0xdb429f2a951a2abe => android/os/LocaleList
	i64 15818982522861491288, ; 853: 0xdb8850cabf459458 => android/graphics/BlurMaskFilter
	i64 15822621356783831935, ; 854: 0xdb953e4aca9c0b7f => mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor
	i64 15827905324826524828, ; 855: 0xdba8040878cc7c9c => android/app/TimePickerDialog
	i64 15844004444849296506, ; 856: 0xdbe13618f2f3d47a => android/widget/ListView
	i64 15872432268820698417, ; 857: 0xdc46350d80815531 => androidx/appcompat/widget/SearchView$OnCloseListener
	i64 15879626577687273942, ; 858: 0xdc5fc43d10e6e1d6 => androidx/activity/FullyDrawnReporter
	i64 15880506401606549681, ; 859: 0xdc62e46f091340b1 => crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView
	i64 15888603495552893685, ; 860: 0xdc7fa8b2a175c2f5 => javax/net/ssl/TrustManager
	i64 15896143924811176167, ; 861: 0xdc9a72ada0da98e7 => java/net/SocketException
	i64 16000943973062282533, ; 862: 0xde0ec5c4514e0d25 => android/graphics/PorterDuffXfermode
	i64 16002286839467779661, ; 863: 0xde138b18c462a64d => android/os/Environment
	i64 16003229482241506982, ; 864: 0xde16e46ce4103ea6 => android/graphics/Bitmap
	i64 16025367657495699648, ; 865: 0xde658afa7c10a0c0 => android/graphics/drawable/DrawableContainer
	i64 16033914125125672261, ; 866: 0xde83e7f20b3bdd45 => mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor
	i64 16065288398357904941, ; 867: 0xdef35eae4653be2d => android/text/style/BulletSpan
	i64 16066423801151412293, ; 868: 0xdef76752d682d845 => android/runtime/XmlReaderPullParser
	i64 16092214954021753346, ; 869: 0xdf53083d8fb21202 => com/google/android/material/shape/ShapeAppearanceModel$Builder
	i64 16101147842785907581, ; 870: 0xdf72c4a7cd4d137d => android/webkit/WebViewClient
	i64 16118150644112224899, ; 871: 0xdfaf2c9cfa8af283 => java/util/Locale
	i64 16122524016460970183, ; 872: 0xdfbeb62c13dc38c7 => com/google/android/material/shape/ShapePath
	i64 16135033049177225665, ; 873: 0xdfeb2712376579c1 => androidx/recyclerview/widget/LinearSmoothScroller
	i64 16169431511264197546, ; 874: 0xe0655c4a48e8fbaa => android/graphics/BitmapShader
	i64 16170603982710859185, ; 875: 0xe06986a590ff65b1 => android/view/ViewTreeObserver
	i64 16182470099411896328, ; 876: 0xe093aed127d38808 => android/view/animation/BaseInterpolator
	i64 16207444841424110295, ; 877: 0xe0ec693669d242d7 => android/view/ScaleGestureDetector
	i64 16212291146831355869, ; 878: 0xe0fda0e6d217dfdd => androidx/recyclerview/widget/RecyclerView$ViewHolder
	i64 16225173139187187041, ; 879: 0xe12b650164763d61 => com/microsoft/maui/PlatformWrapperView
	i64 16314168557433322311, ; 880: 0xe26791dde7a8fb47 => android/view/ContextThemeWrapper
	i64 16349046224998423095, ; 881: 0xe2e37aebb178da37 => com/microsoft/maui/PlatformContentViewGroup
	i64 16394649269595106848, ; 882: 0xe3857ea5eb556e20 => com/google/android/material/imageview/ShapeableImageView
	i64 16397303622013219778, ; 883: 0xe38eecc48052f3c2 => com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener
	i64 16403969118692566536, ; 884: 0xe3a69b006225e608 => crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener
	i64 16413106091129197494, ; 885: 0xe3c711078e8e53b6 => crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment
	i64 16413651262945443612, ; 886: 0xe3c900dc43013f1c => android/content/DialogInterface$OnClickListener
	i64 16419411156664895107, ; 887: 0xe3dd77740618c683 => mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor
	i64 16422815340789202047, ; 888: 0xe3e98f8a67937c7f => android/view/View$DragShadowBuilder
	i64 16453243756006384025, ; 889: 0xe455aa05e7aca199 => androidx/fragment/app/FragmentHostCallback
	i64 16473535933434112898, ; 890: 0xe49dc1a6a2f92b82 => androidx/recyclerview/widget/RecyclerView$OnScrollListener
	i64 16480206070542885578, ; 891: 0xe4b5741af3f1e2ca => android/view/SearchEvent
	i64 16499887184897512773, ; 892: 0xe4fb5ff979d61545 => crc645d80431ce5f73f11/ItemsViewAdapter_2
	i64 16510466397656947047, ; 893: 0xe520f5b6645d9967 => android/provider/MediaStore$Audio
	i64 16518950802127089170, ; 894: 0xe53f1a3bbef06e12 => android/graphics/MaskFilter
	i64 16530905335535283041, ; 895: 0xe56992d17430ab61 => androidx/loader/app/LoaderManager$LoaderCallbacks
	i64 16542847110558016359, ; 896: 0xe593ffcc9e686367 => android/app/Application
	i64 16566688651954437030, ; 897: 0xe5e8b38e0c3d3ba6 => android/graphics/DashPathEffect
	i64 16603717322881265010, ; 898: 0xe66c40ef55566d72 => mono/android/runtime/JavaObject
	i64 16618397473501528129, ; 899: 0xe6a06874404ec041 => android/graphics/Path
	i64 16645540958114363132, ; 900: 0xe700d74f3e9f36fc => java/util/function/Predicate
	i64 16691018530259375973, ; 901: 0xe7a268eba3929765 => com/google/android/material/appbar/ViewOffsetBehavior
	i64 16700678259308947609, ; 902: 0xe7c4ba649232e899 => androidx/fragment/app/strictmode/FragmentStrictMode
	i64 16703917145489859151, ; 903: 0xe7d03c24867ae24f => crc64e1fb321c08285b90/ViewRenderer_2
	i64 16723123314454325679, ; 904: 0xe814780d351a69af => mono/android/runtime/InputStreamAdapter
	i64 16732048506261937943, ; 905: 0xe8342d775c591f17 => android/graphics/PorterDuff$Mode
	i64 16744029422396892954, ; 906: 0xe85ebe0bc6a7e71a => crc64a096dc44ad241142/PlatformTicker_DurationScaleListener
	i64 16745733288560112273, ; 907: 0xe864cbb4080f3291 => crc645d80431ce5f73f11/ItemContentView
	i64 16753298404850265843, ; 908: 0xe87fac22ed37eef3 => com/google/android/material/shape/ShapeAppearanceModel
	i64 16771336647146321301, ; 909: 0xe8bfc1d27da5b595 => com/google/android/material/tabs/TabLayout$OnTabSelectedListener
	i64 16832017439803262409, ; 910: 0xe99756ae80a745c9 => android/view/ViewGroup
	i64 16878061737430998064, ; 911: 0xea3aebb9f4afdc30 => android/content/SharedPreferences$Editor
	i64 16916694887332905051, ; 912: 0xeac42c5f1d25005b => androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks
	i64 16940674673295938010, ; 913: 0xeb195ddc1d42d1da => androidx/core/view/OnReceiveContentListener
	i64 16950392789332311313, ; 914: 0xeb3be46f537ebd11 => android/content/pm/ShortcutManager
	i64 16953366867418781877, ; 915: 0xeb467557d75f98b5 => android/widget/FrameLayout$LayoutParams
	i64 16977429381850492614, ; 916: 0xeb9bf212907a6ec6 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor
	i64 16987790575813017173, ; 917: 0xebc0c18606103e55 => android/text/method/BaseKeyListener
	i64 16999219307367050470, ; 918: 0xebe95be4f2932ce6 => crc645d80431ce5f73f11/MauiRecyclerView_3
	i64 17053113564791162236, ; 919: 0xeca8d46f97c5c57c => androidx/lifecycle/Observer
	i64 17068958298440960180, ; 920: 0xece11f23208788b4 => android/util/SizeF
	i64 17074376177321076143, ; 921: 0xecf45eab5a9d65af => android/text/style/StrikethroughSpan
	i64 17125416866214736517, ; 922: 0xeda9b3e7cd367285 => java/io/OutputStream
	i64 17149437416712524469, ; 923: 0xedff0a7808f152b5 => androidx/recyclerview/widget/RecyclerView$OnItemTouchListener
	i64 17159678788829724311, ; 924: 0xee236cf14c003e97 => crc645d80431ce5f73f11/StartSingleSnapHelper
	i64 17163176023095185573, ; 925: 0xee2fd9a89a1710a5 => android/graphics/Matrix
	i64 17167329807099043935, ; 926: 0xee3e9b80ce1d205f => android/view/animation/Animation$AnimationListener
	i64 17184852587379630472, ; 927: 0xee7cdc6104372188 => crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter
	i64 17259862802202170027, ; 928: 0xef8759c59d3d12ab => androidx/appcompat/widget/SearchView
	i64 17296586735193580360, ; 929: 0xf009d1fe91f26348 => android/content/pm/ApplicationInfo
	i64 17308034145719428191, ; 930: 0xf0327d5a87f0245f => android/webkit/WebResourceError
	i64 17312589003384955623, ; 931: 0xf042abf8f91822e7 => android/view/KeyEvent
	i64 17353493063401139565, ; 932: 0xf0d3fdff983aed6d => androidx/core/widget/NestedScrollView
	i64 17372832774230194541, ; 933: 0xf118b35cea41396d => androidx/core/view/ScrollingView
	i64 17400847014138816993, ; 934: 0xf17c3a2a6ca929e1 => crc6488302ad6e9e4df1a/ImageLoaderResultCallback
	i64 17405205501308712532, ; 935: 0xf18bb62fcc2e3654 => androidx/loader/content/Loader$OnLoadCanceledListener
	i64 17407046679165606066, ; 936: 0xf19240ba6c4f18b2 => mono/android/widget/AdapterView_OnItemClickListenerImplementor
	i64 17438622696042373437, ; 937: 0xf2026ef2c1aba13d => com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback
	i64 17448877928212474867, ; 938: 0xf226de0710422bf3 => androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action
	i64 17485531046532206351, ; 939: 0xf2a915d8319dcf0f => android/database/CharArrayBuffer
	i64 17490083481060646178, ; 940: 0xf2b94242748c1d22 => java/util/Enumeration
	i64 17498018958444438720, ; 941: 0xf2d57388c321a4c0 => java/lang/Double
	i64 17519581955836770800, ; 942: 0xf3220ef752fe79f0 => java/security/KeyStore
	i64 17542023464739623563, ; 943: 0xf371c966495f528b => android/view/Display
	i64 17546585317893749861, ; 944: 0xf381fe617e243c65 => androidx/viewpager2/adapter/FragmentStateAdapter
	i64 17568025852736065805, ; 945: 0xf3ce2a6f0536510d => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter
	i64 17574185961105681076, ; 946: 0xf3e40d05045c6ab4 => com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener
	i64 17596677532905382890, ; 947: 0xf433f4fc27ec23ea => crc64e1fb321c08285b90/GroupedListViewAdapter
	i64 17602339105264995485, ; 948: 0xf4481227b1498c9d => android/widget/EdgeEffect
	i64 17605619666541934257, ; 949: 0xf453b9cee2dcf6b1 => java/net/Proxy$Type
	i64 17645817129531856090, ; 950: 0xf4e28930113fd4da => java/io/Closeable
	i64 17650799501576161010, ; 951: 0xf4f43ca0f516c6f2 => androidx/lifecycle/MutableLiveData
	i64 17660745169059311233, ; 952: 0xf51792291e79ee81 => androidx/activity/result/ActivityResultLauncher
	i64 17671382671565006709, ; 953: 0xf53d5ce9aca02775 => androidx/fragment/app/FragmentTransaction
	i64 17672504001507146299, ; 954: 0xf54158c1a580ba3b => androidx/appcompat/graphics/drawable/DrawerArrowDrawable
	i64 17687065826521364603, ; 955: 0xf57514a8bcc1b87b => android/text/style/BackgroundColorSpan
	i64 17718601761205044311, ; 956: 0xf5e51e6cb53cc457 => com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior
	i64 17749971997883255411, ; 957: 0xf654917d1af64a73 => android/graphics/drawable/shapes/RectShape
	i64 17762915657059999855, ; 958: 0xf6828dad9a49206f => com/google/android/material/navigation/NavigationView
	i64 17770310772590916714, ; 959: 0xf69cd37f1c94346a => androidx/activity/result/ActivityResultRegistry
	i64 17786854109604896016, ; 960: 0xf6d79992eab25d10 => android/graphics/BitmapFactory
	i64 17800186900405514025, ; 961: 0xf706f7ad2e3b6f29 => android/util/SparseArray
	i64 17815208443851966511, ; 962: 0xf73c55b0cf56082f => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener
	i64 17932258799253396161, ; 963: 0xf8dc2e5e65df1ac1 => crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener
	i64 17958397297252185645, ; 964: 0xf9390b31b60d362d => android/view/WindowInsets
	i64 17966509771654086234, ; 965: 0xf955dd725906be5a => crc64338477404e88479c/InnerScaleListener
	i64 17984345105063787081, ; 966: 0xf9953a96815cba49 => android/view/GestureDetector$OnGestureListener
	i64 17991546793642763742, ; 967: 0xf9aed07c4ae525de => crc64e1fb321c08285b90/TableViewModelRenderer
	i64 17992660388602075186, ; 968: 0xf9b2c54b52de5832 => android/webkit/WebView
	i64 17994707914779561645, ; 969: 0xf9ba0b8229588ead => androidx/navigation/ui/AppBarConfiguration
	i64 18006280295024823601, ; 970: 0xf9e32886e7120d31 => android/view/ContentInfo
	i64 18013508180779119969, ; 971: 0xf9fcd64031eeb561 => crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2
	i64 18018038416899488951, ; 972: 0xfa0cee79fca2bcb7 => java/text/Format
	i64 18028883106873553108, ; 973: 0xfa3375aa223d30d4 => mono/android/animation/AnimatorEventDispatcher
	i64 18060209084809406592, ; 974: 0xfaa2c079bd58e880 => android/view/GestureDetector$OnDoubleTapListener
	i64 18097369694249881732, ; 975: 0xfb26c5da5aaf1084 => androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat
	i64 18102991096258414070, ; 976: 0xfb3abe7d008ac5f6 => mono/android/content/DialogInterface_OnShowListenerImplementor
	i64 18213852175163534091, ; 977: 0xfcc49a0d5c192b0b => android/content/SharedPreferences$OnSharedPreferenceChangeListener
	i64 18216578448169670053, ; 978: 0xfcce4995423095a5 => javax/net/ssl/SSLSocketFactory
	i64 18261049205373092432, ; 979: 0xfd6c478048314250 => androidx/core/view/accessibility/AccessibilityViewCommand
	i64 18266445483201684091, ; 980: 0xfd7f73631f46627b => androidx/recyclerview/widget/RecyclerView$AdapterDataObserver
	i64 18315601916551362550, ; 981: 0xfe2e16e72381f7f6 => androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams
	i64 18323076787180290332, ; 982: 0xfe48a5421416411c => android/widget/BaseAdapter
	i64 18330448901237264806, ; 983: 0xfe62d62823b251a6 => androidx/recyclerview/widget/ItemTouchUIUtil
	i64 18335874173895919002, ; 984: 0xfe761c69dd53459a => androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior
	i64 18340490965821538680, ; 985: 0xfe86835c800dc178 => com/microsoft/maui/BuildConfig
	i64 18360177796358405119, ; 986: 0xfecc746decf4fbff => androidx/core/view/ViewCompat
	i64 18377761106826033935, ; 987: 0xff0aec5b6b5afb0f => android/view/animation/AnimationSet
	i64 18401512074820890716, ; 988: 0xff5f4dbc95c2b05c => java/lang/Float
	i64 18401692079723824300, ; 989: 0xff5ff1733e0ec4ac => java/util/Collection
	i64 18410237031191181095 ; 990: 0xff7e4d09cae47727 => android/graphics/LinearGradient
], align 16

@module0_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 189; uint32_t java_map_index (0xbd)
	} ; 0
], align 4

@module1_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 680; uint32_t java_map_index (0x2a8)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 179; uint32_t java_map_index (0xb3)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 345; uint32_t java_map_index (0x159)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 591; uint32_t java_map_index (0x24f)
	} ; 3
], align 16

@module1_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 179; uint32_t java_map_index (0xb3)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 345; uint32_t java_map_index (0x159)
	} ; 1
], align 16

@module2_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554488, ; uint32_t type_token_id (0x2000038)
		i32 746; uint32_t java_map_index (0x2ea)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554489, ; uint32_t type_token_id (0x2000039)
		i32 441; uint32_t java_map_index (0x1b9)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 193; uint32_t java_map_index (0xc1)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 753; uint32_t java_map_index (0x2f1)
	} ; 3
], align 16

@module3_managed_to_java = internal dso_local constant [41 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 586; uint32_t java_map_index (0x24a)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 690; uint32_t java_map_index (0x2b2)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 983; uint32_t java_map_index (0x3d7)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 452; uint32_t java_map_index (0x1c4)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 507; uint32_t java_map_index (0x1fb)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 587; uint32_t java_map_index (0x24b)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 873; uint32_t java_map_index (0x369)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 581; uint32_t java_map_index (0x245)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 472; uint32_t java_map_index (0x1d8)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 584; uint32_t java_map_index (0x248)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 631; uint32_t java_map_index (0x277)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 122; uint32_t java_map_index (0x7a)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 475; uint32_t java_map_index (0x1db)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 980; uint32_t java_map_index (0x3d4)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 405; uint32_t java_map_index (0x195)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 757; uint32_t java_map_index (0x2f5)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 26; uint32_t java_map_index (0x1a)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 406; uint32_t java_map_index (0x196)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 226; uint32_t java_map_index (0xe2)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 635; uint32_t java_map_index (0x27b)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 292; uint32_t java_map_index (0x124)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 185; uint32_t java_map_index (0xb9)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 289; uint32_t java_map_index (0x121)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 291; uint32_t java_map_index (0x123)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 401; uint32_t java_map_index (0x191)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 263; uint32_t java_map_index (0x107)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 400; uint32_t java_map_index (0x190)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 923; uint32_t java_map_index (0x39b)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 265; uint32_t java_map_index (0x109)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 890; uint32_t java_map_index (0x37a)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 353; uint32_t java_map_index (0x161)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 714; uint32_t java_map_index (0x2ca)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 496; uint32_t java_map_index (0x1f0)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 437; uint32_t java_map_index (0x1b5)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 15; uint32_t java_map_index (0xf)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 938; uint32_t java_map_index (0x3aa)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 375; uint32_t java_map_index (0x177)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 819; uint32_t java_map_index (0x333)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 878; uint32_t java_map_index (0x36e)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 372; uint32_t java_map_index (0x174)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 541; uint32_t java_map_index (0x21d)
	} ; 40
], align 16

@module3_managed_to_java_duplicates = internal dso_local constant [21 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 690; uint32_t java_map_index (0x2b2)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 983; uint32_t java_map_index (0x3d7)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 507; uint32_t java_map_index (0x1fb)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 472; uint32_t java_map_index (0x1d8)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 122; uint32_t java_map_index (0x7a)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 980; uint32_t java_map_index (0x3d4)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 405; uint32_t java_map_index (0x195)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 406; uint32_t java_map_index (0x196)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 26; uint32_t java_map_index (0x1a)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 635; uint32_t java_map_index (0x27b)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 185; uint32_t java_map_index (0xb9)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 292; uint32_t java_map_index (0x124)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 401; uint32_t java_map_index (0x191)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 400; uint32_t java_map_index (0x190)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 923; uint32_t java_map_index (0x39b)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 890; uint32_t java_map_index (0x37a)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 496; uint32_t java_map_index (0x1f0)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 15; uint32_t java_map_index (0xf)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 819; uint32_t java_map_index (0x333)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 878; uint32_t java_map_index (0x36e)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 541; uint32_t java_map_index (0x21d)
	} ; 20
], align 16

@module4_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 792; uint32_t java_map_index (0x318)
	} ; 0
], align 4

@module4_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 792; uint32_t java_map_index (0x318)
	} ; 0
], align 4

@module5_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 287; uint32_t java_map_index (0x11f)
	} ; 0
], align 4

@module6_managed_to_java = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 347; uint32_t java_map_index (0x15b)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 653; uint32_t java_map_index (0x28d)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 403; uint32_t java_map_index (0x193)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 447; uint32_t java_map_index (0x1bf)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 374; uint32_t java_map_index (0x176)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 730; uint32_t java_map_index (0x2da)
	} ; 5
], align 16

@module6_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 653; uint32_t java_map_index (0x28d)
	} ; 0
], align 4

@module7_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 529; uint32_t java_map_index (0x211)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 268; uint32_t java_map_index (0x10c)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 600; uint32_t java_map_index (0x258)
	} ; 2
], align 16

@module8_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 774; uint32_t java_map_index (0x306)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 752; uint32_t java_map_index (0x2f0)
	} ; 1
], align 16

@module8_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 752; uint32_t java_map_index (0x2f0)
	} ; 0
], align 4

@module9_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 703; uint32_t java_map_index (0x2bf)
	} ; 0
], align 4

@module10_managed_to_java = internal dso_local constant [12 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 647; uint32_t java_map_index (0x287)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 521; uint32_t java_map_index (0x209)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 858; uint32_t java_map_index (0x35a)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 319; uint32_t java_map_index (0x13f)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 736; uint32_t java_map_index (0x2e0)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 518; uint32_t java_map_index (0x206)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 750; uint32_t java_map_index (0x2ee)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 952; uint32_t java_map_index (0x3b8)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 959; uint32_t java_map_index (0x3bf)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 713; uint32_t java_map_index (0x2c9)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 266; uint32_t java_map_index (0x10a)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 254; uint32_t java_map_index (0xfe)
	} ; 11
], align 16

@module10_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 319; uint32_t java_map_index (0x13f)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 518; uint32_t java_map_index (0x206)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 952; uint32_t java_map_index (0x3b8)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 959; uint32_t java_map_index (0x3bf)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 713; uint32_t java_map_index (0x2c9)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 266; uint32_t java_map_index (0x10a)
	} ; 5
], align 16

@module11_managed_to_java = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 279; uint32_t java_map_index (0x117)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 457; uint32_t java_map_index (0x1c9)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 837; uint32_t java_map_index (0x345)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 440; uint32_t java_map_index (0x1b8)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 283; uint32_t java_map_index (0x11b)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 57; uint32_t java_map_index (0x39)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 5; uint32_t java_map_index (0x5)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 343; uint32_t java_map_index (0x157)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 838; uint32_t java_map_index (0x346)
	} ; 8
], align 16

@module11_managed_to_java_duplicates = internal dso_local constant [8 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 279; uint32_t java_map_index (0x117)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 457; uint32_t java_map_index (0x1c9)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 440; uint32_t java_map_index (0x1b8)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 283; uint32_t java_map_index (0x11b)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 57; uint32_t java_map_index (0x39)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 5; uint32_t java_map_index (0x5)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 343; uint32_t java_map_index (0x157)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 838; uint32_t java_map_index (0x346)
	} ; 7
], align 16

@module12_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 798; uint32_t java_map_index (0x31e)
	} ; 0
], align 4

@module13_managed_to_java = internal dso_local constant [106 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 321; uint32_t java_map_index (0x141)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 356; uint32_t java_map_index (0x164)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 446; uint32_t java_map_index (0x1be)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 21; uint32_t java_map_index (0x15)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 238; uint32_t java_map_index (0xee)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 398; uint32_t java_map_index (0x18e)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 535; uint32_t java_map_index (0x217)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 759; uint32_t java_map_index (0x2f7)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33555230, ; uint32_t type_token_id (0x200031e)
		i32 332; uint32_t java_map_index (0x14c)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33555231, ; uint32_t type_token_id (0x200031f)
		i32 965; uint32_t java_map_index (0x3c5)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 46; uint32_t java_map_index (0x2e)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 562; uint32_t java_map_index (0x232)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33555237, ; uint32_t type_token_id (0x2000325)
		i32 393; uint32_t java_map_index (0x189)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33555240, ; uint32_t type_token_id (0x2000328)
		i32 152; uint32_t java_map_index (0x98)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33555254, ; uint32_t type_token_id (0x2000336)
		i32 741; uint32_t java_map_index (0x2e5)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33555255, ; uint32_t type_token_id (0x2000337)
		i32 573; uint32_t java_map_index (0x23d)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33555269, ; uint32_t type_token_id (0x2000345)
		i32 719; uint32_t java_map_index (0x2cf)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 95; uint32_t java_map_index (0x5f)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 945; uint32_t java_map_index (0x3b1)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 845; uint32_t java_map_index (0x34d)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33555274, ; uint32_t type_token_id (0x200034a)
		i32 259; uint32_t java_map_index (0x103)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 116; uint32_t java_map_index (0x74)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33555276, ; uint32_t type_token_id (0x200034c)
		i32 606; uint32_t java_map_index (0x25e)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 217; uint32_t java_map_index (0xd9)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 275; uint32_t java_map_index (0x113)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 676; uint32_t java_map_index (0x2a4)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33555280, ; uint32_t type_token_id (0x2000350)
		i32 143; uint32_t java_map_index (0x8f)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 83; uint32_t java_map_index (0x53)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33555282, ; uint32_t type_token_id (0x2000352)
		i32 74; uint32_t java_map_index (0x4a)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33555283, ; uint32_t type_token_id (0x2000353)
		i32 643; uint32_t java_map_index (0x283)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33555284, ; uint32_t type_token_id (0x2000354)
		i32 681; uint32_t java_map_index (0x2a9)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33555287, ; uint32_t type_token_id (0x2000357)
		i32 658; uint32_t java_map_index (0x292)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33555297, ; uint32_t type_token_id (0x2000361)
		i32 304; uint32_t java_map_index (0x130)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 178; uint32_t java_map_index (0xb2)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33555299, ; uint32_t type_token_id (0x2000363)
		i32 805; uint32_t java_map_index (0x325)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33555300, ; uint32_t type_token_id (0x2000364)
		i32 892; uint32_t java_map_index (0x37c)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33555301, ; uint32_t type_token_id (0x2000365)
		i32 971; uint32_t java_map_index (0x3cb)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33555302, ; uint32_t type_token_id (0x2000366)
		i32 336; uint32_t java_map_index (0x150)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33555303, ; uint32_t type_token_id (0x2000367)
		i32 48; uint32_t java_map_index (0x30)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33555304, ; uint32_t type_token_id (0x2000368)
		i32 675; uint32_t java_map_index (0x2a3)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 207; uint32_t java_map_index (0xcf)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33555307, ; uint32_t type_token_id (0x200036b)
		i32 638; uint32_t java_map_index (0x27e)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33555308, ; uint32_t type_token_id (0x200036c)
		i32 293; uint32_t java_map_index (0x125)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33555312, ; uint32_t type_token_id (0x2000370)
		i32 907; uint32_t java_map_index (0x38b)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33555324, ; uint32_t type_token_id (0x200037c)
		i32 256; uint32_t java_map_index (0x100)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33555325, ; uint32_t type_token_id (0x200037d)
		i32 918; uint32_t java_map_index (0x396)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 533; uint32_t java_map_index (0x215)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33555328, ; uint32_t type_token_id (0x2000380)
		i32 729; uint32_t java_map_index (0x2d9)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 709; uint32_t java_map_index (0x2c5)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 415; uint32_t java_map_index (0x19f)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 228; uint32_t java_map_index (0xe4)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 232; uint32_t java_map_index (0xe8)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33555333, ; uint32_t type_token_id (0x2000385)
		i32 141; uint32_t java_map_index (0x8d)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 338; uint32_t java_map_index (0x152)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33555335, ; uint32_t type_token_id (0x2000387)
		i32 760; uint32_t java_map_index (0x2f8)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33555336, ; uint32_t type_token_id (0x2000388)
		i32 705; uint32_t java_map_index (0x2c1)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 410; uint32_t java_map_index (0x19a)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 77; uint32_t java_map_index (0x4d)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 772; uint32_t java_map_index (0x304)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 924; uint32_t java_map_index (0x39c)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33555342, ; uint32_t type_token_id (0x200038e)
		i32 250; uint32_t java_map_index (0xfa)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 555; uint32_t java_map_index (0x22b)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33555344, ; uint32_t type_token_id (0x2000390)
		i32 373; uint32_t java_map_index (0x175)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33555346, ; uint32_t type_token_id (0x2000392)
		i32 368; uint32_t java_map_index (0x170)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33555354, ; uint32_t type_token_id (0x200039a)
		i32 43; uint32_t java_map_index (0x2b)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 610; uint32_t java_map_index (0x262)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33555356, ; uint32_t type_token_id (0x200039c)
		i32 903; uint32_t java_map_index (0x387)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33555357, ; uint32_t type_token_id (0x200039d)
		i32 288; uint32_t java_map_index (0x120)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 715; uint32_t java_map_index (0x2cb)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33555359, ; uint32_t type_token_id (0x200039f)
		i32 799; uint32_t java_map_index (0x31f)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33555362, ; uint32_t type_token_id (0x20003a2)
		i32 296; uint32_t java_map_index (0x128)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33555363, ; uint32_t type_token_id (0x20003a3)
		i32 0; uint32_t java_map_index (0x0)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33555365, ; uint32_t type_token_id (0x20003a5)
		i32 379; uint32_t java_map_index (0x17b)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 947; uint32_t java_map_index (0x3b3)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 524; uint32_t java_map_index (0x20c)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33555369, ; uint32_t type_token_id (0x20003a9)
		i32 215; uint32_t java_map_index (0xd7)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 34; uint32_t java_map_index (0x22)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 967; uint32_t java_map_index (0x3c7)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33555376, ; uint32_t type_token_id (0x20003b0)
		i32 579; uint32_t java_map_index (0x243)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33555531, ; uint32_t type_token_id (0x200044b)
		i32 135; uint32_t java_map_index (0x87)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33555707, ; uint32_t type_token_id (0x20004fb)
		i32 325; uint32_t java_map_index (0x145)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33555786, ; uint32_t type_token_id (0x200054a)
		i32 685; uint32_t java_map_index (0x2ad)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33555792, ; uint32_t type_token_id (0x2000550)
		i32 285; uint32_t java_map_index (0x11d)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33555803, ; uint32_t type_token_id (0x200055b)
		i32 70; uint32_t java_map_index (0x46)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33555813, ; uint32_t type_token_id (0x2000565)
		i32 75; uint32_t java_map_index (0x4b)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33555815, ; uint32_t type_token_id (0x2000567)
		i32 770; uint32_t java_map_index (0x302)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33555816, ; uint32_t type_token_id (0x2000568)
		i32 848; uint32_t java_map_index (0x350)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33555823, ; uint32_t type_token_id (0x200056f)
		i32 739; uint32_t java_map_index (0x2e3)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33555826, ; uint32_t type_token_id (0x2000572)
		i32 927; uint32_t java_map_index (0x39f)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33555827, ; uint32_t type_token_id (0x2000573)
		i32 592; uint32_t java_map_index (0x250)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33555828, ; uint32_t type_token_id (0x2000574)
		i32 362; uint32_t java_map_index (0x16a)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33555831, ; uint32_t type_token_id (0x2000577)
		i32 294; uint32_t java_map_index (0x126)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33555835, ; uint32_t type_token_id (0x200057b)
		i32 167; uint32_t java_map_index (0xa7)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33555836, ; uint32_t type_token_id (0x200057c)
		i32 18; uint32_t java_map_index (0x12)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33555845, ; uint32_t type_token_id (0x2000585)
		i32 92; uint32_t java_map_index (0x5c)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33555848, ; uint32_t type_token_id (0x2000588)
		i32 963; uint32_t java_map_index (0x3c3)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33555851, ; uint32_t type_token_id (0x200058b)
		i32 560; uint32_t java_map_index (0x230)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33555856, ; uint32_t type_token_id (0x2000590)
		i32 813; uint32_t java_map_index (0x32d)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33555857, ; uint32_t type_token_id (0x2000591)
		i32 280; uint32_t java_map_index (0x118)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33555858, ; uint32_t type_token_id (0x2000592)
		i32 262; uint32_t java_map_index (0x106)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33555859, ; uint32_t type_token_id (0x2000593)
		i32 830; uint32_t java_map_index (0x33e)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33555861, ; uint32_t type_token_id (0x2000595)
		i32 352; uint32_t java_map_index (0x160)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33555862, ; uint32_t type_token_id (0x2000596)
		i32 309; uint32_t java_map_index (0x135)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33555955, ; uint32_t type_token_id (0x20005f3)
		i32 110; uint32_t java_map_index (0x6e)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33555957, ; uint32_t type_token_id (0x20005f5)
		i32 603; uint32_t java_map_index (0x25b)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33555958, ; uint32_t type_token_id (0x20005f6)
		i32 666; uint32_t java_map_index (0x29a)
	} ; 105
], align 16

@module14_managed_to_java = internal dso_local constant [56 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 954; uint32_t java_map_index (0x3ba)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 768; uint32_t java_map_index (0x300)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 339; uint32_t java_map_index (0x153)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 725; uint32_t java_map_index (0x2d5)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 916; uint32_t java_map_index (0x394)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 359; uint32_t java_map_index (0x167)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 198; uint32_t java_map_index (0xc6)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 274; uint32_t java_map_index (0x112)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 599; uint32_t java_map_index (0x257)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 620; uint32_t java_map_index (0x26c)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 624; uint32_t java_map_index (0x270)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 764; uint32_t java_map_index (0x2fc)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 98; uint32_t java_map_index (0x62)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 494; uint32_t java_map_index (0x1ee)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 571; uint32_t java_map_index (0x23b)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 377; uint32_t java_map_index (0x179)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 697; uint32_t java_map_index (0x2b9)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 229; uint32_t java_map_index (0xe5)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 743; uint32_t java_map_index (0x2e7)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 186; uint32_t java_map_index (0xba)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 634; uint32_t java_map_index (0x27a)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 417; uint32_t java_map_index (0x1a1)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 651; uint32_t java_map_index (0x28b)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 642; uint32_t java_map_index (0x282)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 386; uint32_t java_map_index (0x182)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 171; uint32_t java_map_index (0xab)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 427; uint32_t java_map_index (0x1ab)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 50; uint32_t java_map_index (0x32)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 608; uint32_t java_map_index (0x260)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 113; uint32_t java_map_index (0x71)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 344; uint32_t java_map_index (0x158)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 627; uint32_t java_map_index (0x273)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 204; uint32_t java_map_index (0xcc)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 312; uint32_t java_map_index (0x138)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 295; uint32_t java_map_index (0x127)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 846; uint32_t java_map_index (0x34e)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 435; uint32_t java_map_index (0x1b3)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 928; uint32_t java_map_index (0x3a0)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 857; uint32_t java_map_index (0x359)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 382; uint32_t java_map_index (0x17e)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 539; uint32_t java_map_index (0x21b)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 385; uint32_t java_map_index (0x181)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 281; uint32_t java_map_index (0x119)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 498; uint32_t java_map_index (0x1f2)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 850; uint32_t java_map_index (0x352)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 172; uint32_t java_map_index (0xac)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 55; uint32_t java_map_index (0x37)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 270; uint32_t java_map_index (0x10e)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554575, ; uint32_t type_token_id (0x200008f)
		i32 358; uint32_t java_map_index (0x166)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 443; uint32_t java_map_index (0x1bb)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 9; uint32_t java_map_index (0x9)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 297; uint32_t java_map_index (0x129)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 728; uint32_t java_map_index (0x2d8)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 64; uint32_t java_map_index (0x40)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 474; uint32_t java_map_index (0x1da)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 190; uint32_t java_map_index (0xbe)
	} ; 55
], align 16

@module14_managed_to_java_duplicates = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 599; uint32_t java_map_index (0x257)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 624; uint32_t java_map_index (0x270)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 764; uint32_t java_map_index (0x2fc)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 98; uint32_t java_map_index (0x62)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 198; uint32_t java_map_index (0xc6)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 571; uint32_t java_map_index (0x23b)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 697; uint32_t java_map_index (0x2b9)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 743; uint32_t java_map_index (0x2e7)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 651; uint32_t java_map_index (0x28b)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 204; uint32_t java_map_index (0xcc)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 857; uint32_t java_map_index (0x359)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 539; uint32_t java_map_index (0x21b)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 281; uint32_t java_map_index (0x119)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 358; uint32_t java_map_index (0x166)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554577, ; uint32_t type_token_id (0x2000091)
		i32 270; uint32_t java_map_index (0x10e)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 9; uint32_t java_map_index (0x9)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 297; uint32_t java_map_index (0x129)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 728; uint32_t java_map_index (0x2d8)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 64; uint32_t java_map_index (0x40)
	} ; 18
], align 16

@module15_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 111; uint32_t java_map_index (0x6f)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 935; uint32_t java_map_index (0x3a7)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 341; uint32_t java_map_index (0x155)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 733; uint32_t java_map_index (0x2dd)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 895; uint32_t java_map_index (0x37f)
	} ; 4
], align 16

@module15_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 935; uint32_t java_map_index (0x3a7)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 341; uint32_t java_map_index (0x155)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 895; uint32_t java_map_index (0x37f)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 733; uint32_t java_map_index (0x2dd)
	} ; 3
], align 16

@module16_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 144; uint32_t java_map_index (0x90)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 588; uint32_t java_map_index (0x24c)
	} ; 1
], align 16

@module17_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 667; uint32_t java_map_index (0x29b)
	} ; 0
], align 4

@module17_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 667; uint32_t java_map_index (0x29b)
	} ; 0
], align 4

@module18_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 969; uint32_t java_map_index (0x3c9)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 650; uint32_t java_map_index (0x28a)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 527; uint32_t java_map_index (0x20f)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 844; uint32_t java_map_index (0x34c)
	} ; 3
], align 16

@module18_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 527; uint32_t java_map_index (0x20f)
	} ; 0
], align 4

@module19_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 540; uint32_t java_map_index (0x21c)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 164; uint32_t java_map_index (0xa4)
	} ; 1
], align 16

@module20_managed_to_java = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 782; uint32_t java_map_index (0x30e)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 538; uint32_t java_map_index (0x21a)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554470, ; uint32_t type_token_id (0x2000026)
		i32 574; uint32_t java_map_index (0x23e)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 445; uint32_t java_map_index (0x1bd)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 613; uint32_t java_map_index (0x265)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 360; uint32_t java_map_index (0x168)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 889; uint32_t java_map_index (0x379)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554477, ; uint32_t type_token_id (0x200002d)
		i32 119; uint32_t java_map_index (0x77)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 150; uint32_t java_map_index (0x96)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 912; uint32_t java_map_index (0x390)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554482, ; uint32_t type_token_id (0x2000032)
		i32 91; uint32_t java_map_index (0x5b)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554486, ; uint32_t type_token_id (0x2000036)
		i32 517; uint32_t java_map_index (0x205)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 953; uint32_t java_map_index (0x3b9)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 243; uint32_t java_map_index (0xf3)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 633; uint32_t java_map_index (0x279)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 742; uint32_t java_map_index (0x2e6)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 902; uint32_t java_map_index (0x386)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 140; uint32_t java_map_index (0x8c)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 684; uint32_t java_map_index (0x2ac)
	} ; 18
], align 16

@module20_managed_to_java_duplicates = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 445; uint32_t java_map_index (0x1bd)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554476, ; uint32_t type_token_id (0x200002c)
		i32 889; uint32_t java_map_index (0x379)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554479, ; uint32_t type_token_id (0x200002f)
		i32 150; uint32_t java_map_index (0x96)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554481, ; uint32_t type_token_id (0x2000031)
		i32 912; uint32_t java_map_index (0x390)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554483, ; uint32_t type_token_id (0x2000033)
		i32 91; uint32_t java_map_index (0x5b)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 119; uint32_t java_map_index (0x77)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 953; uint32_t java_map_index (0x3b9)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 243; uint32_t java_map_index (0xf3)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 742; uint32_t java_map_index (0x2e6)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 684; uint32_t java_map_index (0x2ac)
	} ; 9
], align 16

@module21_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 769; uint32_t java_map_index (0x301)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 512; uint32_t java_map_index (0x200)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 824; uint32_t java_map_index (0x338)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 812; uint32_t java_map_index (0x32c)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 548; uint32_t java_map_index (0x224)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 887; uint32_t java_map_index (0x377)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 139; uint32_t java_map_index (0x8b)
	} ; 6
], align 16

@module21_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 769; uint32_t java_map_index (0x301)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 824; uint32_t java_map_index (0x338)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 548; uint32_t java_map_index (0x224)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 139; uint32_t java_map_index (0x8b)
	} ; 3
], align 16

@module22_managed_to_java = internal dso_local constant [66 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 934; uint32_t java_map_index (0x3a6)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 665; uint32_t java_map_index (0x299)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 545; uint32_t java_map_index (0x221)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 421; uint32_t java_map_index (0x1a5)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 213; uint32_t java_map_index (0xd5)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 985; uint32_t java_map_index (0x3d9)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 632; uint32_t java_map_index (0x278)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 513; uint32_t java_map_index (0x201)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 476; uint32_t java_map_index (0x1dc)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 881; uint32_t java_map_index (0x371)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554705, ; uint32_t type_token_id (0x2000111)
		i32 271; uint32_t java_map_index (0x10f)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554706, ; uint32_t type_token_id (0x2000112)
		i32 154; uint32_t java_map_index (0x9a)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 625; uint32_t java_map_index (0x271)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554708, ; uint32_t type_token_id (0x2000114)
		i32 879; uint32_t java_map_index (0x36f)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554713, ; uint32_t type_token_id (0x2000119)
		i32 389; uint32_t java_map_index (0x185)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554720, ; uint32_t type_token_id (0x2000120)
		i32 585; uint32_t java_map_index (0x249)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554725, ; uint32_t type_token_id (0x2000125)
		i32 704; uint32_t java_map_index (0x2c0)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 239; uint32_t java_map_index (0xef)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554743, ; uint32_t type_token_id (0x2000137)
		i32 791; uint32_t java_map_index (0x317)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554745, ; uint32_t type_token_id (0x2000139)
		i32 884; uint32_t java_map_index (0x374)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 578; uint32_t java_map_index (0x242)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554747, ; uint32_t type_token_id (0x200013b)
		i32 82; uint32_t java_map_index (0x52)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 414; uint32_t java_map_index (0x19e)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554750, ; uint32_t type_token_id (0x200013e)
		i32 181; uint32_t java_map_index (0xb5)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 397; uint32_t java_map_index (0x18d)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554752, ; uint32_t type_token_id (0x2000140)
		i32 737; uint32_t java_map_index (0x2e1)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554753, ; uint32_t type_token_id (0x2000141)
		i32 272; uint32_t java_map_index (0x110)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554754, ; uint32_t type_token_id (0x2000142)
		i32 221; uint32_t java_map_index (0xdd)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554756, ; uint32_t type_token_id (0x2000144)
		i32 396; uint32_t java_map_index (0x18c)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554757, ; uint32_t type_token_id (0x2000145)
		i32 616; uint32_t java_map_index (0x268)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554759, ; uint32_t type_token_id (0x2000147)
		i32 151; uint32_t java_map_index (0x97)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554760, ; uint32_t type_token_id (0x2000148)
		i32 453; uint32_t java_map_index (0x1c5)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 722; uint32_t java_map_index (0x2d2)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554762, ; uint32_t type_token_id (0x200014a)
		i32 602; uint32_t java_map_index (0x25a)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 10; uint32_t java_map_index (0xa)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 53; uint32_t java_map_index (0x35)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 162; uint32_t java_map_index (0xa2)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554767, ; uint32_t type_token_id (0x200014f)
		i32 682; uint32_t java_map_index (0x2aa)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 629; uint32_t java_map_index (0x275)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554769, ; uint32_t type_token_id (0x2000151)
		i32 24; uint32_t java_map_index (0x18)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554772, ; uint32_t type_token_id (0x2000154)
		i32 177; uint32_t java_map_index (0xb1)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 47; uint32_t java_map_index (0x2f)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554775, ; uint32_t type_token_id (0x2000157)
		i32 439; uint32_t java_map_index (0x1b7)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554777, ; uint32_t type_token_id (0x2000159)
		i32 784; uint32_t java_map_index (0x310)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554780, ; uint32_t type_token_id (0x200015c)
		i32 859; uint32_t java_map_index (0x35b)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554792, ; uint32_t type_token_id (0x2000168)
		i32 132; uint32_t java_map_index (0x84)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554795, ; uint32_t type_token_id (0x200016b)
		i32 829; uint32_t java_map_index (0x33d)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554807, ; uint32_t type_token_id (0x2000177)
		i32 19; uint32_t java_map_index (0x13)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554981, ; uint32_t type_token_id (0x2000225)
		i32 22; uint32_t java_map_index (0x16)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554982, ; uint32_t type_token_id (0x2000226)
		i32 197; uint32_t java_map_index (0xc5)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554988, ; uint32_t type_token_id (0x200022c)
		i32 526; uint32_t java_map_index (0x20e)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33555059, ; uint32_t type_token_id (0x2000273)
		i32 60; uint32_t java_map_index (0x3c)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33555101, ; uint32_t type_token_id (0x200029d)
		i32 104; uint32_t java_map_index (0x68)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33555106, ; uint32_t type_token_id (0x20002a2)
		i32 696; uint32_t java_map_index (0x2b8)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33555107, ; uint32_t type_token_id (0x20002a3)
		i32 710; uint32_t java_map_index (0x2c6)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33555113, ; uint32_t type_token_id (0x20002a9)
		i32 885; uint32_t java_map_index (0x375)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33555115, ; uint32_t type_token_id (0x20002ab)
		i32 166; uint32_t java_map_index (0xa6)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33555120, ; uint32_t type_token_id (0x20002b0)
		i32 426; uint32_t java_map_index (0x1aa)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33555131, ; uint32_t type_token_id (0x20002bb)
		i32 433; uint32_t java_map_index (0x1b1)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33555202, ; uint32_t type_token_id (0x2000302)
		i32 702; uint32_t java_map_index (0x2be)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33555203, ; uint32_t type_token_id (0x2000303)
		i32 593; uint32_t java_map_index (0x251)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33555212, ; uint32_t type_token_id (0x200030c)
		i32 462; uint32_t java_map_index (0x1ce)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33555213, ; uint32_t type_token_id (0x200030d)
		i32 147; uint32_t java_map_index (0x93)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33555215, ; uint32_t type_token_id (0x200030f)
		i32 486; uint32_t java_map_index (0x1e6)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33555216, ; uint32_t type_token_id (0x2000310)
		i32 544; uint32_t java_map_index (0x220)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 906; uint32_t java_map_index (0x38a)
	} ; 65
], align 16

@module22_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554700, ; uint32_t type_token_id (0x200010c)
		i32 632; uint32_t java_map_index (0x278)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554704, ; uint32_t type_token_id (0x2000110)
		i32 881; uint32_t java_map_index (0x371)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554709, ; uint32_t type_token_id (0x2000115)
		i32 879; uint32_t java_map_index (0x36f)
	} ; 2
], align 16

@module23_managed_to_java = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 542; uint32_t java_map_index (0x21e)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 425; uint32_t java_map_index (0x1a9)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 277; uint32_t java_map_index (0x115)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 450; uint32_t java_map_index (0x1c2)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 223; uint32_t java_map_index (0xdf)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 106; uint32_t java_map_index (0x6a)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 490; uint32_t java_map_index (0x1ea)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 199; uint32_t java_map_index (0xc7)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 700; uint32_t java_map_index (0x2bc)
	} ; 8
], align 16

@module23_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 542; uint32_t java_map_index (0x21e)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 425; uint32_t java_map_index (0x1a9)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 223; uint32_t java_map_index (0xdf)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 199; uint32_t java_map_index (0xc7)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 490; uint32_t java_map_index (0x1ea)
	} ; 4
], align 16

@module24_managed_to_java = internal dso_local constant [17 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 652; uint32_t java_map_index (0x28c)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 460; uint32_t java_map_index (0x1cc)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 257; uint32_t java_map_index (0x101)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 802; uint32_t java_map_index (0x322)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 570; uint32_t java_map_index (0x23a)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 564; uint32_t java_map_index (0x234)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 153; uint32_t java_map_index (0x99)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 174; uint32_t java_map_index (0xae)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 305; uint32_t java_map_index (0x131)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 789; uint32_t java_map_index (0x315)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 686; uint32_t java_map_index (0x2ae)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 340; uint32_t java_map_index (0x154)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 465; uint32_t java_map_index (0x1d1)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 376; uint32_t java_map_index (0x178)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 306; uint32_t java_map_index (0x132)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 66; uint32_t java_map_index (0x42)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 795; uint32_t java_map_index (0x31b)
	} ; 16
], align 16

@module24_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 652; uint32_t java_map_index (0x28c)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 460; uint32_t java_map_index (0x1cc)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 465; uint32_t java_map_index (0x1d1)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 340; uint32_t java_map_index (0x154)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 306; uint32_t java_map_index (0x132)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 795; uint32_t java_map_index (0x31b)
	} ; 5
], align 16

@module25_managed_to_java = internal dso_local constant [455 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 821; uint32_t java_map_index (0x335)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 124; uint32_t java_map_index (0x7c)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 220; uint32_t java_map_index (0xdc)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 326; uint32_t java_map_index (0x146)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554603, ; uint32_t type_token_id (0x20000ab)
		i32 735; uint32_t java_map_index (0x2df)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 267; uint32_t java_map_index (0x10b)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 31; uint32_t java_map_index (0x1f)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 820; uint32_t java_map_index (0x334)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 491; uint32_t java_map_index (0x1eb)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554612, ; uint32_t type_token_id (0x20000b4)
		i32 364; uint32_t java_map_index (0x16c)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554614, ; uint32_t type_token_id (0x20000b6)
		i32 849; uint32_t java_map_index (0x351)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554616, ; uint32_t type_token_id (0x20000b8)
		i32 860; uint32_t java_map_index (0x35c)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 773; uint32_t java_map_index (0x305)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 609; uint32_t java_map_index (0x261)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 978; uint32_t java_map_index (0x3d2)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554622, ; uint32_t type_token_id (0x20000be)
		i32 249; uint32_t java_map_index (0xf9)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554623, ; uint32_t type_token_id (0x20000bf)
		i32 245; uint32_t java_map_index (0xf5)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554625, ; uint32_t type_token_id (0x20000c1)
		i32 575; uint32_t java_map_index (0x23f)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554627, ; uint32_t type_token_id (0x20000c3)
		i32 131; uint32_t java_map_index (0x83)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554628, ; uint32_t type_token_id (0x20000c4)
		i32 258; uint32_t java_map_index (0x102)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554632, ; uint32_t type_token_id (0x20000c8)
		i32 828; uint32_t java_map_index (0x33c)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554633, ; uint32_t type_token_id (0x20000c9)
		i32 509; uint32_t java_map_index (0x1fd)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554635, ; uint32_t type_token_id (0x20000cb)
		i32 191; uint32_t java_map_index (0xbf)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554636, ; uint32_t type_token_id (0x20000cc)
		i32 711; uint32_t java_map_index (0x2c7)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554639, ; uint32_t type_token_id (0x20000cf)
		i32 936; uint32_t java_map_index (0x3a8)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554640, ; uint32_t type_token_id (0x20000d0)
		i32 73; uint32_t java_map_index (0x49)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554642, ; uint32_t type_token_id (0x20000d2)
		i32 827; uint32_t java_map_index (0x33b)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554645, ; uint32_t type_token_id (0x20000d5)
		i32 547; uint32_t java_map_index (0x223)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554649, ; uint32_t type_token_id (0x20000d9)
		i32 982; uint32_t java_map_index (0x3d6)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554651, ; uint32_t type_token_id (0x20000db)
		i32 14; uint32_t java_map_index (0xe)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554652, ; uint32_t type_token_id (0x20000dc)
		i32 577; uint32_t java_map_index (0x241)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554653, ; uint32_t type_token_id (0x20000dd)
		i32 615; uint32_t java_map_index (0x267)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554654, ; uint32_t type_token_id (0x20000de)
		i32 771; uint32_t java_map_index (0x303)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554657, ; uint32_t type_token_id (0x20000e1)
		i32 554; uint32_t java_map_index (0x22a)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554662, ; uint32_t type_token_id (0x20000e6)
		i32 23; uint32_t java_map_index (0x17)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554663, ; uint32_t type_token_id (0x20000e7)
		i32 948; uint32_t java_map_index (0x3b4)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554664, ; uint32_t type_token_id (0x20000e8)
		i32 649; uint32_t java_map_index (0x289)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554665, ; uint32_t type_token_id (0x20000e9)
		i32 698; uint32_t java_map_index (0x2ba)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554666, ; uint32_t type_token_id (0x20000ea)
		i32 550; uint32_t java_map_index (0x226)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554668, ; uint32_t type_token_id (0x20000ec)
		i32 318; uint32_t java_map_index (0x13e)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554669, ; uint32_t type_token_id (0x20000ed)
		i32 915; uint32_t java_map_index (0x393)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554670, ; uint32_t type_token_id (0x20000ee)
		i32 721; uint32_t java_map_index (0x2d1)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554671, ; uint32_t type_token_id (0x20000ef)
		i32 323; uint32_t java_map_index (0x143)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554673, ; uint32_t type_token_id (0x20000f1)
		i32 708; uint32_t java_map_index (0x2c4)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554675, ; uint32_t type_token_id (0x20000f3)
		i32 567; uint32_t java_map_index (0x237)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554677, ; uint32_t type_token_id (0x20000f5)
		i32 412; uint32_t java_map_index (0x19c)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554679, ; uint32_t type_token_id (0x20000f7)
		i32 699; uint32_t java_map_index (0x2bb)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554680, ; uint32_t type_token_id (0x20000f8)
		i32 495; uint32_t java_map_index (0x1ef)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554681, ; uint32_t type_token_id (0x20000f9)
		i32 786; uint32_t java_map_index (0x312)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554682, ; uint32_t type_token_id (0x20000fa)
		i32 30; uint32_t java_map_index (0x1e)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554684, ; uint32_t type_token_id (0x20000fc)
		i32 214; uint32_t java_map_index (0xd6)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554686, ; uint32_t type_token_id (0x20000fe)
		i32 331; uint32_t java_map_index (0x14b)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554687, ; uint32_t type_token_id (0x20000ff)
		i32 315; uint32_t java_map_index (0x13b)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554688, ; uint32_t type_token_id (0x2000100)
		i32 856; uint32_t java_map_index (0x358)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554689, ; uint32_t type_token_id (0x2000101)
		i32 430; uint32_t java_map_index (0x1ae)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554690, ; uint32_t type_token_id (0x2000102)
		i32 44; uint32_t java_map_index (0x2c)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554691, ; uint32_t type_token_id (0x2000103)
		i32 761; uint32_t java_map_index (0x2f9)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554692, ; uint32_t type_token_id (0x2000104)
		i32 449; uint32_t java_map_index (0x1c1)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554693, ; uint32_t type_token_id (0x2000105)
		i32 36; uint32_t java_map_index (0x24)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554695, ; uint32_t type_token_id (0x2000107)
		i32 264; uint32_t java_map_index (0x108)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554696, ; uint32_t type_token_id (0x2000108)
		i32 17; uint32_t java_map_index (0x11)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554697, ; uint32_t type_token_id (0x2000109)
		i32 180; uint32_t java_map_index (0xb4)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 806; uint32_t java_map_index (0x326)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 380; uint32_t java_map_index (0x17c)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554705, ; uint32_t type_token_id (0x2000111)
		i32 38; uint32_t java_map_index (0x26)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554711, ; uint32_t type_token_id (0x2000117)
		i32 487; uint32_t java_map_index (0x1e7)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554713, ; uint32_t type_token_id (0x2000119)
		i32 25; uint32_t java_map_index (0x19)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554715, ; uint32_t type_token_id (0x200011b)
		i32 831; uint32_t java_map_index (0x33f)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554717, ; uint32_t type_token_id (0x200011d)
		i32 780; uint32_t java_map_index (0x30c)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554718, ; uint32_t type_token_id (0x200011e)
		i32 801; uint32_t java_map_index (0x321)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554719, ; uint32_t type_token_id (0x200011f)
		i32 762; uint32_t java_map_index (0x2fa)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33554721, ; uint32_t type_token_id (0x2000121)
		i32 930; uint32_t java_map_index (0x3a2)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33554723, ; uint32_t type_token_id (0x2000123)
		i32 255; uint32_t java_map_index (0xff)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33554725, ; uint32_t type_token_id (0x2000125)
		i32 968; uint32_t java_map_index (0x3c8)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 870; uint32_t java_map_index (0x366)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33554729, ; uint32_t type_token_id (0x2000129)
		i32 740; uint32_t java_map_index (0x2e4)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33554730, ; uint32_t type_token_id (0x200012a)
		i32 751; uint32_t java_map_index (0x2ef)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33554732, ; uint32_t type_token_id (0x200012c)
		i32 128; uint32_t java_map_index (0x80)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33554733, ; uint32_t type_token_id (0x200012d)
		i32 920; uint32_t java_map_index (0x398)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33554734, ; uint32_t type_token_id (0x200012e)
		i32 961; uint32_t java_map_index (0x3c1)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33554735, ; uint32_t type_token_id (0x200012f)
		i32 618; uint32_t java_map_index (0x26a)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33554736, ; uint32_t type_token_id (0x2000130)
		i32 112; uint32_t java_map_index (0x70)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33554739, ; uint32_t type_token_id (0x2000133)
		i32 351; uint32_t java_map_index (0x15f)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33554740, ; uint32_t type_token_id (0x2000134)
		i32 823; uint32_t java_map_index (0x337)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33554743, ; uint32_t type_token_id (0x2000137)
		i32 222; uint32_t java_map_index (0xde)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 286; uint32_t java_map_index (0x11e)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33554747, ; uint32_t type_token_id (0x200013b)
		i32 202; uint32_t java_map_index (0xca)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33554749, ; uint32_t type_token_id (0x200013d)
		i32 298; uint32_t java_map_index (0x12a)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 252; uint32_t java_map_index (0xfc)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33554754, ; uint32_t type_token_id (0x2000142)
		i32 51; uint32_t java_map_index (0x33)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33554757, ; uint32_t type_token_id (0x2000145)
		i32 276; uint32_t java_map_index (0x114)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33554759, ; uint32_t type_token_id (0x2000147)
		i32 454; uint32_t java_map_index (0x1c6)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 350; uint32_t java_map_index (0x15e)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33554762, ; uint32_t type_token_id (0x200014a)
		i32 80; uint32_t java_map_index (0x50)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 515; uint32_t java_map_index (0x203)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 330; uint32_t java_map_index (0x14a)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 497; uint32_t java_map_index (0x1f1)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33554770, ; uint32_t type_token_id (0x2000152)
		i32 687; uint32_t java_map_index (0x2af)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33554771, ; uint32_t type_token_id (0x2000153)
		i32 551; uint32_t java_map_index (0x227)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33554772, ; uint32_t type_token_id (0x2000154)
		i32 39; uint32_t java_map_index (0x27)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33554773, ; uint32_t type_token_id (0x2000155)
		i32 261; uint32_t java_map_index (0x105)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 37; uint32_t java_map_index (0x25)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33554780, ; uint32_t type_token_id (0x200015c)
		i32 839; uint32_t java_map_index (0x347)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33554781, ; uint32_t type_token_id (0x200015d)
		i32 955; uint32_t java_map_index (0x3bb)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33554782, ; uint32_t type_token_id (0x200015e)
		i32 867; uint32_t java_map_index (0x363)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33554783, ; uint32_t type_token_id (0x200015f)
		i32 691; uint32_t java_map_index (0x2b3)
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 33554785, ; uint32_t type_token_id (0x2000161)
		i32 133; uint32_t java_map_index (0x85)
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 33554787, ; uint32_t type_token_id (0x2000163)
		i32 230; uint32_t java_map_index (0xe6)
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 33554788, ; uint32_t type_token_id (0x2000164)
		i32 52; uint32_t java_map_index (0x34)
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 33554790, ; uint32_t type_token_id (0x2000166)
		i32 683; uint32_t java_map_index (0x2ab)
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 33554792, ; uint32_t type_token_id (0x2000168)
		i32 322; uint32_t java_map_index (0x142)
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 33554794, ; uint32_t type_token_id (0x200016a)
		i32 367; uint32_t java_map_index (0x16f)
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 33554796, ; uint32_t type_token_id (0x200016c)
		i32 921; uint32_t java_map_index (0x399)
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 33554797, ; uint32_t type_token_id (0x200016d)
		i32 482; uint32_t java_map_index (0x1e2)
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 33554798, ; uint32_t type_token_id (0x200016e)
		i32 314; uint32_t java_map_index (0x13a)
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 33554799, ; uint32_t type_token_id (0x200016f)
		i32 79; uint32_t java_map_index (0x4f)
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 33554800, ; uint32_t type_token_id (0x2000170)
		i32 115; uint32_t java_map_index (0x73)
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 33554801, ; uint32_t type_token_id (0x2000171)
		i32 244; uint32_t java_map_index (0xf4)
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 33554802, ; uint32_t type_token_id (0x2000172)
		i32 917; uint32_t java_map_index (0x395)
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 33554804, ; uint32_t type_token_id (0x2000174)
		i32 328; uint32_t java_map_index (0x148)
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 33554805, ; uint32_t type_token_id (0x2000175)
		i32 93; uint32_t java_map_index (0x5d)
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 33554807, ; uint32_t type_token_id (0x2000177)
		i32 432; uint32_t java_map_index (0x1b0)
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 33554809, ; uint32_t type_token_id (0x2000179)
		i32 212; uint32_t java_map_index (0xd4)
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 33554811, ; uint32_t type_token_id (0x200017b)
		i32 102; uint32_t java_map_index (0x66)
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 33554812, ; uint32_t type_token_id (0x200017c)
		i32 558; uint32_t java_map_index (0x22e)
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 33554813, ; uint32_t type_token_id (0x200017d)
		i32 242; uint32_t java_map_index (0xf2)
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 33554814, ; uint32_t type_token_id (0x200017e)
		i32 893; uint32_t java_map_index (0x37d)
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 33554815, ; uint32_t type_token_id (0x200017f)
		i32 463; uint32_t java_map_index (0x1cf)
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 33554816, ; uint32_t type_token_id (0x2000180)
		i32 648; uint32_t java_map_index (0x288)
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 33554817, ; uint32_t type_token_id (0x2000181)
		i32 107; uint32_t java_map_index (0x6b)
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 33554818, ; uint32_t type_token_id (0x2000182)
		i32 671; uint32_t java_map_index (0x29f)
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 33554819, ; uint32_t type_token_id (0x2000183)
		i32 307; uint32_t java_map_index (0x133)
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 33554821, ; uint32_t type_token_id (0x2000185)
		i32 225; uint32_t java_map_index (0xe1)
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 33554822, ; uint32_t type_token_id (0x2000186)
		i32 97; uint32_t java_map_index (0x61)
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 33554823, ; uint32_t type_token_id (0x2000187)
		i32 168; uint32_t java_map_index (0xa8)
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 33554824, ; uint32_t type_token_id (0x2000188)
		i32 391; uint32_t java_map_index (0x187)
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 33554825, ; uint32_t type_token_id (0x2000189)
		i32 16; uint32_t java_map_index (0x10)
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 33554826, ; uint32_t type_token_id (0x200018a)
		i32 129; uint32_t java_map_index (0x81)
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 33554827, ; uint32_t type_token_id (0x200018b)
		i32 863; uint32_t java_map_index (0x35f)
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 33554828, ; uint32_t type_token_id (0x200018c)
		i32 589; uint32_t java_map_index (0x24d)
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 33554829, ; uint32_t type_token_id (0x200018d)
		i32 505; uint32_t java_map_index (0x1f9)
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 33554831, ; uint32_t type_token_id (0x200018f)
		i32 456; uint32_t java_map_index (0x1c8)
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 33554833, ; uint32_t type_token_id (0x2000191)
		i32 231; uint32_t java_map_index (0xe7)
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 33554835, ; uint32_t type_token_id (0x2000193)
		i32 196; uint32_t java_map_index (0xc4)
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 33554837, ; uint32_t type_token_id (0x2000195)
		i32 390; uint32_t java_map_index (0x186)
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 33554839, ; uint32_t type_token_id (0x2000197)
		i32 852; uint32_t java_map_index (0x354)
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 33554840, ; uint32_t type_token_id (0x2000198)
		i32 672; uint32_t java_map_index (0x2a0)
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 33554841, ; uint32_t type_token_id (0x2000199)
		i32 707; uint32_t java_map_index (0x2c3)
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 33554842, ; uint32_t type_token_id (0x200019a)
		i32 787; uint32_t java_map_index (0x313)
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 33554843, ; uint32_t type_token_id (0x200019b)
		i32 148; uint32_t java_map_index (0x94)
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 33554847, ; uint32_t type_token_id (0x200019f)
		i32 825; uint32_t java_map_index (0x339)
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 33554848, ; uint32_t type_token_id (0x20001a0)
		i32 235; uint32_t java_map_index (0xeb)
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 33554850, ; uint32_t type_token_id (0x20001a2)
		i32 939; uint32_t java_map_index (0x3ab)
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 33554851, ; uint32_t type_token_id (0x20001a3)
		i32 316; uint32_t java_map_index (0x13c)
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 33554853, ; uint32_t type_token_id (0x20001a5)
		i32 576; uint32_t java_map_index (0x240)
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 33554855, ; uint32_t type_token_id (0x20001a7)
		i32 108; uint32_t java_map_index (0x6c)
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 33554858, ; uint32_t type_token_id (0x20001aa)
		i32 661; uint32_t java_map_index (0x295)
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 33554859, ; uint32_t type_token_id (0x20001ab)
		i32 300; uint32_t java_map_index (0x12c)
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 33554862, ; uint32_t type_token_id (0x20001ae)
		i32 59; uint32_t java_map_index (0x3b)
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 33554864, ; uint32_t type_token_id (0x20001b0)
		i32 35; uint32_t java_map_index (0x23)
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 33554866, ; uint32_t type_token_id (0x20001b2)
		i32 103; uint32_t java_map_index (0x67)
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 33554867, ; uint32_t type_token_id (0x20001b3)
		i32 416; uint32_t java_map_index (0x1a0)
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 33554870, ; uint32_t type_token_id (0x20001b6)
		i32 854; uint32_t java_map_index (0x356)
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 33554871, ; uint32_t type_token_id (0x20001b7)
		i32 420; uint32_t java_map_index (0x1a4)
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 33554876, ; uint32_t type_token_id (0x20001bc)
		i32 973; uint32_t java_map_index (0x3cd)
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 33554879, ; uint32_t type_token_id (0x20001bf)
		i32 523; uint32_t java_map_index (0x20b)
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 33554880, ; uint32_t type_token_id (0x20001c0)
		i32 731; uint32_t java_map_index (0x2db)
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 33554881, ; uint32_t type_token_id (0x20001c1)
		i32 716; uint32_t java_map_index (0x2cc)
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 33554882, ; uint32_t type_token_id (0x20001c2)
		i32 896; uint32_t java_map_index (0x380)
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 33554883, ; uint32_t type_token_id (0x20001c3)
		i32 337; uint32_t java_map_index (0x151)
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 33554885, ; uint32_t type_token_id (0x20001c5)
		i32 797; uint32_t java_map_index (0x31d)
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 33554886, ; uint32_t type_token_id (0x20001c6)
		i32 173; uint32_t java_map_index (0xad)
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 33554889, ; uint32_t type_token_id (0x20001c9)
		i32 378; uint32_t java_map_index (0x17a)
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 33554890, ; uint32_t type_token_id (0x20001ca)
		i32 175; uint32_t java_map_index (0xaf)
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 33554898, ; uint32_t type_token_id (0x20001d2)
		i32 468; uint32_t java_map_index (0x1d4)
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 33554899, ; uint32_t type_token_id (0x20001d3)
		i32 371; uint32_t java_map_index (0x173)
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 33554900, ; uint32_t type_token_id (0x20001d4)
		i32 855; uint32_t java_map_index (0x357)
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 33554901, ; uint32_t type_token_id (0x20001d5)
		i32 126; uint32_t java_map_index (0x7e)
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 33554904, ; uint32_t type_token_id (0x20001d8)
		i32 807; uint32_t java_map_index (0x327)
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 33554905, ; uint32_t type_token_id (0x20001d9)
		i32 835; uint32_t java_map_index (0x343)
	}, ; 179
	%struct.TypeMapModuleEntry {
		i32 33554910, ; uint32_t type_token_id (0x20001de)
		i32 402; uint32_t java_map_index (0x192)
	}, ; 180
	%struct.TypeMapModuleEntry {
		i32 33554911, ; uint32_t type_token_id (0x20001df)
		i32 335; uint32_t java_map_index (0x14f)
	}, ; 181
	%struct.TypeMapModuleEntry {
		i32 33554912, ; uint32_t type_token_id (0x20001e0)
		i32 253; uint32_t java_map_index (0xfd)
	}, ; 182
	%struct.TypeMapModuleEntry {
		i32 33554915, ; uint32_t type_token_id (0x20001e3)
		i32 27; uint32_t java_map_index (0x1b)
	}, ; 183
	%struct.TypeMapModuleEntry {
		i32 33554917, ; uint32_t type_token_id (0x20001e5)
		i32 970; uint32_t java_map_index (0x3ca)
	}, ; 184
	%struct.TypeMapModuleEntry {
		i32 33554918, ; uint32_t type_token_id (0x20001e6)
		i32 880; uint32_t java_map_index (0x370)
	}, ; 185
	%struct.TypeMapModuleEntry {
		i32 33554919, ; uint32_t type_token_id (0x20001e7)
		i32 943; uint32_t java_map_index (0x3af)
	}, ; 186
	%struct.TypeMapModuleEntry {
		i32 33554920, ; uint32_t type_token_id (0x20001e8)
		i32 354; uint32_t java_map_index (0x162)
	}, ; 187
	%struct.TypeMapModuleEntry {
		i32 33554921, ; uint32_t type_token_id (0x20001e9)
		i32 597; uint32_t java_map_index (0x255)
	}, ; 188
	%struct.TypeMapModuleEntry {
		i32 33554922, ; uint32_t type_token_id (0x20001ea)
		i32 974; uint32_t java_map_index (0x3ce)
	}, ; 189
	%struct.TypeMapModuleEntry {
		i32 33554924, ; uint32_t type_token_id (0x20001ec)
		i32 966; uint32_t java_map_index (0x3c6)
	}, ; 190
	%struct.TypeMapModuleEntry {
		i32 33554926, ; uint32_t type_token_id (0x20001ee)
		i32 436; uint32_t java_map_index (0x1b4)
	}, ; 191
	%struct.TypeMapModuleEntry {
		i32 33554928, ; uint32_t type_token_id (0x20001f0)
		i32 273; uint32_t java_map_index (0x111)
	}, ; 192
	%struct.TypeMapModuleEntry {
		i32 33554930, ; uint32_t type_token_id (0x20001f2)
		i32 260; uint32_t java_map_index (0x104)
	}, ; 193
	%struct.TypeMapModuleEntry {
		i32 33554933, ; uint32_t type_token_id (0x20001f5)
		i32 466; uint32_t java_map_index (0x1d2)
	}, ; 194
	%struct.TypeMapModuleEntry {
		i32 33554935, ; uint32_t type_token_id (0x20001f7)
		i32 203; uint32_t java_map_index (0xcb)
	}, ; 195
	%struct.TypeMapModuleEntry {
		i32 33554937, ; uint32_t type_token_id (0x20001f9)
		i32 170; uint32_t java_map_index (0xaa)
	}, ; 196
	%struct.TypeMapModuleEntry {
		i32 33554940, ; uint32_t type_token_id (0x20001fc)
		i32 120; uint32_t java_map_index (0x78)
	}, ; 197
	%struct.TypeMapModuleEntry {
		i32 33554942, ; uint32_t type_token_id (0x20001fe)
		i32 137; uint32_t java_map_index (0x89)
	}, ; 198
	%struct.TypeMapModuleEntry {
		i32 33554944, ; uint32_t type_token_id (0x2000200)
		i32 726; uint32_t java_map_index (0x2d6)
	}, ; 199
	%struct.TypeMapModuleEntry {
		i32 33554946, ; uint32_t type_token_id (0x2000202)
		i32 785; uint32_t java_map_index (0x311)
	}, ; 200
	%struct.TypeMapModuleEntry {
		i32 33554948, ; uint32_t type_token_id (0x2000204)
		i32 184; uint32_t java_map_index (0xb8)
	}, ; 201
	%struct.TypeMapModuleEntry {
		i32 33554950, ; uint32_t type_token_id (0x2000206)
		i32 534; uint32_t java_map_index (0x216)
	}, ; 202
	%struct.TypeMapModuleEntry {
		i32 33554952, ; uint32_t type_token_id (0x2000208)
		i32 90; uint32_t java_map_index (0x5a)
	}, ; 203
	%struct.TypeMapModuleEntry {
		i32 33554953, ; uint32_t type_token_id (0x2000209)
		i32 240; uint32_t java_map_index (0xf0)
	}, ; 204
	%struct.TypeMapModuleEntry {
		i32 33554956, ; uint32_t type_token_id (0x200020c)
		i32 556; uint32_t java_map_index (0x22c)
	}, ; 205
	%struct.TypeMapModuleEntry {
		i32 33554958, ; uint32_t type_token_id (0x200020e)
		i32 346; uint32_t java_map_index (0x15a)
	}, ; 206
	%struct.TypeMapModuleEntry {
		i32 33554959, ; uint32_t type_token_id (0x200020f)
		i32 931; uint32_t java_map_index (0x3a3)
	}, ; 207
	%struct.TypeMapModuleEntry {
		i32 33554960, ; uint32_t type_token_id (0x2000210)
		i32 479; uint32_t java_map_index (0x1df)
	}, ; 208
	%struct.TypeMapModuleEntry {
		i32 33554962, ; uint32_t type_token_id (0x2000212)
		i32 118; uint32_t java_map_index (0x76)
	}, ; 209
	%struct.TypeMapModuleEntry {
		i32 33554963, ; uint32_t type_token_id (0x2000213)
		i32 33; uint32_t java_map_index (0x21)
	}, ; 210
	%struct.TypeMapModuleEntry {
		i32 33554964, ; uint32_t type_token_id (0x2000214)
		i32 467; uint32_t java_map_index (0x1d3)
	}, ; 211
	%struct.TypeMapModuleEntry {
		i32 33554966, ; uint32_t type_token_id (0x2000216)
		i32 877; uint32_t java_map_index (0x36d)
	}, ; 212
	%struct.TypeMapModuleEntry {
		i32 33554967, ; uint32_t type_token_id (0x2000217)
		i32 81; uint32_t java_map_index (0x51)
	}, ; 213
	%struct.TypeMapModuleEntry {
		i32 33554969, ; uint32_t type_token_id (0x2000219)
		i32 536; uint32_t java_map_index (0x218)
	}, ; 214
	%struct.TypeMapModuleEntry {
		i32 33554970, ; uint32_t type_token_id (0x200021a)
		i32 891; uint32_t java_map_index (0x37b)
	}, ; 215
	%struct.TypeMapModuleEntry {
		i32 33554971, ; uint32_t type_token_id (0x200021b)
		i32 645; uint32_t java_map_index (0x285)
	}, ; 216
	%struct.TypeMapModuleEntry {
		i32 33554972, ; uint32_t type_token_id (0x200021c)
		i32 100; uint32_t java_map_index (0x64)
	}, ; 217
	%struct.TypeMapModuleEntry {
		i32 33554973, ; uint32_t type_token_id (0x200021d)
		i32 888; uint32_t java_map_index (0x378)
	}, ; 218
	%struct.TypeMapModuleEntry {
		i32 33554974, ; uint32_t type_token_id (0x200021e)
		i32 130; uint32_t java_map_index (0x82)
	}, ; 219
	%struct.TypeMapModuleEntry {
		i32 33554975, ; uint32_t type_token_id (0x200021f)
		i32 303; uint32_t java_map_index (0x12f)
	}, ; 220
	%struct.TypeMapModuleEntry {
		i32 33554979, ; uint32_t type_token_id (0x2000223)
		i32 455; uint32_t java_map_index (0x1c7)
	}, ; 221
	%struct.TypeMapModuleEntry {
		i32 33554980, ; uint32_t type_token_id (0x2000224)
		i32 754; uint32_t java_map_index (0x2f2)
	}, ; 222
	%struct.TypeMapModuleEntry {
		i32 33554982, ; uint32_t type_token_id (0x2000226)
		i32 803; uint32_t java_map_index (0x323)
	}, ; 223
	%struct.TypeMapModuleEntry {
		i32 33554983, ; uint32_t type_token_id (0x2000227)
		i32 442; uint32_t java_map_index (0x1ba)
	}, ; 224
	%struct.TypeMapModuleEntry {
		i32 33554985, ; uint32_t type_token_id (0x2000229)
		i32 409; uint32_t java_map_index (0x199)
	}, ; 225
	%struct.TypeMapModuleEntry {
		i32 33554988, ; uint32_t type_token_id (0x200022c)
		i32 438; uint32_t java_map_index (0x1b6)
	}, ; 226
	%struct.TypeMapModuleEntry {
		i32 33554989, ; uint32_t type_token_id (0x200022d)
		i32 12; uint32_t java_map_index (0xc)
	}, ; 227
	%struct.TypeMapModuleEntry {
		i32 33554991, ; uint32_t type_token_id (0x200022f)
		i32 717; uint32_t java_map_index (0x2cd)
	}, ; 228
	%struct.TypeMapModuleEntry {
		i32 33554994, ; uint32_t type_token_id (0x2000232)
		i32 395; uint32_t java_map_index (0x18b)
	}, ; 229
	%struct.TypeMapModuleEntry {
		i32 33554995, ; uint32_t type_token_id (0x2000233)
		i32 572; uint32_t java_map_index (0x23c)
	}, ; 230
	%struct.TypeMapModuleEntry {
		i32 33554998, ; uint32_t type_token_id (0x2000236)
		i32 800; uint32_t java_map_index (0x320)
	}, ; 231
	%struct.TypeMapModuleEntry {
		i32 33554999, ; uint32_t type_token_id (0x2000237)
		i32 423; uint32_t java_map_index (0x1a7)
	}, ; 232
	%struct.TypeMapModuleEntry {
		i32 33555002, ; uint32_t type_token_id (0x200023a)
		i32 832; uint32_t java_map_index (0x340)
	}, ; 233
	%struct.TypeMapModuleEntry {
		i32 33555003, ; uint32_t type_token_id (0x200023b)
		i32 781; uint32_t java_map_index (0x30d)
	}, ; 234
	%struct.TypeMapModuleEntry {
		i32 33555006, ; uint32_t type_token_id (0x200023e)
		i32 431; uint32_t java_map_index (0x1af)
	}, ; 235
	%struct.TypeMapModuleEntry {
		i32 33555024, ; uint32_t type_token_id (0x2000250)
		i32 484; uint32_t java_map_index (0x1e4)
	}, ; 236
	%struct.TypeMapModuleEntry {
		i32 33555025, ; uint32_t type_token_id (0x2000251)
		i32 910; uint32_t java_map_index (0x38e)
	}, ; 237
	%struct.TypeMapModuleEntry {
		i32 33555026, ; uint32_t type_token_id (0x2000252)
		i32 553; uint32_t java_map_index (0x229)
	}, ; 238
	%struct.TypeMapModuleEntry {
		i32 33555027, ; uint32_t type_token_id (0x2000253)
		i32 492; uint32_t java_map_index (0x1ec)
	}, ; 239
	%struct.TypeMapModuleEntry {
		i32 33555028, ; uint32_t type_token_id (0x2000254)
		i32 301; uint32_t java_map_index (0x12d)
	}, ; 240
	%struct.TypeMapModuleEntry {
		i32 33555032, ; uint32_t type_token_id (0x2000258)
		i32 660; uint32_t java_map_index (0x294)
	}, ; 241
	%struct.TypeMapModuleEntry {
		i32 33555037, ; uint32_t type_token_id (0x200025d)
		i32 520; uint32_t java_map_index (0x208)
	}, ; 242
	%struct.TypeMapModuleEntry {
		i32 33555038, ; uint32_t type_token_id (0x200025e)
		i32 875; uint32_t java_map_index (0x36b)
	}, ; 243
	%struct.TypeMapModuleEntry {
		i32 33555039, ; uint32_t type_token_id (0x200025f)
		i32 489; uint32_t java_map_index (0x1e9)
	}, ; 244
	%struct.TypeMapModuleEntry {
		i32 33555041, ; uint32_t type_token_id (0x2000261)
		i32 145; uint32_t java_map_index (0x91)
	}, ; 245
	%struct.TypeMapModuleEntry {
		i32 33555042, ; uint32_t type_token_id (0x2000262)
		i32 366; uint32_t java_map_index (0x16e)
	}, ; 246
	%struct.TypeMapModuleEntry {
		i32 33555045, ; uint32_t type_token_id (0x2000265)
		i32 964; uint32_t java_map_index (0x3c4)
	}, ; 247
	%struct.TypeMapModuleEntry {
		i32 33555046, ; uint32_t type_token_id (0x2000266)
		i32 598; uint32_t java_map_index (0x256)
	}, ; 248
	%struct.TypeMapModuleEntry {
		i32 33555047, ; uint32_t type_token_id (0x2000267)
		i32 816; uint32_t java_map_index (0x330)
	}, ; 249
	%struct.TypeMapModuleEntry {
		i32 33555048, ; uint32_t type_token_id (0x2000268)
		i32 847; uint32_t java_map_index (0x34f)
	}, ; 250
	%struct.TypeMapModuleEntry {
		i32 33555077, ; uint32_t type_token_id (0x2000285)
		i32 149; uint32_t java_map_index (0x95)
	}, ; 251
	%struct.TypeMapModuleEntry {
		i32 33555081, ; uint32_t type_token_id (0x2000289)
		i32 674; uint32_t java_map_index (0x2a2)
	}, ; 252
	%struct.TypeMapModuleEntry {
		i32 33555082, ; uint32_t type_token_id (0x200028a)
		i32 604; uint32_t java_map_index (0x25c)
	}, ; 253
	%struct.TypeMapModuleEntry {
		i32 33555083, ; uint32_t type_token_id (0x200028b)
		i32 926; uint32_t java_map_index (0x39e)
	}, ; 254
	%struct.TypeMapModuleEntry {
		i32 33555086, ; uint32_t type_token_id (0x200028e)
		i32 987; uint32_t java_map_index (0x3db)
	}, ; 255
	%struct.TypeMapModuleEntry {
		i32 33555087, ; uint32_t type_token_id (0x200028f)
		i32 163; uint32_t java_map_index (0xa3)
	}, ; 256
	%struct.TypeMapModuleEntry {
		i32 33555088, ; uint32_t type_token_id (0x2000290)
		i32 876; uint32_t java_map_index (0x36c)
	}, ; 257
	%struct.TypeMapModuleEntry {
		i32 33555090, ; uint32_t type_token_id (0x2000292)
		i32 646; uint32_t java_map_index (0x286)
	}, ; 258
	%struct.TypeMapModuleEntry {
		i32 33555091, ; uint32_t type_token_id (0x2000293)
		i32 224; uint32_t java_map_index (0xe0)
	}, ; 259
	%struct.TypeMapModuleEntry {
		i32 33555093, ; uint32_t type_token_id (0x2000295)
		i32 54; uint32_t java_map_index (0x36)
	}, ; 260
	%struct.TypeMapModuleEntry {
		i32 33555094, ; uint32_t type_token_id (0x2000296)
		i32 514; uint32_t java_map_index (0x202)
	}, ; 261
	%struct.TypeMapModuleEntry {
		i32 33555095, ; uint32_t type_token_id (0x2000297)
		i32 639; uint32_t java_map_index (0x27f)
	}, ; 262
	%struct.TypeMapModuleEntry {
		i32 33555096, ; uint32_t type_token_id (0x2000298)
		i32 160; uint32_t java_map_index (0xa0)
	}, ; 263
	%struct.TypeMapModuleEntry {
		i32 33555097, ; uint32_t type_token_id (0x2000299)
		i32 320; uint32_t java_map_index (0x140)
	}, ; 264
	%struct.TypeMapModuleEntry {
		i32 33555098, ; uint32_t type_token_id (0x200029a)
		i32 745; uint32_t java_map_index (0x2e9)
	}, ; 265
	%struct.TypeMapModuleEntry {
		i32 33555123, ; uint32_t type_token_id (0x20002b3)
		i32 904; uint32_t java_map_index (0x388)
	}, ; 266
	%struct.TypeMapModuleEntry {
		i32 33555126, ; uint32_t type_token_id (0x20002b6)
		i32 619; uint32_t java_map_index (0x26b)
	}, ; 267
	%struct.TypeMapModuleEntry {
		i32 33555128, ; uint32_t type_token_id (0x20002b8)
		i32 989; uint32_t java_map_index (0x3dd)
	}, ; 268
	%struct.TypeMapModuleEntry {
		i32 33555130, ; uint32_t type_token_id (0x20002ba)
		i32 428; uint32_t java_map_index (0x1ac)
	}, ; 269
	%struct.TypeMapModuleEntry {
		i32 33555139, ; uint32_t type_token_id (0x20002c3)
		i32 626; uint32_t java_map_index (0x272)
	}, ; 270
	%struct.TypeMapModuleEntry {
		i32 33555141, ; uint32_t type_token_id (0x20002c5)
		i32 898; uint32_t java_map_index (0x382)
	}, ; 271
	%struct.TypeMapModuleEntry {
		i32 33555142, ; uint32_t type_token_id (0x20002c6)
		i32 62; uint32_t java_map_index (0x3e)
	}, ; 272
	%struct.TypeMapModuleEntry {
		i32 33555143, ; uint32_t type_token_id (0x20002c7)
		i32 56; uint32_t java_map_index (0x38)
	}, ; 273
	%struct.TypeMapModuleEntry {
		i32 33555155, ; uint32_t type_token_id (0x20002d3)
		i32 777; uint32_t java_map_index (0x309)
	}, ; 274
	%struct.TypeMapModuleEntry {
		i32 33555166, ; uint32_t type_token_id (0x20002de)
		i32 868; uint32_t java_map_index (0x364)
	}, ; 275
	%struct.TypeMapModuleEntry {
		i32 33555167, ; uint32_t type_token_id (0x20002df)
		i32 864; uint32_t java_map_index (0x360)
	}, ; 276
	%struct.TypeMapModuleEntry {
		i32 33555168, ; uint32_t type_token_id (0x20002e0)
		i32 607; uint32_t java_map_index (0x25f)
	}, ; 277
	%struct.TypeMapModuleEntry {
		i32 33555169, ; uint32_t type_token_id (0x20002e1)
		i32 387; uint32_t java_map_index (0x183)
	}, ; 278
	%struct.TypeMapModuleEntry {
		i32 33555171, ; uint32_t type_token_id (0x20002e3)
		i32 960; uint32_t java_map_index (0x3c0)
	}, ; 279
	%struct.TypeMapModuleEntry {
		i32 33555172, ; uint32_t type_token_id (0x20002e4)
		i32 874; uint32_t java_map_index (0x36a)
	}, ; 280
	%struct.TypeMapModuleEntry {
		i32 33555173, ; uint32_t type_token_id (0x20002e5)
		i32 206; uint32_t java_map_index (0xce)
	}, ; 281
	%struct.TypeMapModuleEntry {
		i32 33555174, ; uint32_t type_token_id (0x20002e6)
		i32 853; uint32_t java_map_index (0x355)
	}, ; 282
	%struct.TypeMapModuleEntry {
		i32 33555175, ; uint32_t type_token_id (0x20002e7)
		i32 94; uint32_t java_map_index (0x5e)
	}, ; 283
	%struct.TypeMapModuleEntry {
		i32 33555176, ; uint32_t type_token_id (0x20002e8)
		i32 219; uint32_t java_map_index (0xdb)
	}, ; 284
	%struct.TypeMapModuleEntry {
		i32 33555177, ; uint32_t type_token_id (0x20002e9)
		i32 766; uint32_t java_map_index (0x2fe)
	}, ; 285
	%struct.TypeMapModuleEntry {
		i32 33555178, ; uint32_t type_token_id (0x20002ea)
		i32 897; uint32_t java_map_index (0x381)
	}, ; 286
	%struct.TypeMapModuleEntry {
		i32 33555179, ; uint32_t type_token_id (0x20002eb)
		i32 532; uint32_t java_map_index (0x214)
	}, ; 287
	%struct.TypeMapModuleEntry {
		i32 33555180, ; uint32_t type_token_id (0x20002ec)
		i32 990; uint32_t java_map_index (0x3de)
	}, ; 288
	%struct.TypeMapModuleEntry {
		i32 33555181, ; uint32_t type_token_id (0x20002ed)
		i32 894; uint32_t java_map_index (0x37e)
	}, ; 289
	%struct.TypeMapModuleEntry {
		i32 33555182, ; uint32_t type_token_id (0x20002ee)
		i32 925; uint32_t java_map_index (0x39d)
	}, ; 290
	%struct.TypeMapModuleEntry {
		i32 33555183, ; uint32_t type_token_id (0x20002ef)
		i32 488; uint32_t java_map_index (0x1e8)
	}, ; 291
	%struct.TypeMapModuleEntry {
		i32 33555184, ; uint32_t type_token_id (0x20002f0)
		i32 11; uint32_t java_map_index (0xb)
	}, ; 292
	%struct.TypeMapModuleEntry {
		i32 33555185, ; uint32_t type_token_id (0x20002f1)
		i32 211; uint32_t java_map_index (0xd3)
	}, ; 293
	%struct.TypeMapModuleEntry {
		i32 33555186, ; uint32_t type_token_id (0x20002f2)
		i32 851; uint32_t java_map_index (0x353)
	}, ; 294
	%struct.TypeMapModuleEntry {
		i32 33555187, ; uint32_t type_token_id (0x20002f3)
		i32 621; uint32_t java_map_index (0x26d)
	}, ; 295
	%struct.TypeMapModuleEntry {
		i32 33555188, ; uint32_t type_token_id (0x20002f4)
		i32 481; uint32_t java_map_index (0x1e1)
	}, ; 296
	%struct.TypeMapModuleEntry {
		i32 33555189, ; uint32_t type_token_id (0x20002f5)
		i32 899; uint32_t java_map_index (0x383)
	}, ; 297
	%struct.TypeMapModuleEntry {
		i32 33555190, ; uint32_t type_token_id (0x20002f6)
		i32 45; uint32_t java_map_index (0x2d)
	}, ; 298
	%struct.TypeMapModuleEntry {
		i32 33555191, ; uint32_t type_token_id (0x20002f7)
		i32 28; uint32_t java_map_index (0x1c)
	}, ; 299
	%struct.TypeMapModuleEntry {
		i32 33555192, ; uint32_t type_token_id (0x20002f8)
		i32 504; uint32_t java_map_index (0x1f8)
	}, ; 300
	%struct.TypeMapModuleEntry {
		i32 33555193, ; uint32_t type_token_id (0x20002f9)
		i32 723; uint32_t java_map_index (0x2d3)
	}, ; 301
	%struct.TypeMapModuleEntry {
		i32 33555194, ; uint32_t type_token_id (0x20002fa)
		i32 815; uint32_t java_map_index (0x32f)
	}, ; 302
	%struct.TypeMapModuleEntry {
		i32 33555195, ; uint32_t type_token_id (0x20002fb)
		i32 333; uint32_t java_map_index (0x14d)
	}, ; 303
	%struct.TypeMapModuleEntry {
		i32 33555196, ; uint32_t type_token_id (0x20002fc)
		i32 905; uint32_t java_map_index (0x389)
	}, ; 304
	%struct.TypeMapModuleEntry {
		i32 33555197, ; uint32_t type_token_id (0x20002fd)
		i32 862; uint32_t java_map_index (0x35e)
	}, ; 305
	%struct.TypeMapModuleEntry {
		i32 33555198, ; uint32_t type_token_id (0x20002fe)
		i32 388; uint32_t java_map_index (0x184)
	}, ; 306
	%struct.TypeMapModuleEntry {
		i32 33555199, ; uint32_t type_token_id (0x20002ff)
		i32 732; uint32_t java_map_index (0x2dc)
	}, ; 307
	%struct.TypeMapModuleEntry {
		i32 33555200, ; uint32_t type_token_id (0x2000300)
		i32 594; uint32_t java_map_index (0x252)
	}, ; 308
	%struct.TypeMapModuleEntry {
		i32 33555201, ; uint32_t type_token_id (0x2000301)
		i32 590; uint32_t java_map_index (0x24e)
	}, ; 309
	%struct.TypeMapModuleEntry {
		i32 33555202, ; uint32_t type_token_id (0x2000302)
		i32 724; uint32_t java_map_index (0x2d4)
	}, ; 310
	%struct.TypeMapModuleEntry {
		i32 33555203, ; uint32_t type_token_id (0x2000303)
		i32 41; uint32_t java_map_index (0x29)
	}, ; 311
	%struct.TypeMapModuleEntry {
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 365; uint32_t java_map_index (0x16d)
	}, ; 312
	%struct.TypeMapModuleEntry {
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 758; uint32_t java_map_index (0x2f6)
	}, ; 313
	%struct.TypeMapModuleEntry {
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 748; uint32_t java_map_index (0x2ec)
	}, ; 314
	%struct.TypeMapModuleEntry {
		i32 33555211, ; uint32_t type_token_id (0x200030b)
		i32 157; uint32_t java_map_index (0x9d)
	}, ; 315
	%struct.TypeMapModuleEntry {
		i32 33555212, ; uint32_t type_token_id (0x200030c)
		i32 227; uint32_t java_map_index (0xe3)
	}, ; 316
	%struct.TypeMapModuleEntry {
		i32 33555213, ; uint32_t type_token_id (0x200030d)
		i32 503; uint32_t java_map_index (0x1f7)
	}, ; 317
	%struct.TypeMapModuleEntry {
		i32 33555214, ; uint32_t type_token_id (0x200030e)
		i32 677; uint32_t java_map_index (0x2a5)
	}, ; 318
	%struct.TypeMapModuleEntry {
		i32 33555217, ; uint32_t type_token_id (0x2000311)
		i32 865; uint32_t java_map_index (0x361)
	}, ; 319
	%struct.TypeMapModuleEntry {
		i32 33555218, ; uint32_t type_token_id (0x2000312)
		i32 765; uint32_t java_map_index (0x2fd)
	}, ; 320
	%struct.TypeMapModuleEntry {
		i32 33555220, ; uint32_t type_token_id (0x2000314)
		i32 87; uint32_t java_map_index (0x57)
	}, ; 321
	%struct.TypeMapModuleEntry {
		i32 33555221, ; uint32_t type_token_id (0x2000315)
		i32 210; uint32_t java_map_index (0xd2)
	}, ; 322
	%struct.TypeMapModuleEntry {
		i32 33555222, ; uint32_t type_token_id (0x2000316)
		i32 1; uint32_t java_map_index (0x1)
	}, ; 323
	%struct.TypeMapModuleEntry {
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 86; uint32_t java_map_index (0x56)
	}, ; 324
	%struct.TypeMapModuleEntry {
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 793; uint32_t java_map_index (0x319)
	}, ; 325
	%struct.TypeMapModuleEntry {
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 302; uint32_t java_map_index (0x12e)
	}, ; 326
	%struct.TypeMapModuleEntry {
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 355; uint32_t java_map_index (0x163)
	}, ; 327
	%struct.TypeMapModuleEntry {
		i32 33555228, ; uint32_t type_token_id (0x200031c)
		i32 418; uint32_t java_map_index (0x1a2)
	}, ; 328
	%struct.TypeMapModuleEntry {
		i32 33555229, ; uint32_t type_token_id (0x200031d)
		i32 342; uint32_t java_map_index (0x156)
	}, ; 329
	%struct.TypeMapModuleEntry {
		i32 33555230, ; uint32_t type_token_id (0x200031e)
		i32 528; uint32_t java_map_index (0x210)
	}, ; 330
	%struct.TypeMapModuleEntry {
		i32 33555232, ; uint32_t type_token_id (0x2000320)
		i32 546; uint32_t java_map_index (0x222)
	}, ; 331
	%struct.TypeMapModuleEntry {
		i32 33555235, ; uint32_t type_token_id (0x2000323)
		i32 790; uint32_t java_map_index (0x316)
	}, ; 332
	%struct.TypeMapModuleEntry {
		i32 33555236, ; uint32_t type_token_id (0x2000324)
		i32 957; uint32_t java_map_index (0x3bd)
	}, ; 333
	%struct.TypeMapModuleEntry {
		i32 33555237, ; uint32_t type_token_id (0x2000325)
		i32 13; uint32_t java_map_index (0xd)
	}, ; 334
	%struct.TypeMapModuleEntry {
		i32 33555240, ; uint32_t type_token_id (0x2000328)
		i32 241; uint32_t java_map_index (0xf1)
	}, ; 335
	%struct.TypeMapModuleEntry {
		i32 33555242, ; uint32_t type_token_id (0x200032a)
		i32 169; uint32_t java_map_index (0xa9)
	}, ; 336
	%struct.TypeMapModuleEntry {
		i32 33555243, ; uint32_t type_token_id (0x200032b)
		i32 363; uint32_t java_map_index (0x16b)
	}, ; 337
	%struct.TypeMapModuleEntry {
		i32 33555244, ; uint32_t type_token_id (0x200032c)
		i32 424; uint32_t java_map_index (0x1a8)
	}, ; 338
	%struct.TypeMapModuleEntry {
		i32 33555245, ; uint32_t type_token_id (0x200032d)
		i32 720; uint32_t java_map_index (0x2d0)
	}, ; 339
	%struct.TypeMapModuleEntry {
		i32 33555246, ; uint32_t type_token_id (0x200032e)
		i32 370; uint32_t java_map_index (0x172)
	}, ; 340
	%struct.TypeMapModuleEntry {
		i32 33555248, ; uint32_t type_token_id (0x2000330)
		i32 662; uint32_t java_map_index (0x296)
	}, ; 341
	%struct.TypeMapModuleEntry {
		i32 33555250, ; uint32_t type_token_id (0x2000332)
		i32 458; uint32_t java_map_index (0x1ca)
	}, ; 342
	%struct.TypeMapModuleEntry {
		i32 33555251, ; uint32_t type_token_id (0x2000333)
		i32 744; uint32_t java_map_index (0x2e8)
	}, ; 343
	%struct.TypeMapModuleEntry {
		i32 33555253, ; uint32_t type_token_id (0x2000335)
		i32 448; uint32_t java_map_index (0x1c0)
	}, ; 344
	%struct.TypeMapModuleEntry {
		i32 33555254, ; uint32_t type_token_id (0x2000336)
		i32 886; uint32_t java_map_index (0x376)
	}, ; 345
	%struct.TypeMapModuleEntry {
		i32 33555257, ; uint32_t type_token_id (0x2000339)
		i32 32; uint32_t java_map_index (0x20)
	}, ; 346
	%struct.TypeMapModuleEntry {
		i32 33555258, ; uint32_t type_token_id (0x200033a)
		i32 233; uint32_t java_map_index (0xe9)
	}, ; 347
	%struct.TypeMapModuleEntry {
		i32 33555260, ; uint32_t type_token_id (0x200033c)
		i32 817; uint32_t java_map_index (0x331)
	}, ; 348
	%struct.TypeMapModuleEntry {
		i32 33555261, ; uint32_t type_token_id (0x200033d)
		i32 246; uint32_t java_map_index (0xf6)
	}, ; 349
	%struct.TypeMapModuleEntry {
		i32 33555263, ; uint32_t type_token_id (0x200033f)
		i32 88; uint32_t java_map_index (0x58)
	}, ; 350
	%struct.TypeMapModuleEntry {
		i32 33555266, ; uint32_t type_token_id (0x2000342)
		i32 655; uint32_t java_map_index (0x28f)
	}, ; 351
	%struct.TypeMapModuleEntry {
		i32 33555268, ; uint32_t type_token_id (0x2000344)
		i32 976; uint32_t java_map_index (0x3d0)
	}, ; 352
	%struct.TypeMapModuleEntry {
		i32 33555269, ; uint32_t type_token_id (0x2000345)
		i32 194; uint32_t java_map_index (0xc2)
	}, ; 353
	%struct.TypeMapModuleEntry {
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 165; uint32_t java_map_index (0xa5)
	}, ; 354
	%struct.TypeMapModuleEntry {
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 159; uint32_t java_map_index (0x9f)
	}, ; 355
	%struct.TypeMapModuleEntry {
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 734; uint32_t java_map_index (0x2de)
	}, ; 356
	%struct.TypeMapModuleEntry {
		i32 33555274, ; uint32_t type_token_id (0x200034a)
		i32 911; uint32_t java_map_index (0x38f)
	}, ; 357
	%struct.TypeMapModuleEntry {
		i32 33555276, ; uint32_t type_token_id (0x200034c)
		i32 977; uint32_t java_map_index (0x3d1)
	}, ; 358
	%struct.TypeMapModuleEntry {
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 783; uint32_t java_map_index (0x30f)
	}, ; 359
	%struct.TypeMapModuleEntry {
		i32 33555284, ; uint32_t type_token_id (0x2000354)
		i32 500; uint32_t java_map_index (0x1f4)
	}, ; 360
	%struct.TypeMapModuleEntry {
		i32 33555285, ; uint32_t type_token_id (0x2000355)
		i32 808; uint32_t java_map_index (0x328)
	}, ; 361
	%struct.TypeMapModuleEntry {
		i32 33555286, ; uint32_t type_token_id (0x2000356)
		i32 565; uint32_t java_map_index (0x235)
	}, ; 362
	%struct.TypeMapModuleEntry {
		i32 33555287, ; uint32_t type_token_id (0x2000357)
		i32 469; uint32_t java_map_index (0x1d5)
	}, ; 363
	%struct.TypeMapModuleEntry {
		i32 33555288, ; uint32_t type_token_id (0x2000358)
		i32 706; uint32_t java_map_index (0x2c2)
	}, ; 364
	%struct.TypeMapModuleEntry {
		i32 33555290, ; uint32_t type_token_id (0x200035a)
		i32 669; uint32_t java_map_index (0x29d)
	}, ; 365
	%struct.TypeMapModuleEntry {
		i32 33555291, ; uint32_t type_token_id (0x200035b)
		i32 247; uint32_t java_map_index (0xf7)
	}, ; 366
	%struct.TypeMapModuleEntry {
		i32 33555292, ; uint32_t type_token_id (0x200035c)
		i32 429; uint32_t java_map_index (0x1ad)
	}, ; 367
	%struct.TypeMapModuleEntry {
		i32 33555295, ; uint32_t type_token_id (0x200035f)
		i32 200; uint32_t java_map_index (0xc8)
	}, ; 368
	%struct.TypeMapModuleEntry {
		i32 33555296, ; uint32_t type_token_id (0x2000360)
		i32 929; uint32_t java_map_index (0x3a1)
	}, ; 369
	%struct.TypeMapModuleEntry {
		i32 33555297, ; uint32_t type_token_id (0x2000361)
		i32 317; uint32_t java_map_index (0x13d)
	}, ; 370
	%struct.TypeMapModuleEntry {
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 394; uint32_t java_map_index (0x18a)
	}, ; 371
	%struct.TypeMapModuleEntry {
		i32 33555300, ; uint32_t type_token_id (0x2000364)
		i32 557; uint32_t java_map_index (0x22d)
	}, ; 372
	%struct.TypeMapModuleEntry {
		i32 33555301, ; uint32_t type_token_id (0x2000365)
		i32 659; uint32_t java_map_index (0x293)
	}, ; 373
	%struct.TypeMapModuleEntry {
		i32 33555302, ; uint32_t type_token_id (0x2000366)
		i32 914; uint32_t java_map_index (0x392)
	}, ; 374
	%struct.TypeMapModuleEntry {
		i32 33555303, ; uint32_t type_token_id (0x2000367)
		i32 6; uint32_t java_map_index (0x6)
	}, ; 375
	%struct.TypeMapModuleEntry {
		i32 33555309, ; uint32_t type_token_id (0x200036d)
		i32 940; uint32_t java_map_index (0x3ac)
	}, ; 376
	%struct.TypeMapModuleEntry {
		i32 33555311, ; uint32_t type_token_id (0x200036f)
		i32 67; uint32_t java_map_index (0x43)
	}, ; 377
	%struct.TypeMapModuleEntry {
		i32 33555313, ; uint32_t type_token_id (0x2000371)
		i32 871; uint32_t java_map_index (0x367)
	}, ; 378
	%struct.TypeMapModuleEntry {
		i32 33555314, ; uint32_t type_token_id (0x2000372)
		i32 583; uint32_t java_map_index (0x247)
	}, ; 379
	%struct.TypeMapModuleEntry {
		i32 33555315, ; uint32_t type_token_id (0x2000373)
		i32 49; uint32_t java_map_index (0x31)
	}, ; 380
	%struct.TypeMapModuleEntry {
		i32 33555317, ; uint32_t type_token_id (0x2000375)
		i32 596; uint32_t java_map_index (0x254)
	}, ; 381
	%struct.TypeMapModuleEntry {
		i32 33555319, ; uint32_t type_token_id (0x2000377)
		i32 900; uint32_t java_map_index (0x384)
	}, ; 382
	%struct.TypeMapModuleEntry {
		i32 33555321, ; uint32_t type_token_id (0x2000379)
		i32 4; uint32_t java_map_index (0x4)
	}, ; 383
	%struct.TypeMapModuleEntry {
		i32 33555323, ; uint32_t type_token_id (0x200037b)
		i32 640; uint32_t java_map_index (0x280)
	}, ; 384
	%struct.TypeMapModuleEntry {
		i32 33555325, ; uint32_t type_token_id (0x200037d)
		i32 641; uint32_t java_map_index (0x281)
	}, ; 385
	%struct.TypeMapModuleEntry {
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 434; uint32_t java_map_index (0x1b2)
	}, ; 386
	%struct.TypeMapModuleEntry {
		i32 33555327, ; uint32_t type_token_id (0x200037f)
		i32 654; uint32_t java_map_index (0x28e)
	}, ; 387
	%struct.TypeMapModuleEntry {
		i32 33555328, ; uint32_t type_token_id (0x2000380)
		i32 384; uint32_t java_map_index (0x180)
	}, ; 388
	%struct.TypeMapModuleEntry {
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 29; uint32_t java_map_index (0x1d)
	}, ; 389
	%struct.TypeMapModuleEntry {
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 972; uint32_t java_map_index (0x3cc)
	}, ; 390
	%struct.TypeMapModuleEntry {
		i32 33555333, ; uint32_t type_token_id (0x2000385)
		i32 493; uint32_t java_map_index (0x1ed)
	}, ; 391
	%struct.TypeMapModuleEntry {
		i32 33555335, ; uint32_t type_token_id (0x2000387)
		i32 942; uint32_t java_map_index (0x3ae)
	}, ; 392
	%struct.TypeMapModuleEntry {
		i32 33555336, ; uint32_t type_token_id (0x2000388)
		i32 136; uint32_t java_map_index (0x88)
	}, ; 393
	%struct.TypeMapModuleEntry {
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 630; uint32_t java_map_index (0x276)
	}, ; 394
	%struct.TypeMapModuleEntry {
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 763; uint32_t java_map_index (0x2fb)
	}, ; 395
	%struct.TypeMapModuleEntry {
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 444; uint32_t java_map_index (0x1bc)
	}, ; 396
	%struct.TypeMapModuleEntry {
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 58; uint32_t java_map_index (0x3a)
	}, ; 397
	%struct.TypeMapModuleEntry {
		i32 33555344, ; uint32_t type_token_id (0x2000390)
		i32 134; uint32_t java_map_index (0x86)
	}, ; 398
	%struct.TypeMapModuleEntry {
		i32 33555346, ; uint32_t type_token_id (0x2000392)
		i32 201; uint32_t java_map_index (0xc9)
	}, ; 399
	%struct.TypeMapModuleEntry {
		i32 33555347, ; uint32_t type_token_id (0x2000393)
		i32 84; uint32_t java_map_index (0x54)
	}, ; 400
	%struct.TypeMapModuleEntry {
		i32 33555348, ; uint32_t type_token_id (0x2000394)
		i32 105; uint32_t java_map_index (0x69)
	}, ; 401
	%struct.TypeMapModuleEntry {
		i32 33555349, ; uint32_t type_token_id (0x2000395)
		i32 949; uint32_t java_map_index (0x3b5)
	}, ; 402
	%struct.TypeMapModuleEntry {
		i32 33555350, ; uint32_t type_token_id (0x2000396)
		i32 218; uint32_t java_map_index (0xda)
	}, ; 403
	%struct.TypeMapModuleEntry {
		i32 33555352, ; uint32_t type_token_id (0x2000398)
		i32 861; uint32_t java_map_index (0x35d)
	}, ; 404
	%struct.TypeMapModuleEntry {
		i32 33555353, ; uint32_t type_token_id (0x2000399)
		i32 701; uint32_t java_map_index (0x2bd)
	}, ; 405
	%struct.TypeMapModuleEntry {
		i32 33555354, ; uint32_t type_token_id (0x200039a)
		i32 756; uint32_t java_map_index (0x2f4)
	}, ; 406
	%struct.TypeMapModuleEntry {
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 519; uint32_t java_map_index (0x207)
	}, ; 407
	%struct.TypeMapModuleEntry {
		i32 33555356, ; uint32_t type_token_id (0x200039c)
		i32 313; uint32_t java_map_index (0x139)
	}, ; 408
	%struct.TypeMapModuleEntry {
		i32 33555359, ; uint32_t type_token_id (0x200039f)
		i32 138; uint32_t java_map_index (0x8a)
	}, ; 409
	%struct.TypeMapModuleEntry {
		i32 33555360, ; uint32_t type_token_id (0x20003a0)
		i32 399; uint32_t java_map_index (0x18f)
	}, ; 410
	%struct.TypeMapModuleEntry {
		i32 33555361, ; uint32_t type_token_id (0x20003a1)
		i32 61; uint32_t java_map_index (0x3d)
	}, ; 411
	%struct.TypeMapModuleEntry {
		i32 33555362, ; uint32_t type_token_id (0x20003a2)
		i32 950; uint32_t java_map_index (0x3b6)
	}, ; 412
	%struct.TypeMapModuleEntry {
		i32 33555364, ; uint32_t type_token_id (0x20003a4)
		i32 125; uint32_t java_map_index (0x7d)
	}, ; 413
	%struct.TypeMapModuleEntry {
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 407; uint32_t java_map_index (0x197)
	}, ; 414
	%struct.TypeMapModuleEntry {
		i32 33555367, ; uint32_t type_token_id (0x20003a7)
		i32 101; uint32_t java_map_index (0x65)
	}, ; 415
	%struct.TypeMapModuleEntry {
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 922; uint32_t java_map_index (0x39a)
	}, ; 416
	%struct.TypeMapModuleEntry {
		i32 33555370, ; uint32_t type_token_id (0x20003aa)
		i32 187; uint32_t java_map_index (0xbb)
	}, ; 417
	%struct.TypeMapModuleEntry {
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 582; uint32_t java_map_index (0x246)
	}, ; 418
	%struct.TypeMapModuleEntry {
		i32 33555372, ; uint32_t type_token_id (0x20003ac)
		i32 483; uint32_t java_map_index (0x1e3)
	}, ; 419
	%struct.TypeMapModuleEntry {
		i32 33555374, ; uint32_t type_token_id (0x20003ae)
		i32 747; uint32_t java_map_index (0x2eb)
	}, ; 420
	%struct.TypeMapModuleEntry {
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 840; uint32_t java_map_index (0x348)
	}, ; 421
	%struct.TypeMapModuleEntry {
		i32 33555377, ; uint32_t type_token_id (0x20003b1)
		i32 478; uint32_t java_map_index (0x1de)
	}, ; 422
	%struct.TypeMapModuleEntry {
		i32 33555378, ; uint32_t type_token_id (0x20003b2)
		i32 796; uint32_t java_map_index (0x31c)
	}, ; 423
	%struct.TypeMapModuleEntry {
		i32 33555379, ; uint32_t type_token_id (0x20003b3)
		i32 411; uint32_t java_map_index (0x19b)
	}, ; 424
	%struct.TypeMapModuleEntry {
		i32 33555380, ; uint32_t type_token_id (0x20003b4)
		i32 234; uint32_t java_map_index (0xea)
	}, ; 425
	%struct.TypeMapModuleEntry {
		i32 33555381, ; uint32_t type_token_id (0x20003b5)
		i32 776; uint32_t java_map_index (0x308)
	}, ; 426
	%struct.TypeMapModuleEntry {
		i32 33555382, ; uint32_t type_token_id (0x20003b6)
		i32 510; uint32_t java_map_index (0x1fe)
	}, ; 427
	%struct.TypeMapModuleEntry {
		i32 33555384, ; uint32_t type_token_id (0x20003b8)
		i32 941; uint32_t java_map_index (0x3ad)
	}, ; 428
	%struct.TypeMapModuleEntry {
		i32 33555385, ; uint32_t type_token_id (0x20003b9)
		i32 327; uint32_t java_map_index (0x147)
	}, ; 429
	%struct.TypeMapModuleEntry {
		i32 33555387, ; uint32_t type_token_id (0x20003bb)
		i32 284; uint32_t java_map_index (0x11c)
	}, ; 430
	%struct.TypeMapModuleEntry {
		i32 33555388, ; uint32_t type_token_id (0x20003bc)
		i32 40; uint32_t java_map_index (0x28)
	}, ; 431
	%struct.TypeMapModuleEntry {
		i32 33555389, ; uint32_t type_token_id (0x20003bd)
		i32 988; uint32_t java_map_index (0x3dc)
	}, ; 432
	%struct.TypeMapModuleEntry {
		i32 33555390, ; uint32_t type_token_id (0x20003be)
		i32 841; uint32_t java_map_index (0x349)
	}, ; 433
	%struct.TypeMapModuleEntry {
		i32 33555392, ; uint32_t type_token_id (0x20003c0)
		i32 804; uint32_t java_map_index (0x324)
	}, ; 434
	%struct.TypeMapModuleEntry {
		i32 33555395, ; uint32_t type_token_id (0x20003c3)
		i32 451; uint32_t java_map_index (0x1c3)
	}, ; 435
	%struct.TypeMapModuleEntry {
		i32 33555396, ; uint32_t type_token_id (0x20003c4)
		i32 673; uint32_t java_map_index (0x2a1)
	}, ; 436
	%struct.TypeMapModuleEntry {
		i32 33555397, ; uint32_t type_token_id (0x20003c5)
		i32 668; uint32_t java_map_index (0x29c)
	}, ; 437
	%struct.TypeMapModuleEntry {
		i32 33555398, ; uint32_t type_token_id (0x20003c6)
		i32 694; uint32_t java_map_index (0x2b6)
	}, ; 438
	%struct.TypeMapModuleEntry {
		i32 33555399, ; uint32_t type_token_id (0x20003c7)
		i32 461; uint32_t java_map_index (0x1cd)
	}, ; 439
	%struct.TypeMapModuleEntry {
		i32 33555401, ; uint32_t type_token_id (0x20003c9)
		i32 543; uint32_t java_map_index (0x21f)
	}, ; 440
	%struct.TypeMapModuleEntry {
		i32 33555402, ; uint32_t type_token_id (0x20003ca)
		i32 530; uint32_t java_map_index (0x212)
	}, ; 441
	%struct.TypeMapModuleEntry {
		i32 33555403, ; uint32_t type_token_id (0x20003cb)
		i32 678; uint32_t java_map_index (0x2a6)
	}, ; 442
	%struct.TypeMapModuleEntry {
		i32 33555405, ; uint32_t type_token_id (0x20003cd)
		i32 775; uint32_t java_map_index (0x307)
	}, ; 443
	%struct.TypeMapModuleEntry {
		i32 33555406, ; uint32_t type_token_id (0x20003ce)
		i32 749; uint32_t java_map_index (0x2ed)
	}, ; 444
	%struct.TypeMapModuleEntry {
		i32 33555407, ; uint32_t type_token_id (0x20003cf)
		i32 522; uint32_t java_map_index (0x20a)
	}, ; 445
	%struct.TypeMapModuleEntry {
		i32 33555408, ; uint32_t type_token_id (0x20003d0)
		i32 569; uint32_t java_map_index (0x239)
	}, ; 446
	%struct.TypeMapModuleEntry {
		i32 33555409, ; uint32_t type_token_id (0x20003d1)
		i32 818; uint32_t java_map_index (0x332)
	}, ; 447
	%struct.TypeMapModuleEntry {
		i32 33555410, ; uint32_t type_token_id (0x20003d2)
		i32 3; uint32_t java_map_index (0x3)
	}, ; 448
	%struct.TypeMapModuleEntry {
		i32 33555412, ; uint32_t type_token_id (0x20003d4)
		i32 516; uint32_t java_map_index (0x204)
	}, ; 449
	%struct.TypeMapModuleEntry {
		i32 33555413, ; uint32_t type_token_id (0x20003d5)
		i32 617; uint32_t java_map_index (0x269)
	}, ; 450
	%struct.TypeMapModuleEntry {
		i32 33555414, ; uint32_t type_token_id (0x20003d6)
		i32 811; uint32_t java_map_index (0x32b)
	}, ; 451
	%struct.TypeMapModuleEntry {
		i32 33555415, ; uint32_t type_token_id (0x20003d7)
		i32 559; uint32_t java_map_index (0x22f)
	}, ; 452
	%struct.TypeMapModuleEntry {
		i32 33555416, ; uint32_t type_token_id (0x20003d8)
		i32 156; uint32_t java_map_index (0x9c)
	}, ; 453
	%struct.TypeMapModuleEntry {
		i32 33555431, ; uint32_t type_token_id (0x20003e7)
		i32 727; uint32_t java_map_index (0x2d7)
	} ; 454
], align 16

@module25_managed_to_java_duplicates = internal dso_local constant [172 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 821; uint32_t java_map_index (0x335)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 220; uint32_t java_map_index (0xdc)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 326; uint32_t java_map_index (0x146)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554605, ; uint32_t type_token_id (0x20000ad)
		i32 267; uint32_t java_map_index (0x10b)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554607, ; uint32_t type_token_id (0x20000af)
		i32 31; uint32_t java_map_index (0x1f)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 820; uint32_t java_map_index (0x334)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 491; uint32_t java_map_index (0x1eb)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554613, ; uint32_t type_token_id (0x20000b5)
		i32 364; uint32_t java_map_index (0x16c)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554615, ; uint32_t type_token_id (0x20000b7)
		i32 849; uint32_t java_map_index (0x351)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554617, ; uint32_t type_token_id (0x20000b9)
		i32 860; uint32_t java_map_index (0x35c)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 978; uint32_t java_map_index (0x3d2)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554624, ; uint32_t type_token_id (0x20000c0)
		i32 245; uint32_t java_map_index (0xf5)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554626, ; uint32_t type_token_id (0x20000c2)
		i32 575; uint32_t java_map_index (0x23f)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554629, ; uint32_t type_token_id (0x20000c5)
		i32 258; uint32_t java_map_index (0x102)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554631, ; uint32_t type_token_id (0x20000c7)
		i32 131; uint32_t java_map_index (0x83)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554634, ; uint32_t type_token_id (0x20000ca)
		i32 509; uint32_t java_map_index (0x1fd)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554637, ; uint32_t type_token_id (0x20000cd)
		i32 711; uint32_t java_map_index (0x2c7)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554641, ; uint32_t type_token_id (0x20000d1)
		i32 73; uint32_t java_map_index (0x49)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554643, ; uint32_t type_token_id (0x20000d3)
		i32 827; uint32_t java_map_index (0x33b)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554644, ; uint32_t type_token_id (0x20000d4)
		i32 191; uint32_t java_map_index (0xbf)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554650, ; uint32_t type_token_id (0x20000da)
		i32 982; uint32_t java_map_index (0x3d6)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554655, ; uint32_t type_token_id (0x20000df)
		i32 771; uint32_t java_map_index (0x303)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554661, ; uint32_t type_token_id (0x20000e5)
		i32 615; uint32_t java_map_index (0x267)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554667, ; uint32_t type_token_id (0x20000eb)
		i32 698; uint32_t java_map_index (0x2ba)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554672, ; uint32_t type_token_id (0x20000f0)
		i32 323; uint32_t java_map_index (0x143)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554674, ; uint32_t type_token_id (0x20000f2)
		i32 708; uint32_t java_map_index (0x2c4)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554676, ; uint32_t type_token_id (0x20000f4)
		i32 567; uint32_t java_map_index (0x237)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554678, ; uint32_t type_token_id (0x20000f6)
		i32 412; uint32_t java_map_index (0x19c)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554683, ; uint32_t type_token_id (0x20000fb)
		i32 30; uint32_t java_map_index (0x1e)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554685, ; uint32_t type_token_id (0x20000fd)
		i32 214; uint32_t java_map_index (0xd6)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554694, ; uint32_t type_token_id (0x2000106)
		i32 36; uint32_t java_map_index (0x24)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 806; uint32_t java_map_index (0x326)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554709, ; uint32_t type_token_id (0x2000115)
		i32 191; uint32_t java_map_index (0xbf)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554710, ; uint32_t type_token_id (0x2000116)
		i32 982; uint32_t java_map_index (0x3d6)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554712, ; uint32_t type_token_id (0x2000118)
		i32 487; uint32_t java_map_index (0x1e7)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554714, ; uint32_t type_token_id (0x200011a)
		i32 25; uint32_t java_map_index (0x19)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554716, ; uint32_t type_token_id (0x200011c)
		i32 831; uint32_t java_map_index (0x33f)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554720, ; uint32_t type_token_id (0x2000120)
		i32 762; uint32_t java_map_index (0x2fa)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554722, ; uint32_t type_token_id (0x2000122)
		i32 930; uint32_t java_map_index (0x3a2)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554724, ; uint32_t type_token_id (0x2000124)
		i32 255; uint32_t java_map_index (0xff)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554731, ; uint32_t type_token_id (0x200012b)
		i32 751; uint32_t java_map_index (0x2ef)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554741, ; uint32_t type_token_id (0x2000135)
		i32 823; uint32_t java_map_index (0x337)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554744, ; uint32_t type_token_id (0x2000138)
		i32 222; uint32_t java_map_index (0xde)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 202; uint32_t java_map_index (0xca)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554750, ; uint32_t type_token_id (0x200013e)
		i32 298; uint32_t java_map_index (0x12a)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554752, ; uint32_t type_token_id (0x2000140)
		i32 252; uint32_t java_map_index (0xfc)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554755, ; uint32_t type_token_id (0x2000143)
		i32 51; uint32_t java_map_index (0x33)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554758, ; uint32_t type_token_id (0x2000146)
		i32 276; uint32_t java_map_index (0x114)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554760, ; uint32_t type_token_id (0x2000148)
		i32 454; uint32_t java_map_index (0x1c6)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 350; uint32_t java_map_index (0x15e)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554769, ; uint32_t type_token_id (0x2000151)
		i32 497; uint32_t java_map_index (0x1f1)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554784, ; uint32_t type_token_id (0x2000160)
		i32 691; uint32_t java_map_index (0x2b3)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554786, ; uint32_t type_token_id (0x2000162)
		i32 133; uint32_t java_map_index (0x85)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554789, ; uint32_t type_token_id (0x2000165)
		i32 52; uint32_t java_map_index (0x34)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554791, ; uint32_t type_token_id (0x2000167)
		i32 683; uint32_t java_map_index (0x2ab)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554793, ; uint32_t type_token_id (0x2000169)
		i32 322; uint32_t java_map_index (0x142)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554795, ; uint32_t type_token_id (0x200016b)
		i32 367; uint32_t java_map_index (0x16f)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554803, ; uint32_t type_token_id (0x2000173)
		i32 917; uint32_t java_map_index (0x395)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554806, ; uint32_t type_token_id (0x2000176)
		i32 93; uint32_t java_map_index (0x5d)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554808, ; uint32_t type_token_id (0x2000178)
		i32 432; uint32_t java_map_index (0x1b0)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554810, ; uint32_t type_token_id (0x200017a)
		i32 212; uint32_t java_map_index (0xd4)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554830, ; uint32_t type_token_id (0x200018e)
		i32 505; uint32_t java_map_index (0x1f9)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554832, ; uint32_t type_token_id (0x2000190)
		i32 456; uint32_t java_map_index (0x1c8)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554834, ; uint32_t type_token_id (0x2000192)
		i32 231; uint32_t java_map_index (0xe7)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554836, ; uint32_t type_token_id (0x2000194)
		i32 196; uint32_t java_map_index (0xc4)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554838, ; uint32_t type_token_id (0x2000196)
		i32 390; uint32_t java_map_index (0x186)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554849, ; uint32_t type_token_id (0x20001a1)
		i32 235; uint32_t java_map_index (0xeb)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554852, ; uint32_t type_token_id (0x20001a4)
		i32 316; uint32_t java_map_index (0x13c)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554854, ; uint32_t type_token_id (0x20001a6)
		i32 576; uint32_t java_map_index (0x240)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554856, ; uint32_t type_token_id (0x20001a8)
		i32 108; uint32_t java_map_index (0x6c)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554860, ; uint32_t type_token_id (0x20001ac)
		i32 300; uint32_t java_map_index (0x12c)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33554861, ; uint32_t type_token_id (0x20001ad)
		i32 661; uint32_t java_map_index (0x295)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33554863, ; uint32_t type_token_id (0x20001af)
		i32 59; uint32_t java_map_index (0x3b)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33554865, ; uint32_t type_token_id (0x20001b1)
		i32 35; uint32_t java_map_index (0x23)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33554868, ; uint32_t type_token_id (0x20001b4)
		i32 416; uint32_t java_map_index (0x1a0)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33554872, ; uint32_t type_token_id (0x20001b8)
		i32 420; uint32_t java_map_index (0x1a4)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33554884, ; uint32_t type_token_id (0x20001c4)
		i32 337; uint32_t java_map_index (0x151)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33554887, ; uint32_t type_token_id (0x20001c7)
		i32 173; uint32_t java_map_index (0xad)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33554902, ; uint32_t type_token_id (0x20001d6)
		i32 126; uint32_t java_map_index (0x7e)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33554913, ; uint32_t type_token_id (0x20001e1)
		i32 253; uint32_t java_map_index (0xfd)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33554914, ; uint32_t type_token_id (0x20001e2)
		i32 335; uint32_t java_map_index (0x14f)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33554916, ; uint32_t type_token_id (0x20001e4)
		i32 27; uint32_t java_map_index (0x1b)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33554923, ; uint32_t type_token_id (0x20001eb)
		i32 974; uint32_t java_map_index (0x3ce)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33554925, ; uint32_t type_token_id (0x20001ed)
		i32 966; uint32_t java_map_index (0x3c6)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33554927, ; uint32_t type_token_id (0x20001ef)
		i32 436; uint32_t java_map_index (0x1b4)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33554929, ; uint32_t type_token_id (0x20001f1)
		i32 273; uint32_t java_map_index (0x111)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33554932, ; uint32_t type_token_id (0x20001f4)
		i32 260; uint32_t java_map_index (0x104)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33554934, ; uint32_t type_token_id (0x20001f6)
		i32 466; uint32_t java_map_index (0x1d2)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33554936, ; uint32_t type_token_id (0x20001f8)
		i32 203; uint32_t java_map_index (0xcb)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33554939, ; uint32_t type_token_id (0x20001fb)
		i32 170; uint32_t java_map_index (0xaa)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33554941, ; uint32_t type_token_id (0x20001fd)
		i32 120; uint32_t java_map_index (0x78)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33554943, ; uint32_t type_token_id (0x20001ff)
		i32 137; uint32_t java_map_index (0x89)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33554945, ; uint32_t type_token_id (0x2000201)
		i32 726; uint32_t java_map_index (0x2d6)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33554947, ; uint32_t type_token_id (0x2000203)
		i32 785; uint32_t java_map_index (0x311)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33554949, ; uint32_t type_token_id (0x2000205)
		i32 184; uint32_t java_map_index (0xb8)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33554951, ; uint32_t type_token_id (0x2000207)
		i32 534; uint32_t java_map_index (0x216)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33554954, ; uint32_t type_token_id (0x200020a)
		i32 240; uint32_t java_map_index (0xf0)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33554955, ; uint32_t type_token_id (0x200020b)
		i32 90; uint32_t java_map_index (0x5a)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33554957, ; uint32_t type_token_id (0x200020d)
		i32 556; uint32_t java_map_index (0x22c)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33554961, ; uint32_t type_token_id (0x2000211)
		i32 479; uint32_t java_map_index (0x1df)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33554965, ; uint32_t type_token_id (0x2000215)
		i32 467; uint32_t java_map_index (0x1d3)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33554968, ; uint32_t type_token_id (0x2000218)
		i32 81; uint32_t java_map_index (0x51)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33554976, ; uint32_t type_token_id (0x2000220)
		i32 303; uint32_t java_map_index (0x12f)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33554981, ; uint32_t type_token_id (0x2000225)
		i32 754; uint32_t java_map_index (0x2f2)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33554984, ; uint32_t type_token_id (0x2000228)
		i32 442; uint32_t java_map_index (0x1ba)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33554986, ; uint32_t type_token_id (0x200022a)
		i32 409; uint32_t java_map_index (0x199)
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 33554990, ; uint32_t type_token_id (0x200022e)
		i32 12; uint32_t java_map_index (0xc)
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 33554992, ; uint32_t type_token_id (0x2000230)
		i32 717; uint32_t java_map_index (0x2cd)
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 33554996, ; uint32_t type_token_id (0x2000234)
		i32 572; uint32_t java_map_index (0x23c)
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 33555000, ; uint32_t type_token_id (0x2000238)
		i32 423; uint32_t java_map_index (0x1a7)
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 33555004, ; uint32_t type_token_id (0x200023c)
		i32 781; uint32_t java_map_index (0x30d)
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 33555029, ; uint32_t type_token_id (0x2000255)
		i32 301; uint32_t java_map_index (0x12d)
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 33555036, ; uint32_t type_token_id (0x200025c)
		i32 910; uint32_t java_map_index (0x38e)
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 33555040, ; uint32_t type_token_id (0x2000260)
		i32 489; uint32_t java_map_index (0x1e9)
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 33555043, ; uint32_t type_token_id (0x2000263)
		i32 366; uint32_t java_map_index (0x16e)
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 33555044, ; uint32_t type_token_id (0x2000264)
		i32 145; uint32_t java_map_index (0x91)
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 33555084, ; uint32_t type_token_id (0x200028c)
		i32 926; uint32_t java_map_index (0x39e)
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 33555085, ; uint32_t type_token_id (0x200028d)
		i32 604; uint32_t java_map_index (0x25c)
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 33555089, ; uint32_t type_token_id (0x2000291)
		i32 876; uint32_t java_map_index (0x36c)
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 33555092, ; uint32_t type_token_id (0x2000294)
		i32 224; uint32_t java_map_index (0xe0)
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 33555129, ; uint32_t type_token_id (0x20002b9)
		i32 989; uint32_t java_map_index (0x3dd)
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 33555135, ; uint32_t type_token_id (0x20002bf)
		i32 428; uint32_t java_map_index (0x1ac)
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 33555140, ; uint32_t type_token_id (0x20002c4)
		i32 626; uint32_t java_map_index (0x272)
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 33555144, ; uint32_t type_token_id (0x20002c8)
		i32 56; uint32_t java_map_index (0x38)
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 33555215, ; uint32_t type_token_id (0x200030f)
		i32 677; uint32_t java_map_index (0x2a5)
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 33555216, ; uint32_t type_token_id (0x2000310)
		i32 503; uint32_t java_map_index (0x1f7)
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 33555219, ; uint32_t type_token_id (0x2000313)
		i32 765; uint32_t java_map_index (0x2fd)
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 1; uint32_t java_map_index (0x1)
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 33555231, ; uint32_t type_token_id (0x200031f)
		i32 528; uint32_t java_map_index (0x210)
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 33555238, ; uint32_t type_token_id (0x2000326)
		i32 13; uint32_t java_map_index (0xd)
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 33555241, ; uint32_t type_token_id (0x2000329)
		i32 241; uint32_t java_map_index (0xf1)
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 33555247, ; uint32_t type_token_id (0x200032f)
		i32 370; uint32_t java_map_index (0x172)
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 33555249, ; uint32_t type_token_id (0x2000331)
		i32 662; uint32_t java_map_index (0x296)
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 33555252, ; uint32_t type_token_id (0x2000334)
		i32 744; uint32_t java_map_index (0x2e8)
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 33555255, ; uint32_t type_token_id (0x2000337)
		i32 886; uint32_t java_map_index (0x376)
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 33555259, ; uint32_t type_token_id (0x200033b)
		i32 233; uint32_t java_map_index (0xe9)
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 33555262, ; uint32_t type_token_id (0x200033e)
		i32 246; uint32_t java_map_index (0xf6)
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 33555264, ; uint32_t type_token_id (0x2000340)
		i32 88; uint32_t java_map_index (0x58)
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 33555267, ; uint32_t type_token_id (0x2000343)
		i32 655; uint32_t java_map_index (0x28f)
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 33555270, ; uint32_t type_token_id (0x2000346)
		i32 194; uint32_t java_map_index (0xc2)
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 911; uint32_t java_map_index (0x38f)
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 977; uint32_t java_map_index (0x3d1)
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 783; uint32_t java_map_index (0x30f)
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 33555289, ; uint32_t type_token_id (0x2000359)
		i32 706; uint32_t java_map_index (0x2c2)
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 33555299, ; uint32_t type_token_id (0x2000363)
		i32 200; uint32_t java_map_index (0xc8)
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 33555310, ; uint32_t type_token_id (0x200036e)
		i32 940; uint32_t java_map_index (0x3ac)
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 33555312, ; uint32_t type_token_id (0x2000370)
		i32 67; uint32_t java_map_index (0x43)
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 33555316, ; uint32_t type_token_id (0x2000374)
		i32 49; uint32_t java_map_index (0x31)
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 33555318, ; uint32_t type_token_id (0x2000376)
		i32 596; uint32_t java_map_index (0x254)
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 33555320, ; uint32_t type_token_id (0x2000378)
		i32 900; uint32_t java_map_index (0x384)
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 33555322, ; uint32_t type_token_id (0x200037a)
		i32 4; uint32_t java_map_index (0x4)
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 33555324, ; uint32_t type_token_id (0x200037c)
		i32 640; uint32_t java_map_index (0x280)
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 29; uint32_t java_map_index (0x1d)
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 972; uint32_t java_map_index (0x3cc)
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 493; uint32_t java_map_index (0x1ed)
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 630; uint32_t java_map_index (0x276)
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 33555340, ; uint32_t type_token_id (0x200038c)
		i32 763; uint32_t java_map_index (0x2fb)
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 33555342, ; uint32_t type_token_id (0x200038e)
		i32 444; uint32_t java_map_index (0x1bc)
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 33555345, ; uint32_t type_token_id (0x2000391)
		i32 134; uint32_t java_map_index (0x86)
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 33555351, ; uint32_t type_token_id (0x2000397)
		i32 218; uint32_t java_map_index (0xda)
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 33555357, ; uint32_t type_token_id (0x200039d)
		i32 313; uint32_t java_map_index (0x139)
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 33555363, ; uint32_t type_token_id (0x20003a3)
		i32 950; uint32_t java_map_index (0x3b6)
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 33555365, ; uint32_t type_token_id (0x20003a5)
		i32 125; uint32_t java_map_index (0x7d)
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 33555369, ; uint32_t type_token_id (0x20003a9)
		i32 922; uint32_t java_map_index (0x39a)
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 33555373, ; uint32_t type_token_id (0x20003ad)
		i32 483; uint32_t java_map_index (0x1e3)
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 33555376, ; uint32_t type_token_id (0x20003b0)
		i32 840; uint32_t java_map_index (0x348)
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 33555383, ; uint32_t type_token_id (0x20003b7)
		i32 510; uint32_t java_map_index (0x1fe)
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 33555386, ; uint32_t type_token_id (0x20003ba)
		i32 327; uint32_t java_map_index (0x147)
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 33555391, ; uint32_t type_token_id (0x20003bf)
		i32 841; uint32_t java_map_index (0x349)
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 33555393, ; uint32_t type_token_id (0x20003c1)
		i32 804; uint32_t java_map_index (0x324)
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 33555400, ; uint32_t type_token_id (0x20003c8)
		i32 461; uint32_t java_map_index (0x1cd)
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 33555404, ; uint32_t type_token_id (0x20003cc)
		i32 678; uint32_t java_map_index (0x2a6)
	} ; 171
], align 16

@module26_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 123; uint32_t java_map_index (0x7b)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 679; uint32_t java_map_index (0x2a7)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 688; uint32_t java_map_index (0x2b0)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 549; uint32_t java_map_index (0x225)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 843; uint32_t java_map_index (0x34b)
	} ; 4
], align 16

@module26_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 549; uint32_t java_map_index (0x225)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 843; uint32_t java_map_index (0x34b)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 123; uint32_t java_map_index (0x7b)
	} ; 2
], align 16

@module27_managed_to_java = internal dso_local constant [65 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554488, ; uint32_t type_token_id (0x2000038)
		i32 63; uint32_t java_map_index (0x3f)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 20; uint32_t java_map_index (0x14)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 216; uint32_t java_map_index (0xd8)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 208; uint32_t java_map_index (0xd0)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 525; uint32_t java_map_index (0x20d)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 158; uint32_t java_map_index (0x9e)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 501; uint32_t java_map_index (0x1f5)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 195; uint32_t java_map_index (0xc3)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 78; uint32_t java_map_index (0x4e)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 42; uint32_t java_map_index (0x2a)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 689; uint32_t java_map_index (0x2b1)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 142; uint32_t java_map_index (0x8e)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 7; uint32_t java_map_index (0x7)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 334; uint32_t java_map_index (0x14e)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 89; uint32_t java_map_index (0x59)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 65; uint32_t java_map_index (0x41)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 561; uint32_t java_map_index (0x231)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 932; uint32_t java_map_index (0x3a4)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 248; uint32_t java_map_index (0xf8)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 612; uint32_t java_map_index (0x264)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 637; uint32_t java_map_index (0x27d)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 471; uint32_t java_map_index (0x1d7)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 614; uint32_t java_map_index (0x266)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 480; uint32_t java_map_index (0x1e0)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 464; uint32_t java_map_index (0x1d0)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 459; uint32_t java_map_index (0x1cb)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 508; uint32_t java_map_index (0x1fc)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 349; uint32_t java_map_index (0x15d)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 836; uint32_t java_map_index (0x344)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 601; uint32_t java_map_index (0x259)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 99; uint32_t java_map_index (0x63)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 611; uint32_t java_map_index (0x263)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 913; uint32_t java_map_index (0x391)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 933; uint32_t java_map_index (0x3a5)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 664; uint32_t java_map_index (0x298)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 537; uint32_t java_map_index (0x219)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 209; uint32_t java_map_index (0xd1)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 68; uint32_t java_map_index (0x44)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 127; uint32_t java_map_index (0x7f)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 329; uint32_t java_map_index (0x149)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 369; uint32_t java_map_index (0x171)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 986; uint32_t java_map_index (0x3da)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 299; uint32_t java_map_index (0x12b)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 692; uint32_t java_map_index (0x2b4)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 413; uint32_t java_map_index (0x19d)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 975; uint32_t java_map_index (0x3cf)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 236; uint32_t java_map_index (0xec)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 628; uint32_t java_map_index (0x274)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 810; uint32_t java_map_index (0x32a)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 755; uint32_t java_map_index (0x2f3)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 779; uint32_t java_map_index (0x30b)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 566; uint32_t java_map_index (0x236)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 794; uint32_t java_map_index (0x31a)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 237; uint32_t java_map_index (0xed)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554575, ; uint32_t type_token_id (0x200008f)
		i32 552; uint32_t java_map_index (0x228)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 499; uint32_t java_map_index (0x1f3)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554577, ; uint32_t type_token_id (0x2000091)
		i32 205; uint32_t java_map_index (0xcd)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 636; uint32_t java_map_index (0x27c)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 833; uint32_t java_map_index (0x341)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 670; uint32_t java_map_index (0x29e)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 71; uint32_t java_map_index (0x47)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 511; uint32_t java_map_index (0x1ff)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 979; uint32_t java_map_index (0x3d3)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 485; uint32_t java_map_index (0x1e5)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 738; uint32_t java_map_index (0x2e2)
	} ; 64
], align 16

@module27_managed_to_java_duplicates = internal dso_local constant [23 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554489, ; uint32_t type_token_id (0x2000039)
		i32 63; uint32_t java_map_index (0x3f)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 20; uint32_t java_map_index (0x14)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 525; uint32_t java_map_index (0x20d)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 42; uint32_t java_map_index (0x2a)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 65; uint32_t java_map_index (0x41)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 89; uint32_t java_map_index (0x59)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 248; uint32_t java_map_index (0xf8)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 464; uint32_t java_map_index (0x1d0)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 508; uint32_t java_map_index (0x1fc)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 480; uint32_t java_map_index (0x1e0)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 99; uint32_t java_map_index (0x63)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 611; uint32_t java_map_index (0x263)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 913; uint32_t java_map_index (0x391)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 933; uint32_t java_map_index (0x3a5)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 664; uint32_t java_map_index (0x298)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 537; uint32_t java_map_index (0x219)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 209; uint32_t java_map_index (0xd1)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 127; uint32_t java_map_index (0x7f)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 299; uint32_t java_map_index (0x12b)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 236; uint32_t java_map_index (0xec)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 566; uint32_t java_map_index (0x236)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 511; uint32_t java_map_index (0x1ff)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 979; uint32_t java_map_index (0x3d3)
	} ; 22
], align 16

@module28_managed_to_java = internal dso_local constant [67 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 176; uint32_t java_map_index (0xb0)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 477; uint32_t java_map_index (0x1dd)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 357; uint32_t java_map_index (0x165)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 767; uint32_t java_map_index (0x2ff)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 623; uint32_t java_map_index (0x26f)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 908; uint32_t java_map_index (0x38c)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 869; uint32_t java_map_index (0x365)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 842; uint32_t java_map_index (0x34a)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 872; uint32_t java_map_index (0x368)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 381; uint32_t java_map_index (0x17d)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 882; uint32_t java_map_index (0x372)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 408; uint32_t java_map_index (0x198)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 419; uint32_t java_map_index (0x1a3)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 809; uint32_t java_map_index (0x329)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 2; uint32_t java_map_index (0x2)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 506; uint32_t java_map_index (0x1fa)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 866; uint32_t java_map_index (0x362)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 656; uint32_t java_map_index (0x290)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 644; uint32_t java_map_index (0x284)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 834; uint32_t java_map_index (0x342)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 348; uint32_t java_map_index (0x15c)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 622; uint32_t java_map_index (0x26e)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 695; uint32_t java_map_index (0x2b7)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 8; uint32_t java_map_index (0x8)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 580; uint32_t java_map_index (0x244)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 946; uint32_t java_map_index (0x3b2)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 310; uint32_t java_map_index (0x136)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 290; uint32_t java_map_index (0x122)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 269; uint32_t java_map_index (0x10d)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 392; uint32_t java_map_index (0x188)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 718; uint32_t java_map_index (0x2ce)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 85; uint32_t java_map_index (0x55)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 958; uint32_t java_map_index (0x3be)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 117; uint32_t java_map_index (0x75)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 470; uint32_t java_map_index (0x1d6)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 69; uint32_t java_map_index (0x45)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 663; uint32_t java_map_index (0x297)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 595; uint32_t java_map_index (0x253)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 568; uint32_t java_map_index (0x238)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 909; uint32_t java_map_index (0x38d)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 563; uint32_t java_map_index (0x233)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 278; uint32_t java_map_index (0x116)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 282; uint32_t java_map_index (0x11a)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 383; uint32_t java_map_index (0x17f)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 311; uint32_t java_map_index (0x137)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 822; uint32_t java_map_index (0x336)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 605; uint32_t java_map_index (0x25d)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554589, ; uint32_t type_token_id (0x200009d)
		i32 109; uint32_t java_map_index (0x6d)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554590, ; uint32_t type_token_id (0x200009e)
		i32 96; uint32_t java_map_index (0x60)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 962; uint32_t java_map_index (0x3c2)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 251; uint32_t java_map_index (0xfb)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 324; uint32_t java_map_index (0x144)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 155; uint32_t java_map_index (0x9b)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554598, ; uint32_t type_token_id (0x20000a6)
		i32 693; uint32_t java_map_index (0x2b5)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 937; uint32_t java_map_index (0x3a9)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 121; uint32_t java_map_index (0x79)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 72; uint32_t java_map_index (0x48)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 788; uint32_t java_map_index (0x314)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554605, ; uint32_t type_token_id (0x20000ad)
		i32 814; uint32_t java_map_index (0x32e)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 502; uint32_t java_map_index (0x1f6)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 883; uint32_t java_map_index (0x373)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554612, ; uint32_t type_token_id (0x20000b4)
		i32 422; uint32_t java_map_index (0x1a6)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554613, ; uint32_t type_token_id (0x20000b5)
		i32 956; uint32_t java_map_index (0x3bc)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 531; uint32_t java_map_index (0x213)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 826; uint32_t java_map_index (0x33a)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554622, ; uint32_t type_token_id (0x20000be)
		i32 146; uint32_t java_map_index (0x92)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554623, ; uint32_t type_token_id (0x20000bf)
		i32 901; uint32_t java_map_index (0x385)
	} ; 66
], align 16

@module28_managed_to_java_duplicates = internal dso_local constant [25 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 357; uint32_t java_map_index (0x165)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 842; uint32_t java_map_index (0x34a)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 809; uint32_t java_map_index (0x329)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 506; uint32_t java_map_index (0x1fa)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 644; uint32_t java_map_index (0x284)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 622; uint32_t java_map_index (0x26e)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 946; uint32_t java_map_index (0x3b2)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 290; uint32_t java_map_index (0x122)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 392; uint32_t java_map_index (0x188)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 718; uint32_t java_map_index (0x2ce)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 580; uint32_t java_map_index (0x244)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 117; uint32_t java_map_index (0x75)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 595; uint32_t java_map_index (0x253)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 909; uint32_t java_map_index (0x38d)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 282; uint32_t java_map_index (0x11a)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 383; uint32_t java_map_index (0x17f)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554591, ; uint32_t type_token_id (0x200009f)
		i32 96; uint32_t java_map_index (0x60)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554593, ; uint32_t type_token_id (0x20000a1)
		i32 962; uint32_t java_map_index (0x3c2)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 324; uint32_t java_map_index (0x144)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 937; uint32_t java_map_index (0x3a9)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554603, ; uint32_t type_token_id (0x20000ab)
		i32 72; uint32_t java_map_index (0x48)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 814; uint32_t java_map_index (0x32e)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 883; uint32_t java_map_index (0x373)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 531; uint32_t java_map_index (0x213)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 826; uint32_t java_map_index (0x33a)
	} ; 24
], align 16

@module29_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 182; uint32_t java_map_index (0xb6)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 473; uint32_t java_map_index (0x1d9)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 778; uint32_t java_map_index (0x30a)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 944; uint32_t java_map_index (0x3b0)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 114; uint32_t java_map_index (0x72)
	} ; 4
], align 16

@module29_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 473; uint32_t java_map_index (0x1d9)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 778; uint32_t java_map_index (0x30a)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 944; uint32_t java_map_index (0x3b0)
	} ; 2
], align 16

@module30_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 919; uint32_t java_map_index (0x397)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 183; uint32_t java_map_index (0xb7)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 951; uint32_t java_map_index (0x3b7)
	} ; 2
], align 16

@module30_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 919; uint32_t java_map_index (0x397)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 183; uint32_t java_map_index (0xb7)
	} ; 1
], align 16

@module31_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 657; uint32_t java_map_index (0x291)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 984; uint32_t java_map_index (0x3d8)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554476, ; uint32_t type_token_id (0x200002c)
		i32 981; uint32_t java_map_index (0x3d5)
	} ; 2
], align 16

@module31_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 984; uint32_t java_map_index (0x3d8)
	} ; 0
], align 4

@module32_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 712; uint32_t java_map_index (0x2c8)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 308; uint32_t java_map_index (0x134)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 361; uint32_t java_map_index (0x169)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 76; uint32_t java_map_index (0x4c)
	} ; 3
], align 16

@module32_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 308; uint32_t java_map_index (0x134)
	} ; 0
], align 4

@module33_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 161; uint32_t java_map_index (0xa1)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 192; uint32_t java_map_index (0xc0)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 404; uint32_t java_map_index (0x194)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 188; uint32_t java_map_index (0xbc)
	} ; 3
], align 16

@module33_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 161; uint32_t java_map_index (0xa1)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 192; uint32_t java_map_index (0xc0)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 404; uint32_t java_map_index (0x194)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 188; uint32_t java_map_index (0xbc)
	} ; 3
], align 16

; Java to managed map
@map_java = dso_local local_unnamed_addr constant [991 x %struct.TypeMapJava] [
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555363, ; uint32_t type_token_id (0x20003a3)
		i32 176; uint32_t java_name_index (0xb0)
	}, ; 0
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 703; uint32_t java_name_index (0x2bf)
	}, ; 1
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 919; uint32_t java_name_index (0x397)
	}, ; 2
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555410, ; uint32_t type_token_id (0x20003d2)
		i32 828; uint32_t java_name_index (0x33c)
	}, ; 3
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 763; uint32_t java_name_index (0x2fb)
	}, ; 4
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 82; uint32_t java_name_index (0x52)
	}, ; 5
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555303, ; uint32_t type_token_id (0x2000367)
		i32 755; uint32_t java_name_index (0x2f3)
	}, ; 6
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 852; uint32_t java_name_index (0x354)
	}, ; 7
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 928; uint32_t java_name_index (0x3a0)
	}, ; 8
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 242; uint32_t java_name_index (0xf2)
	}, ; 9
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 326; uint32_t java_name_index (0x146)
	}, ; 10
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555184, ; uint32_t type_token_id (0x20002f0)
		i32 672; uint32_t java_name_index (0x2a0)
	}, ; 11
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 607; uint32_t java_name_index (0x25f)
	}, ; 12
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555237, ; uint32_t type_token_id (0x2000325)
		i32 714; uint32_t java_name_index (0x2ca)
	}, ; 13
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554651, ; uint32_t type_token_id (0x20000db)
		i32 409; uint32_t java_name_index (0x199)
	}, ; 14
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 43; uint32_t java_name_index (0x2b)
	}, ; 15
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554825, ; uint32_t type_token_id (0x2000189)
		i32 516; uint32_t java_name_index (0x204)
	}, ; 16
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554696, ; uint32_t type_token_id (0x2000108)
		i32 440; uint32_t java_name_index (0x1b8)
	}, ; 17
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555836, ; uint32_t type_token_id (0x200057c)
		i32 133; uint32_t java_name_index (0x85)
	}, ; 18
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554807, ; uint32_t type_token_id (0x2000177)
		i32 343; uint32_t java_name_index (0x157)
	}, ; 19
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 841; uint32_t java_name_index (0x349)
	}, ; 20
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 93; uint32_t java_name_index (0x5d)
	}, ; 21
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554981, ; uint32_t type_token_id (0x2000225)
		i32 350; uint32_t java_name_index (0x15e)
	}, ; 22
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554662, ; uint32_t type_token_id (0x20000e6)
		i32 414; uint32_t java_name_index (0x19e)
	}, ; 23
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554769, ; uint32_t type_token_id (0x2000151)
		i32 331; uint32_t java_name_index (0x14b)
	}, ; 24
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 446; uint32_t java_name_index (0x1be)
	}, ; 25
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 25; uint32_t java_name_index (0x19)
	}, ; 26
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554915, ; uint32_t type_token_id (0x20001e3)
		i32 563; uint32_t java_name_index (0x233)
	}, ; 27
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555191, ; uint32_t type_token_id (0x20002f7)
		i32 679; uint32_t java_name_index (0x2a7)
	}, ; 28
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 769; uint32_t java_name_index (0x301)
	}, ; 29
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 429; uint32_t java_name_index (0x1ad)
	}, ; 30
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 386; uint32_t java_name_index (0x182)
	}, ; 31
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555257, ; uint32_t type_token_id (0x2000339)
		i32 726; uint32_t java_name_index (0x2d6)
	}, ; 32
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554963, ; uint32_t type_token_id (0x2000213)
		i32 590; uint32_t java_name_index (0x24e)
	}, ; 33
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 185; uint32_t java_name_index (0xb9)
	}, ; 34
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 539; uint32_t java_name_index (0x21b)
	}, ; 35
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 438; uint32_t java_name_index (0x1b6)
	}, ; 36
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 481; uint32_t java_name_index (0x1e1)
	}, ; 37
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554705, ; uint32_t type_token_id (0x2000111)
		i32 444; uint32_t java_name_index (0x1bc)
	}, ; 38
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554772, ; uint32_t type_token_id (0x2000154)
		i32 479; uint32_t java_name_index (0x1df)
	}, ; 39
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555388, ; uint32_t type_token_id (0x20003bc)
		i32 811; uint32_t java_name_index (0x32b)
	}, ; 40
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555203, ; uint32_t type_token_id (0x2000303)
		i32 691; uint32_t java_name_index (0x2b3)
	}, ; 41
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 849; uint32_t java_name_index (0x351)
	}, ; 42
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555354, ; uint32_t type_token_id (0x200039a)
		i32 168; uint32_t java_name_index (0xa8)
	}, ; 43
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554690, ; uint32_t type_token_id (0x2000102)
		i32 435; uint32_t java_name_index (0x1b3)
	}, ; 44
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555190, ; uint32_t type_token_id (0x20002f6)
		i32 678; uint32_t java_name_index (0x2a6)
	}, ; 45
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 100; uint32_t java_name_index (0x64)
	}, ; 46
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 334; uint32_t java_name_index (0x14e)
	}, ; 47
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 140; uint32_t java_name_index (0x8c)
	}, ; 48
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 760; uint32_t java_name_index (0x2f8)
	}, ; 49
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 219; uint32_t java_name_index (0xdb)
	}, ; 50
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 469; uint32_t java_name_index (0x1d5)
	}, ; 51
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 488; uint32_t java_name_index (0x1e8)
	}, ; 52
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 327; uint32_t java_name_index (0x147)
	}, ; 53
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555093, ; uint32_t type_token_id (0x2000295)
		i32 640; uint32_t java_name_index (0x280)
	}, ; 54
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 238; uint32_t java_name_index (0xee)
	}, ; 55
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555143, ; uint32_t type_token_id (0x20002c7)
		i32 653; uint32_t java_name_index (0x28d)
	}, ; 56
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 81; uint32_t java_name_index (0x51)
	}, ; 57
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 777; uint32_t java_name_index (0x309)
	}, ; 58
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554862, ; uint32_t type_token_id (0x20001ae)
		i32 538; uint32_t java_name_index (0x21a)
	}, ; 59
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555059, ; uint32_t type_token_id (0x2000273)
		i32 293; uint32_t java_name_index (0x125)
	}, ; 60
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555361, ; uint32_t type_token_id (0x20003a1)
		i32 791; uint32_t java_name_index (0x317)
	}, ; 61
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555142, ; uint32_t type_token_id (0x20002c6)
		i32 652; uint32_t java_name_index (0x28c)
	}, ; 62
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 840; uint32_t java_name_index (0x348)
	}, ; 63
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 245; uint32_t java_name_index (0xf5)
	}, ; 64
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 855; uint32_t java_name_index (0x357)
	}, ; 65
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 378; uint32_t java_name_index (0x17a)
	}, ; 66
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 757; uint32_t java_name_index (0x2f5)
	}, ; 67
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 877; uint32_t java_name_index (0x36d)
	}, ; 68
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 940; uint32_t java_name_index (0x3ac)
	}, ; 69
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555803, ; uint32_t type_token_id (0x200055b)
		i32 104; uint32_t java_name_index (0x68)
	}, ; 70
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 900; uint32_t java_name_index (0x384)
	}, ; 71
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 961; uint32_t java_name_index (0x3c1)
	}, ; 72
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 405; uint32_t java_name_index (0x195)
	}, ; 73
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555282, ; uint32_t type_token_id (0x2000352)
		i32 123; uint32_t java_name_index (0x7b)
	}, ; 74
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555813, ; uint32_t type_token_id (0x2000565)
		i32 111; uint32_t java_name_index (0x6f)
	}, ; 75
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 986; uint32_t java_name_index (0x3da)
	}, ; 76
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 160; uint32_t java_name_index (0xa0)
	}, ; 77
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 848; uint32_t java_name_index (0x350)
	}, ; 78
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554799, ; uint32_t type_token_id (0x200016f)
		i32 495; uint32_t java_name_index (0x1ef)
	}, ; 79
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554762, ; uint32_t type_token_id (0x200014a)
		i32 473; uint32_t java_name_index (0x1d9)
	}, ; 80
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 593; uint32_t java_name_index (0x251)
	}, ; 81
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554747, ; uint32_t type_token_id (0x200013b)
		i32 311; uint32_t java_name_index (0x137)
	}, ; 82
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 122; uint32_t java_name_index (0x7a)
	}, ; 83
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555347, ; uint32_t type_token_id (0x2000393)
		i32 780; uint32_t java_name_index (0x30c)
	}, ; 84
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 936; uint32_t java_name_index (0x3a8)
	}, ; 85
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 704; uint32_t java_name_index (0x2c0)
	}, ; 86
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555220, ; uint32_t type_token_id (0x2000314)
		i32 701; uint32_t java_name_index (0x2bd)
	}, ; 87
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 730; uint32_t java_name_index (0x2da)
	}, ; 88
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 854; uint32_t java_name_index (0x356)
	}, ; 89
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 583; uint32_t java_name_index (0x247)
	}, ; 90
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 272; uint32_t java_name_index (0x110)
	}, ; 91
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555845, ; uint32_t type_token_id (0x2000585)
		i32 147; uint32_t java_name_index (0x93)
	}, ; 92
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 500; uint32_t java_name_index (0x1f4)
	}, ; 93
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555175, ; uint32_t type_token_id (0x20002e7)
		i32 663; uint32_t java_name_index (0x297)
	}, ; 94
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 109; uint32_t java_name_index (0x6d)
	}, ; 95
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 953; uint32_t java_name_index (0x3b9)
	}, ; 96
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554822, ; uint32_t type_token_id (0x2000186)
		i32 513; uint32_t java_name_index (0x201)
	}, ; 97
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 204; uint32_t java_name_index (0xcc)
	}, ; 98
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 870; uint32_t java_name_index (0x366)
	}, ; 99
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554972, ; uint32_t type_token_id (0x200021c)
		i32 597; uint32_t java_name_index (0x255)
	}, ; 100
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555367, ; uint32_t type_token_id (0x20003a7)
		i32 795; uint32_t java_name_index (0x31b)
	}, ; 101
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554811, ; uint32_t type_token_id (0x200017b)
		i32 503; uint32_t java_name_index (0x1f7)
	}, ; 102
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554866, ; uint32_t type_token_id (0x20001b2)
		i32 540; uint32_t java_name_index (0x21c)
	}, ; 103
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555101, ; uint32_t type_token_id (0x200029d)
		i32 307; uint32_t java_name_index (0x133)
	}, ; 104
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555348, ; uint32_t type_token_id (0x2000394)
		i32 781; uint32_t java_name_index (0x30d)
	}, ; 105
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index (0x17)
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 359; uint32_t java_name_index (0x167)
	}, ; 106
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554817, ; uint32_t type_token_id (0x2000181)
		i32 509; uint32_t java_name_index (0x1fd)
	}, ; 107
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 535; uint32_t java_name_index (0x217)
	}, ; 108
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554589, ; uint32_t type_token_id (0x200009d)
		i32 952; uint32_t java_name_index (0x3b8)
	}, ; 109
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555955, ; uint32_t type_token_id (0x20005f3)
		i32 105; uint32_t java_name_index (0x69)
	}, ; 110
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index (0xf)
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 248; uint32_t java_name_index (0xf8)
	}, ; 111
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554736, ; uint32_t type_token_id (0x2000130)
		i32 461; uint32_t java_name_index (0x1cd)
	}, ; 112
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 221; uint32_t java_name_index (0xdd)
	}, ; 113
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 976; uint32_t java_name_index (0x3d0)
	}, ; 114
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554800, ; uint32_t type_token_id (0x2000170)
		i32 496; uint32_t java_name_index (0x1f0)
	}, ; 115
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 116; uint32_t java_name_index (0x74)
	}, ; 116
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 938; uint32_t java_name_index (0x3aa)
	}, ; 117
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554962, ; uint32_t type_token_id (0x2000212)
		i32 589; uint32_t java_name_index (0x24d)
	}, ; 118
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554477, ; uint32_t type_token_id (0x200002d)
		i32 269; uint32_t java_name_index (0x10d)
	}, ; 119
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554940, ; uint32_t type_token_id (0x20001fc)
		i32 577; uint32_t java_name_index (0x241)
	}, ; 120
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 960; uint32_t java_name_index (0x3c0)
	}, ; 121
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 20; uint32_t java_name_index (0x14)
	}, ; 122
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 835; uint32_t java_name_index (0x343)
	}, ; 123
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 381; uint32_t java_name_index (0x17d)
	}, ; 124
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555364, ; uint32_t type_token_id (0x20003a4)
		i32 793; uint32_t java_name_index (0x319)
	}, ; 125
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 557; uint32_t java_name_index (0x22d)
	}, ; 126
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 878; uint32_t java_name_index (0x36e)
	}, ; 127
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554732, ; uint32_t type_token_id (0x200012c)
		i32 457; uint32_t java_name_index (0x1c9)
	}, ; 128
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554826, ; uint32_t type_token_id (0x200018a)
		i32 517; uint32_t java_name_index (0x205)
	}, ; 129
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554974, ; uint32_t type_token_id (0x200021e)
		i32 599; uint32_t java_name_index (0x257)
	}, ; 130
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554627, ; uint32_t type_token_id (0x20000c3)
		i32 398; uint32_t java_name_index (0x18e)
	}, ; 131
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554792, ; uint32_t type_token_id (0x2000168)
		i32 339; uint32_t java_name_index (0x153)
	}, ; 132
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554785, ; uint32_t type_token_id (0x2000161)
		i32 486; uint32_t java_name_index (0x1e6)
	}, ; 133
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555344, ; uint32_t type_token_id (0x2000390)
		i32 778; uint32_t java_name_index (0x30a)
	}, ; 134
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555531, ; uint32_t type_token_id (0x200044b)
		i32 86; uint32_t java_name_index (0x56)
	}, ; 135
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555336, ; uint32_t type_token_id (0x2000388)
		i32 773; uint32_t java_name_index (0x305)
	}, ; 136
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 578; uint32_t java_name_index (0x242)
	}, ; 137
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555359, ; uint32_t type_token_id (0x200039f)
		i32 789; uint32_t java_name_index (0x315)
	}, ; 138
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 287; uint32_t java_name_index (0x11f)
	}, ; 139
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 279; uint32_t java_name_index (0x117)
	}, ; 140
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555333, ; uint32_t type_token_id (0x2000385)
		i32 155; uint32_t java_name_index (0x9b)
	}, ; 141
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 851; uint32_t java_name_index (0x353)
	}, ; 142
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555280, ; uint32_t type_token_id (0x2000350)
		i32 121; uint32_t java_name_index (0x79)
	}, ; 143
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 253; uint32_t java_name_index (0xfd)
	}, ; 144
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555041, ; uint32_t type_token_id (0x2000261)
		i32 625; uint32_t java_name_index (0x271)
	}, ; 145
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554622, ; uint32_t type_token_id (0x20000be)
		i32 970; uint32_t java_name_index (0x3ca)
	}, ; 146
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555213, ; uint32_t type_token_id (0x200030d)
		i32 347; uint32_t java_name_index (0x15b)
	}, ; 147
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554843, ; uint32_t type_token_id (0x200019b)
		i32 529; uint32_t java_name_index (0x211)
	}, ; 148
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555077, ; uint32_t type_token_id (0x2000285)
		i32 631; uint32_t java_name_index (0x277)
	}, ; 149
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 270; uint32_t java_name_index (0x10e)
	}, ; 150
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554759, ; uint32_t type_token_id (0x2000147)
		i32 322; uint32_t java_name_index (0x142)
	}, ; 151
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555240, ; uint32_t type_token_id (0x2000328)
		i32 103; uint32_t java_name_index (0x67)
	}, ; 152
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 369; uint32_t java_name_index (0x171)
	}, ; 153
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554706, ; uint32_t type_token_id (0x2000112)
		i32 300; uint32_t java_name_index (0x12c)
	}, ; 154
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 957; uint32_t java_name_index (0x3bd)
	}, ; 155
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555416, ; uint32_t type_token_id (0x20003d8)
		i32 833; uint32_t java_name_index (0x341)
	}, ; 156
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555211, ; uint32_t type_token_id (0x200030b)
		i32 695; uint32_t java_name_index (0x2b7)
	}, ; 157
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 845; uint32_t java_name_index (0x34d)
	}, ; 158
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 735; uint32_t java_name_index (0x2df)
	}, ; 159
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555096, ; uint32_t type_token_id (0x2000298)
		i32 643; uint32_t java_name_index (0x283)
	}, ; 160
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 987; uint32_t java_name_index (0x3db)
	}, ; 161
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 328; uint32_t java_name_index (0x148)
	}, ; 162
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555087, ; uint32_t type_token_id (0x200028f)
		i32 636; uint32_t java_name_index (0x27c)
	}, ; 163
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 261; uint32_t java_name_index (0x105)
	}, ; 164
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 734; uint32_t java_name_index (0x2de)
	}, ; 165
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555115, ; uint32_t type_token_id (0x20002ab)
		i32 336; uint32_t java_name_index (0x150)
	}, ; 166
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555835, ; uint32_t type_token_id (0x200057b)
		i32 132; uint32_t java_name_index (0x84)
	}, ; 167
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554823, ; uint32_t type_token_id (0x2000187)
		i32 514; uint32_t java_name_index (0x202)
	}, ; 168
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555242, ; uint32_t type_token_id (0x200032a)
		i32 716; uint32_t java_name_index (0x2cc)
	}, ; 169
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 576; uint32_t java_name_index (0x240)
	}, ; 170
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 217; uint32_t java_name_index (0xd9)
	}, ; 171
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 237; uint32_t java_name_index (0xed)
	}, ; 172
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 551; uint32_t java_name_index (0x227)
	}, ; 173
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 370; uint32_t java_name_index (0x172)
	}, ; 174
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554890, ; uint32_t type_token_id (0x20001ca)
		i32 553; uint32_t java_name_index (0x229)
	}, ; 175
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 905; uint32_t java_name_index (0x389)
	}, ; 176
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554772, ; uint32_t type_token_id (0x2000154)
		i32 332; uint32_t java_name_index (0x14c)
	}, ; 177
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 135; uint32_t java_name_index (0x87)
	}, ; 178
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 2; uint32_t java_name_index (0x2)
	}, ; 179
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554697, ; uint32_t type_token_id (0x2000109)
		i32 441; uint32_t java_name_index (0x1b9)
	}, ; 180
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554750, ; uint32_t type_token_id (0x200013e)
		i32 313; uint32_t java_name_index (0x139)
	}, ; 181
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 972; uint32_t java_name_index (0x3cc)
	}, ; 182
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 978; uint32_t java_name_index (0x3d2)
	}, ; 183
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 581; uint32_t java_name_index (0x245)
	}, ; 184
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 30; uint32_t java_name_index (0x1e)
	}, ; 185
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 211; uint32_t java_name_index (0xd3)
	}, ; 186
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555370, ; uint32_t type_token_id (0x20003aa)
		i32 797; uint32_t java_name_index (0x31d)
	}, ; 187
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 990; uint32_t java_name_index (0x3de)
	}, ; 188
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 0; uint32_t java_name_index (0x0)
	}, ; 189
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 247; uint32_t java_name_index (0xf7)
	}, ; 190
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554635, ; uint32_t type_token_id (0x20000cb)
		i32 402; uint32_t java_name_index (0x192)
	}, ; 191
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 988; uint32_t java_name_index (0x3dc)
	}, ; 192
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 7; uint32_t java_name_index (0x7)
	}, ; 193
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 733; uint32_t java_name_index (0x2dd)
	}, ; 194
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 847; uint32_t java_name_index (0x34f)
	}, ; 195
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 523; uint32_t java_name_index (0x20b)
	}, ; 196
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554982, ; uint32_t type_token_id (0x2000226)
		i32 351; uint32_t java_name_index (0x15f)
	}, ; 197
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 198; uint32_t java_name_index (0xc6)
	}, ; 198
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index (0x17)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 361; uint32_t java_name_index (0x169)
	}, ; 199
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555295, ; uint32_t type_token_id (0x200035f)
		i32 748; uint32_t java_name_index (0x2ec)
	}, ; 200
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555346, ; uint32_t type_token_id (0x2000392)
		i32 779; uint32_t java_name_index (0x30b)
	}, ; 201
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 466; uint32_t java_name_index (0x1d2)
	}, ; 202
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 575; uint32_t java_name_index (0x23f)
	}, ; 203
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 224; uint32_t java_name_index (0xe0)
	}, ; 204
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554577, ; uint32_t type_token_id (0x2000091)
		i32 896; uint32_t java_name_index (0x380)
	}, ; 205
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555173, ; uint32_t type_token_id (0x20002e5)
		i32 661; uint32_t java_name_index (0x295)
	}, ; 206
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 142; uint32_t java_name_index (0x8e)
	}, ; 207
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 843; uint32_t java_name_index (0x34b)
	}, ; 208
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 876; uint32_t java_name_index (0x36c)
	}, ; 209
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555221, ; uint32_t type_token_id (0x2000315)
		i32 702; uint32_t java_name_index (0x2be)
	}, ; 210
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555185, ; uint32_t type_token_id (0x20002f1)
		i32 673; uint32_t java_name_index (0x2a1)
	}, ; 211
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554809, ; uint32_t type_token_id (0x2000179)
		i32 502; uint32_t java_name_index (0x1f6)
	}, ; 212
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 292; uint32_t java_name_index (0x124)
	}, ; 213
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 430; uint32_t java_name_index (0x1ae)
	}, ; 214
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555369, ; uint32_t type_token_id (0x20003a9)
		i32 180; uint32_t java_name_index (0xb4)
	}, ; 215
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 842; uint32_t java_name_index (0x34a)
	}, ; 216
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 118; uint32_t java_name_index (0x76)
	}, ; 217
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555350, ; uint32_t type_token_id (0x2000396)
		i32 783; uint32_t java_name_index (0x30f)
	}, ; 218
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555176, ; uint32_t type_token_id (0x20002e8)
		i32 664; uint32_t java_name_index (0x298)
	}, ; 219
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 382; uint32_t java_name_index (0x17e)
	}, ; 220
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554754, ; uint32_t type_token_id (0x2000142)
		i32 319; uint32_t java_name_index (0x13f)
	}, ; 221
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 464; uint32_t java_name_index (0x1d0)
	}, ; 222
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index (0x17)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 358; uint32_t java_name_index (0x166)
	}, ; 223
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 639; uint32_t java_name_index (0x27f)
	}, ; 224
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554821, ; uint32_t type_token_id (0x2000185)
		i32 512; uint32_t java_name_index (0x200)
	}, ; 225
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 27; uint32_t java_name_index (0x1b)
	}, ; 226
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555212, ; uint32_t type_token_id (0x200030c)
		i32 696; uint32_t java_name_index (0x2b8)
	}, ; 227
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 153; uint32_t java_name_index (0x99)
	}, ; 228
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 209; uint32_t java_name_index (0xd1)
	}, ; 229
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554787, ; uint32_t type_token_id (0x2000163)
		i32 487; uint32_t java_name_index (0x1e7)
	}, ; 230
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 522; uint32_t java_name_index (0x20a)
	}, ; 231
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 154; uint32_t java_name_index (0x9a)
	}, ; 232
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 727; uint32_t java_name_index (0x2d7)
	}, ; 233
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555380, ; uint32_t type_token_id (0x20003b4)
		i32 805; uint32_t java_name_index (0x325)
	}, ; 234
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554848, ; uint32_t type_token_id (0x20001a0)
		i32 531; uint32_t java_name_index (0x213)
	}, ; 235
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 886; uint32_t java_name_index (0x376)
	}, ; 236
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 893; uint32_t java_name_index (0x37d)
	}, ; 237
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 94; uint32_t java_name_index (0x5e)
	}, ; 238
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 306; uint32_t java_name_index (0x132)
	}, ; 239
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 584; uint32_t java_name_index (0x248)
	}, ; 240
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555240, ; uint32_t type_token_id (0x2000328)
		i32 715; uint32_t java_name_index (0x2cb)
	}, ; 241
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554813, ; uint32_t type_token_id (0x200017d)
		i32 505; uint32_t java_name_index (0x1f9)
	}, ; 242
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 275; uint32_t java_name_index (0x113)
	}, ; 243
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554801, ; uint32_t type_token_id (0x2000171)
		i32 497; uint32_t java_name_index (0x1f1)
	}, ; 244
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 396; uint32_t java_name_index (0x18c)
	}, ; 245
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 729; uint32_t java_name_index (0x2d9)
	}, ; 246
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555291, ; uint32_t type_token_id (0x200035b)
		i32 746; uint32_t java_name_index (0x2ea)
	}, ; 247
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 858; uint32_t java_name_index (0x35a)
	}, ; 248
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554622, ; uint32_t type_token_id (0x20000be)
		i32 395; uint32_t java_name_index (0x18b)
	}, ; 249
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555342, ; uint32_t type_token_id (0x200038e)
		i32 164; uint32_t java_name_index (0xa4)
	}, ; 250
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 955; uint32_t java_name_index (0x3bb)
	}, ; 251
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 468; uint32_t java_name_index (0x1d4)
	}, ; 252
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 562; uint32_t java_name_index (0x232)
	}, ; 253
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 75; uint32_t java_name_index (0x4b)
	}, ; 254
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554723, ; uint32_t type_token_id (0x2000123)
		i32 452; uint32_t java_name_index (0x1c4)
	}, ; 255
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555324, ; uint32_t type_token_id (0x200037c)
		i32 146; uint32_t java_name_index (0x92)
	}, ; 256
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 365; uint32_t java_name_index (0x16d)
	}, ; 257
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 399; uint32_t java_name_index (0x18f)
	}, ; 258
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555274, ; uint32_t type_token_id (0x200034a)
		i32 114; uint32_t java_name_index (0x72)
	}, ; 259
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 573; uint32_t java_name_index (0x23d)
	}, ; 260
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554773, ; uint32_t type_token_id (0x2000155)
		i32 480; uint32_t java_name_index (0x1e0)
	}, ; 261
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555858, ; uint32_t type_token_id (0x2000592)
		i32 183; uint32_t java_name_index (0xb7)
	}, ; 262
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 34; uint32_t java_name_index (0x22)
	}, ; 263
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554695, ; uint32_t type_token_id (0x2000107)
		i32 439; uint32_t java_name_index (0x1b7)
	}, ; 264
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 37; uint32_t java_name_index (0x25)
	}, ; 265
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 74; uint32_t java_name_index (0x4a)
	}, ; 266
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 385; uint32_t java_name_index (0x181)
	}, ; 267
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 59; uint32_t java_name_index (0x3b)
	}, ; 268
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 933; uint32_t java_name_index (0x3a5)
	}, ; 269
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 239; uint32_t java_name_index (0xef)
	}, ; 270
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554705, ; uint32_t type_token_id (0x2000111)
		i32 299; uint32_t java_name_index (0x12b)
	}, ; 271
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554753, ; uint32_t type_token_id (0x2000141)
		i32 318; uint32_t java_name_index (0x13e)
	}, ; 272
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 572; uint32_t java_name_index (0x23c)
	}, ; 273
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 199; uint32_t java_name_index (0xc7)
	}, ; 274
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 119; uint32_t java_name_index (0x77)
	}, ; 275
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 470; uint32_t java_name_index (0x1d6)
	}, ; 276
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index (0x17)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 356; uint32_t java_name_index (0x164)
	}, ; 277
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 946; uint32_t java_name_index (0x3b2)
	}, ; 278
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 76; uint32_t java_name_index (0x4c)
	}, ; 279
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555857, ; uint32_t type_token_id (0x2000591)
		i32 182; uint32_t java_name_index (0xb6)
	}, ; 280
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 234; uint32_t java_name_index (0xea)
	}, ; 281
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 947; uint32_t java_name_index (0x3b3)
	}, ; 282
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 80; uint32_t java_name_index (0x50)
	}, ; 283
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555387, ; uint32_t type_token_id (0x20003bb)
		i32 810; uint32_t java_name_index (0x32a)
	}, ; 284
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555792, ; uint32_t type_token_id (0x2000550)
		i32 92; uint32_t java_name_index (0x5c)
	}, ; 285
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 465; uint32_t java_name_index (0x1d1)
	}, ; 286
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 51; uint32_t java_name_index (0x33)
	}, ; 287
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 171; uint32_t java_name_index (0xab)
	}, ; 288
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 31; uint32_t java_name_index (0x1f)
	}, ; 289
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 932; uint32_t java_name_index (0x3a4)
	}, ; 290
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 32; uint32_t java_name_index (0x20)
	}, ; 291
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 29; uint32_t java_name_index (0x1d)
	}, ; 292
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555308, ; uint32_t type_token_id (0x200036c)
		i32 144; uint32_t java_name_index (0x90)
	}, ; 293
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555831, ; uint32_t type_token_id (0x2000577)
		i32 131; uint32_t java_name_index (0x83)
	}, ; 294
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 226; uint32_t java_name_index (0xe2)
	}, ; 295
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555362, ; uint32_t type_token_id (0x20003a2)
		i32 175; uint32_t java_name_index (0xaf)
	}, ; 296
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 243; uint32_t java_name_index (0xf3)
	}, ; 297
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 467; uint32_t java_name_index (0x1d3)
	}, ; 298
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 882; uint32_t java_name_index (0x372)
	}, ; 299
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 537; uint32_t java_name_index (0x219)
	}, ; 300
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 620; uint32_t java_name_index (0x26c)
	}, ; 301
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 706; uint32_t java_name_index (0x2c2)
	}, ; 302
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 600; uint32_t java_name_index (0x258)
	}, ; 303
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 134; uint32_t java_name_index (0x86)
	}, ; 304
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 371; uint32_t java_name_index (0x173)
	}, ; 305
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 377; uint32_t java_name_index (0x179)
	}, ; 306
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554819, ; uint32_t type_token_id (0x2000183)
		i32 511; uint32_t java_name_index (0x1ff)
	}, ; 307
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 984; uint32_t java_name_index (0x3d8)
	}, ; 308
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555862, ; uint32_t type_token_id (0x2000596)
		i32 187; uint32_t java_name_index (0xbb)
	}, ; 309
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 931; uint32_t java_name_index (0x3a3)
	}, ; 310
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 949; uint32_t java_name_index (0x3b5)
	}, ; 311
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 225; uint32_t java_name_index (0xe1)
	}, ; 312
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555356, ; uint32_t type_token_id (0x200039c)
		i32 788; uint32_t java_name_index (0x314)
	}, ; 313
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554798, ; uint32_t type_token_id (0x200016e)
		i32 494; uint32_t java_name_index (0x1ee)
	}, ; 314
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554687, ; uint32_t type_token_id (0x20000ff)
		i32 432; uint32_t java_name_index (0x1b0)
	}, ; 315
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554851, ; uint32_t type_token_id (0x20001a3)
		i32 533; uint32_t java_name_index (0x215)
	}, ; 316
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555297, ; uint32_t type_token_id (0x2000361)
		i32 750; uint32_t java_name_index (0x2ee)
	}, ; 317
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554668, ; uint32_t type_token_id (0x20000ec)
		i32 419; uint32_t java_name_index (0x1a3)
	}, ; 318
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 67; uint32_t java_name_index (0x43)
	}, ; 319
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555097, ; uint32_t type_token_id (0x2000299)
		i32 644; uint32_t java_name_index (0x284)
	}, ; 320
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 88; uint32_t java_name_index (0x58)
	}, ; 321
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 490; uint32_t java_name_index (0x1ea)
	}, ; 322
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 422; uint32_t java_name_index (0x1a6)
	}, ; 323
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 956; uint32_t java_name_index (0x3bc)
	}, ; 324
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555707, ; uint32_t type_token_id (0x20004fb)
		i32 87; uint32_t java_name_index (0x57)
	}, ; 325
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 383; uint32_t java_name_index (0x17f)
	}, ; 326
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555385, ; uint32_t type_token_id (0x20003b9)
		i32 809; uint32_t java_name_index (0x329)
	}, ; 327
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554804, ; uint32_t type_token_id (0x2000174)
		i32 499; uint32_t java_name_index (0x1f3)
	}, ; 328
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 879; uint32_t java_name_index (0x36f)
	}, ; 329
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 475; uint32_t java_name_index (0x1db)
	}, ; 330
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554686, ; uint32_t type_token_id (0x20000fe)
		i32 431; uint32_t java_name_index (0x1af)
	}, ; 331
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555230, ; uint32_t type_token_id (0x200031e)
		i32 98; uint32_t java_name_index (0x62)
	}, ; 332
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555195, ; uint32_t type_token_id (0x20002fb)
		i32 683; uint32_t java_name_index (0x2ab)
	}, ; 333
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 853; uint32_t java_name_index (0x355)
	}, ; 334
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554911, ; uint32_t type_token_id (0x20001df)
		i32 561; uint32_t java_name_index (0x231)
	}, ; 335
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 139; uint32_t java_name_index (0x8b)
	}, ; 336
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 549; uint32_t java_name_index (0x225)
	}, ; 337
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 156; uint32_t java_name_index (0x9c)
	}, ; 338
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 194; uint32_t java_name_index (0xc2)
	}, ; 339
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 374; uint32_t java_name_index (0x176)
	}, ; 340
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index (0xf)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 250; uint32_t java_name_index (0xfa)
	}, ; 341
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555229, ; uint32_t type_token_id (0x200031d)
		i32 709; uint32_t java_name_index (0x2c5)
	}, ; 342
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 83; uint32_t java_name_index (0x53)
	}, ; 343
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 222; uint32_t java_name_index (0xde)
	}, ; 344
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 3; uint32_t java_name_index (0x3)
	}, ; 345
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554958, ; uint32_t type_token_id (0x200020e)
		i32 586; uint32_t java_name_index (0x24a)
	}, ; 346
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 52; uint32_t java_name_index (0x34)
	}, ; 347
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 925; uint32_t java_name_index (0x39d)
	}, ; 348
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 867; uint32_t java_name_index (0x363)
	}, ; 349
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 472; uint32_t java_name_index (0x1d8)
	}, ; 350
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554739, ; uint32_t type_token_id (0x2000133)
		i32 462; uint32_t java_name_index (0x1ce)
	}, ; 351
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555861, ; uint32_t type_token_id (0x2000595)
		i32 186; uint32_t java_name_index (0xba)
	}, ; 352
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 39; uint32_t java_name_index (0x27)
	}, ; 353
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554920, ; uint32_t type_token_id (0x20001e8)
		i32 567; uint32_t java_name_index (0x237)
	}, ; 354
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 707; uint32_t java_name_index (0x2c3)
	}, ; 355
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 89; uint32_t java_name_index (0x59)
	}, ; 356
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 907; uint32_t java_name_index (0x38b)
	}, ; 357
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 240; uint32_t java_name_index (0xf0)
	}, ; 358
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 197; uint32_t java_name_index (0xc5)
	}, ; 359
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 267; uint32_t java_name_index (0x10b)
	}, ; 360
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 985; uint32_t java_name_index (0x3d9)
	}, ; 361
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555828, ; uint32_t type_token_id (0x2000574)
		i32 129; uint32_t java_name_index (0x81)
	}, ; 362
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555243, ; uint32_t type_token_id (0x200032b)
		i32 717; uint32_t java_name_index (0x2cd)
	}, ; 363
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 389; uint32_t java_name_index (0x185)
	}, ; 364
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 692; uint32_t java_name_index (0x2b4)
	}, ; 365
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 626; uint32_t java_name_index (0x272)
	}, ; 366
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554794, ; uint32_t type_token_id (0x200016a)
		i32 491; uint32_t java_name_index (0x1eb)
	}, ; 367
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555346, ; uint32_t type_token_id (0x2000392)
		i32 167; uint32_t java_name_index (0xa7)
	}, ; 368
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 880; uint32_t java_name_index (0x370)
	}, ; 369
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555246, ; uint32_t type_token_id (0x200032e)
		i32 720; uint32_t java_name_index (0x2d0)
	}, ; 370
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554899, ; uint32_t type_token_id (0x20001d3)
		i32 555; uint32_t java_name_index (0x22b)
	}, ; 371
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 48; uint32_t java_name_index (0x30)
	}, ; 372
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555344, ; uint32_t type_token_id (0x2000390)
		i32 166; uint32_t java_name_index (0xa6)
	}, ; 373
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 56; uint32_t java_name_index (0x38)
	}, ; 374
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 45; uint32_t java_name_index (0x2d)
	}, ; 375
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 376; uint32_t java_name_index (0x178)
	}, ; 376
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 207; uint32_t java_name_index (0xcf)
	}, ; 377
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554889, ; uint32_t type_token_id (0x20001c9)
		i32 552; uint32_t java_name_index (0x228)
	}, ; 378
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555365, ; uint32_t type_token_id (0x20003a5)
		i32 177; uint32_t java_name_index (0xb1)
	}, ; 379
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 443; uint32_t java_name_index (0x1bb)
	}, ; 380
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 914; uint32_t java_name_index (0x392)
	}, ; 381
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 231; uint32_t java_name_index (0xe7)
	}, ; 382
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 948; uint32_t java_name_index (0x3b4)
	}, ; 383
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555328, ; uint32_t type_token_id (0x2000380)
		i32 768; uint32_t java_name_index (0x300)
	}, ; 384
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 233; uint32_t java_name_index (0xe9)
	}, ; 385
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 216; uint32_t java_name_index (0xd8)
	}, ; 386
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555169, ; uint32_t type_token_id (0x20002e1)
		i32 658; uint32_t java_name_index (0x292)
	}, ; 387
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555198, ; uint32_t type_token_id (0x20002fe)
		i32 686; uint32_t java_name_index (0x2ae)
	}, ; 388
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554713, ; uint32_t type_token_id (0x2000119)
		i32 303; uint32_t java_name_index (0x12f)
	}, ; 389
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 524; uint32_t java_name_index (0x20c)
	}, ; 390
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554824, ; uint32_t type_token_id (0x2000188)
		i32 515; uint32_t java_name_index (0x203)
	}, ; 391
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 934; uint32_t java_name_index (0x3a6)
	}, ; 392
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555237, ; uint32_t type_token_id (0x2000325)
		i32 102; uint32_t java_name_index (0x66)
	}, ; 393
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 751; uint32_t java_name_index (0x2ef)
	}, ; 394
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554994, ; uint32_t type_token_id (0x2000232)
		i32 609; uint32_t java_name_index (0x261)
	}, ; 395
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554756, ; uint32_t type_token_id (0x2000144)
		i32 320; uint32_t java_name_index (0x140)
	}, ; 396
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 314; uint32_t java_name_index (0x13a)
	}, ; 397
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 95; uint32_t java_name_index (0x5f)
	}, ; 398
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555360, ; uint32_t type_token_id (0x20003a0)
		i32 790; uint32_t java_name_index (0x316)
	}, ; 399
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 35; uint32_t java_name_index (0x23)
	}, ; 400
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 33; uint32_t java_name_index (0x21)
	}, ; 401
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554910, ; uint32_t type_token_id (0x20001de)
		i32 560; uint32_t java_name_index (0x230)
	}, ; 402
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 54; uint32_t java_name_index (0x36)
	}, ; 403
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 989; uint32_t java_name_index (0x3dd)
	}, ; 404
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 23; uint32_t java_name_index (0x17)
	}, ; 405
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 26; uint32_t java_name_index (0x1a)
	}, ; 406
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 794; uint32_t java_name_index (0x31a)
	}, ; 407
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 916; uint32_t java_name_index (0x394)
	}, ; 408
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 605; uint32_t java_name_index (0x25d)
	}, ; 409
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 159; uint32_t java_name_index (0x9f)
	}, ; 410
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555379, ; uint32_t type_token_id (0x20003b3)
		i32 804; uint32_t java_name_index (0x324)
	}, ; 411
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 425; uint32_t java_name_index (0x1a9)
	}, ; 412
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 884; uint32_t java_name_index (0x374)
	}, ; 413
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 312; uint32_t java_name_index (0x138)
	}, ; 414
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 152; uint32_t java_name_index (0x98)
	}, ; 415
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 541; uint32_t java_name_index (0x21d)
	}, ; 416
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 213; uint32_t java_name_index (0xd5)
	}, ; 417
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555228, ; uint32_t type_token_id (0x200031c)
		i32 708; uint32_t java_name_index (0x2c4)
	}, ; 418
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 917; uint32_t java_name_index (0x395)
	}, ; 419
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 543; uint32_t java_name_index (0x21f)
	}, ; 420
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 291; uint32_t java_name_index (0x123)
	}, ; 421
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554612, ; uint32_t type_token_id (0x20000b4)
		i32 966; uint32_t java_name_index (0x3c6)
	}, ; 422
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 612; uint32_t java_name_index (0x264)
	}, ; 423
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555244, ; uint32_t type_token_id (0x200032c)
		i32 718; uint32_t java_name_index (0x2ce)
	}, ; 424
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index (0x17)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 355; uint32_t java_name_index (0x163)
	}, ; 425
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555120, ; uint32_t type_token_id (0x20002b0)
		i32 340; uint32_t java_name_index (0x154)
	}, ; 426
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 218; uint32_t java_name_index (0xda)
	}, ; 427
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555130, ; uint32_t type_token_id (0x20002ba)
		i32 649; uint32_t java_name_index (0x289)
	}, ; 428
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555292, ; uint32_t type_token_id (0x200035c)
		i32 747; uint32_t java_name_index (0x2eb)
	}, ; 429
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554689, ; uint32_t type_token_id (0x2000101)
		i32 434; uint32_t java_name_index (0x1b2)
	}, ; 430
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555006, ; uint32_t type_token_id (0x200023e)
		i32 615; uint32_t java_name_index (0x267)
	}, ; 431
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554807, ; uint32_t type_token_id (0x2000177)
		i32 501; uint32_t java_name_index (0x1f5)
	}, ; 432
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555131, ; uint32_t type_token_id (0x20002bb)
		i32 342; uint32_t java_name_index (0x156)
	}, ; 433
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 766; uint32_t java_name_index (0x2fe)
	}, ; 434
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 228; uint32_t java_name_index (0xe4)
	}, ; 435
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 571; uint32_t java_name_index (0x23b)
	}, ; 436
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 42; uint32_t java_name_index (0x2a)
	}, ; 437
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554988, ; uint32_t type_token_id (0x200022c)
		i32 606; uint32_t java_name_index (0x25e)
	}, ; 438
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554775, ; uint32_t type_token_id (0x2000157)
		i32 335; uint32_t java_name_index (0x14f)
	}, ; 439
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 79; uint32_t java_name_index (0x4f)
	}, ; 440
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554489, ; uint32_t type_token_id (0x2000039)
		i32 6; uint32_t java_name_index (0x6)
	}, ; 441
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 604; uint32_t java_name_index (0x25c)
	}, ; 442
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 241; uint32_t java_name_index (0xf1)
	}, ; 443
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 776; uint32_t java_name_index (0x308)
	}, ; 444
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 265; uint32_t java_name_index (0x109)
	}, ; 445
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 90; uint32_t java_name_index (0x5a)
	}, ; 446
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 55; uint32_t java_name_index (0x37)
	}, ; 447
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555253, ; uint32_t type_token_id (0x2000335)
		i32 724; uint32_t java_name_index (0x2d4)
	}, ; 448
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554692, ; uint32_t type_token_id (0x2000104)
		i32 437; uint32_t java_name_index (0x1b5)
	}, ; 449
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index (0x17)
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 357; uint32_t java_name_index (0x165)
	}, ; 450
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555395, ; uint32_t type_token_id (0x20003c3)
		i32 815; uint32_t java_name_index (0x32f)
	}, ; 451
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 12; uint32_t java_name_index (0xc)
	}, ; 452
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554760, ; uint32_t type_token_id (0x2000148)
		i32 323; uint32_t java_name_index (0x143)
	}, ; 453
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 471; uint32_t java_name_index (0x1d7)
	}, ; 454
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554979, ; uint32_t type_token_id (0x2000223)
		i32 601; uint32_t java_name_index (0x259)
	}, ; 455
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 521; uint32_t java_name_index (0x209)
	}, ; 456
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 77; uint32_t java_name_index (0x4d)
	}, ; 457
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555250, ; uint32_t type_token_id (0x2000332)
		i32 722; uint32_t java_name_index (0x2d2)
	}, ; 458
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 865; uint32_t java_name_index (0x361)
	}, ; 459
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 364; uint32_t java_name_index (0x16c)
	}, ; 460
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 819; uint32_t java_name_index (0x333)
	}, ; 461
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555212, ; uint32_t type_token_id (0x200030c)
		i32 346; uint32_t java_name_index (0x15a)
	}, ; 462
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554815, ; uint32_t type_token_id (0x200017f)
		i32 507; uint32_t java_name_index (0x1fb)
	}, ; 463
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 864; uint32_t java_name_index (0x360)
	}, ; 464
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 375; uint32_t java_name_index (0x177)
	}, ; 465
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 574; uint32_t java_name_index (0x23e)
	}, ; 466
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554964, ; uint32_t type_token_id (0x2000214)
		i32 591; uint32_t java_name_index (0x24f)
	}, ; 467
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554898, ; uint32_t type_token_id (0x20001d2)
		i32 554; uint32_t java_name_index (0x22a)
	}, ; 468
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555287, ; uint32_t type_token_id (0x2000357)
		i32 743; uint32_t java_name_index (0x2e7)
	}, ; 469
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 939; uint32_t java_name_index (0x3ab)
	}, ; 470
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 861; uint32_t java_name_index (0x35d)
	}, ; 471
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 17; uint32_t java_name_index (0x11)
	}, ; 472
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 973; uint32_t java_name_index (0x3cd)
	}, ; 473
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 246; uint32_t java_name_index (0xf6)
	}, ; 474
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 21; uint32_t java_name_index (0x15)
	}, ; 475
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 297; uint32_t java_name_index (0x129)
	}, ; 476
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 906; uint32_t java_name_index (0x38a)
	}, ; 477
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555377, ; uint32_t type_token_id (0x20003b1)
		i32 802; uint32_t java_name_index (0x322)
	}, ; 478
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554960, ; uint32_t type_token_id (0x2000210)
		i32 588; uint32_t java_name_index (0x24c)
	}, ; 479
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 863; uint32_t java_name_index (0x35f)
	}, ; 480
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555188, ; uint32_t type_token_id (0x20002f4)
		i32 676; uint32_t java_name_index (0x2a4)
	}, ; 481
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554797, ; uint32_t type_token_id (0x200016d)
		i32 493; uint32_t java_name_index (0x1ed)
	}, ; 482
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555372, ; uint32_t type_token_id (0x20003ac)
		i32 799; uint32_t java_name_index (0x31f)
	}, ; 483
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555024, ; uint32_t type_token_id (0x2000250)
		i32 616; uint32_t java_name_index (0x268)
	}, ; 484
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 903; uint32_t java_name_index (0x387)
	}, ; 485
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555215, ; uint32_t type_token_id (0x200030f)
		i32 348; uint32_t java_name_index (0x15c)
	}, ; 486
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554711, ; uint32_t type_token_id (0x2000117)
		i32 445; uint32_t java_name_index (0x1bd)
	}, ; 487
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555183, ; uint32_t type_token_id (0x20002ef)
		i32 671; uint32_t java_name_index (0x29f)
	}, ; 488
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 624; uint32_t java_name_index (0x270)
	}, ; 489
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index (0x17)
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 360; uint32_t java_name_index (0x168)
	}, ; 490
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 388; uint32_t java_name_index (0x184)
	}, ; 491
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555027, ; uint32_t type_token_id (0x2000253)
		i32 619; uint32_t java_name_index (0x26b)
	}, ; 492
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 771; uint32_t java_name_index (0x303)
	}, ; 493
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 205; uint32_t java_name_index (0xcd)
	}, ; 494
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554680, ; uint32_t type_token_id (0x20000f8)
		i32 427; uint32_t java_name_index (0x1ab)
	}, ; 495
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 41; uint32_t java_name_index (0x29)
	}, ; 496
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 476; uint32_t java_name_index (0x1dc)
	}, ; 497
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 235; uint32_t java_name_index (0xeb)
	}, ; 498
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 895; uint32_t java_name_index (0x37f)
	}, ; 499
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555284, ; uint32_t type_token_id (0x2000354)
		i32 740; uint32_t java_name_index (0x2e4)
	}, ; 500
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 846; uint32_t java_name_index (0x34e)
	}, ; 501
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 964; uint32_t java_name_index (0x3c4)
	}, ; 502
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555213, ; uint32_t type_token_id (0x200030d)
		i32 697; uint32_t java_name_index (0x2b9)
	}, ; 503
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555192, ; uint32_t type_token_id (0x20002f8)
		i32 680; uint32_t java_name_index (0x2a8)
	}, ; 504
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 520; uint32_t java_name_index (0x208)
	}, ; 505
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 920; uint32_t java_name_index (0x398)
	}, ; 506
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 13; uint32_t java_name_index (0xd)
	}, ; 507
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 866; uint32_t java_name_index (0x362)
	}, ; 508
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554633, ; uint32_t type_token_id (0x20000c9)
		i32 401; uint32_t java_name_index (0x191)
	}, ; 509
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555382, ; uint32_t type_token_id (0x20003b6)
		i32 807; uint32_t java_name_index (0x327)
	}, ; 510
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 901; uint32_t java_name_index (0x385)
	}, ; 511
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 282; uint32_t java_name_index (0x11a)
	}, ; 512
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 296; uint32_t java_name_index (0x128)
	}, ; 513
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555094, ; uint32_t type_token_id (0x2000296)
		i32 641; uint32_t java_name_index (0x281)
	}, ; 514
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 474; uint32_t java_name_index (0x1da)
	}, ; 515
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555412, ; uint32_t type_token_id (0x20003d4)
		i32 829; uint32_t java_name_index (0x33d)
	}, ; 516
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554486, ; uint32_t type_token_id (0x2000036)
		i32 273; uint32_t java_name_index (0x111)
	}, ; 517
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 69; uint32_t java_name_index (0x45)
	}, ; 518
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 787; uint32_t java_name_index (0x313)
	}, ; 519
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555037, ; uint32_t type_token_id (0x200025d)
		i32 622; uint32_t java_name_index (0x26e)
	}, ; 520
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 65; uint32_t java_name_index (0x41)
	}, ; 521
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555407, ; uint32_t type_token_id (0x20003cf)
		i32 825; uint32_t java_name_index (0x339)
	}, ; 522
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554879, ; uint32_t type_token_id (0x20001bf)
		i32 545; uint32_t java_name_index (0x221)
	}, ; 523
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 179; uint32_t java_name_index (0xb3)
	}, ; 524
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 844; uint32_t java_name_index (0x34c)
	}, ; 525
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554988, ; uint32_t type_token_id (0x200022c)
		i32 352; uint32_t java_name_index (0x160)
	}, ; 526
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 258; uint32_t java_name_index (0x102)
	}, ; 527
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555230, ; uint32_t type_token_id (0x200031e)
		i32 710; uint32_t java_name_index (0x2c6)
	}, ; 528
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 58; uint32_t java_name_index (0x3a)
	}, ; 529
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555402, ; uint32_t type_token_id (0x20003ca)
		i32 821; uint32_t java_name_index (0x335)
	}, ; 530
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 968; uint32_t java_name_index (0x3c8)
	}, ; 531
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555179, ; uint32_t type_token_id (0x20002eb)
		i32 667; uint32_t java_name_index (0x29b)
	}, ; 532
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 149; uint32_t java_name_index (0x95)
	}, ; 533
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 582; uint32_t java_name_index (0x246)
	}, ; 534
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 96; uint32_t java_name_index (0x60)
	}, ; 535
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554969, ; uint32_t type_token_id (0x2000219)
		i32 594; uint32_t java_name_index (0x252)
	}, ; 536
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 875; uint32_t java_name_index (0x36b)
	}, ; 537
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 263; uint32_t java_name_index (0x107)
	}, ; 538
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 232; uint32_t java_name_index (0xe8)
	}, ; 539
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 260; uint32_t java_name_index (0x104)
	}, ; 540
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 49; uint32_t java_name_index (0x31)
	}, ; 541
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index (0x17)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 354; uint32_t java_name_index (0x162)
	}, ; 542
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555401, ; uint32_t type_token_id (0x20003c9)
		i32 820; uint32_t java_name_index (0x334)
	}, ; 543
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555216, ; uint32_t type_token_id (0x2000310)
		i32 349; uint32_t java_name_index (0x15d)
	}, ; 544
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 290; uint32_t java_name_index (0x122)
	}, ; 545
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555232, ; uint32_t type_token_id (0x2000320)
		i32 711; uint32_t java_name_index (0x2c7)
	}, ; 546
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554645, ; uint32_t type_token_id (0x20000d5)
		i32 407; uint32_t java_name_index (0x197)
	}, ; 547
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 285; uint32_t java_name_index (0x11d)
	}, ; 548
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 838; uint32_t java_name_index (0x346)
	}, ; 549
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554666, ; uint32_t type_token_id (0x20000ea)
		i32 418; uint32_t java_name_index (0x1a2)
	}, ; 550
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554771, ; uint32_t type_token_id (0x2000153)
		i32 478; uint32_t java_name_index (0x1de)
	}, ; 551
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554575, ; uint32_t type_token_id (0x200008f)
		i32 894; uint32_t java_name_index (0x37e)
	}, ; 552
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555026, ; uint32_t type_token_id (0x2000252)
		i32 618; uint32_t java_name_index (0x26a)
	}, ; 553
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554657, ; uint32_t type_token_id (0x20000e1)
		i32 413; uint32_t java_name_index (0x19d)
	}, ; 554
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 165; uint32_t java_name_index (0xa5)
	}, ; 555
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 585; uint32_t java_name_index (0x249)
	}, ; 556
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555300, ; uint32_t type_token_id (0x2000364)
		i32 752; uint32_t java_name_index (0x2f0)
	}, ; 557
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554812, ; uint32_t type_token_id (0x200017c)
		i32 504; uint32_t java_name_index (0x1f8)
	}, ; 558
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555415, ; uint32_t type_token_id (0x20003d7)
		i32 832; uint32_t java_name_index (0x340)
	}, ; 559
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555851, ; uint32_t type_token_id (0x200058b)
		i32 174; uint32_t java_name_index (0xae)
	}, ; 560
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 856; uint32_t java_name_index (0x358)
	}, ; 561
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 101; uint32_t java_name_index (0x65)
	}, ; 562
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 945; uint32_t java_name_index (0x3b1)
	}, ; 563
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 368; uint32_t java_name_index (0x170)
	}, ; 564
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555286, ; uint32_t type_token_id (0x2000356)
		i32 742; uint32_t java_name_index (0x2e6)
	}, ; 565
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 891; uint32_t java_name_index (0x37b)
	}, ; 566
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 424; uint32_t java_name_index (0x1a8)
	}, ; 567
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 943; uint32_t java_name_index (0x3af)
	}, ; 568
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555408, ; uint32_t type_token_id (0x20003d0)
		i32 826; uint32_t java_name_index (0x33a)
	}, ; 569
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 367; uint32_t java_name_index (0x16f)
	}, ; 570
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 206; uint32_t java_name_index (0xce)
	}, ; 571
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 610; uint32_t java_name_index (0x262)
	}, ; 572
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555255, ; uint32_t type_token_id (0x2000337)
		i32 107; uint32_t java_name_index (0x6b)
	}, ; 573
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554470, ; uint32_t type_token_id (0x2000026)
		i32 264; uint32_t java_name_index (0x108)
	}, ; 574
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 397; uint32_t java_name_index (0x18d)
	}, ; 575
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554853, ; uint32_t type_token_id (0x20001a5)
		i32 534; uint32_t java_name_index (0x216)
	}, ; 576
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554652, ; uint32_t type_token_id (0x20000dc)
		i32 410; uint32_t java_name_index (0x19a)
	}, ; 577
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 310; uint32_t java_name_index (0x136)
	}, ; 578
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555376, ; uint32_t type_token_id (0x20003b0)
		i32 191; uint32_t java_name_index (0xbf)
	}, ; 579
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 929; uint32_t java_name_index (0x3a1)
	}, ; 580
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 16; uint32_t java_name_index (0x10)
	}, ; 581
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 798; uint32_t java_name_index (0x31e)
	}, ; 582
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555314, ; uint32_t type_token_id (0x2000372)
		i32 759; uint32_t java_name_index (0x2f7)
	}, ; 583
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 18; uint32_t java_name_index (0x12)
	}, ; 584
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554720, ; uint32_t type_token_id (0x2000120)
		i32 304; uint32_t java_name_index (0x130)
	}, ; 585
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 9; uint32_t java_name_index (0x9)
	}, ; 586
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 14; uint32_t java_name_index (0xe)
	}, ; 587
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 254; uint32_t java_name_index (0xfe)
	}, ; 588
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554828, ; uint32_t type_token_id (0x200018c)
		i32 519; uint32_t java_name_index (0x207)
	}, ; 589
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555201, ; uint32_t type_token_id (0x2000301)
		i32 689; uint32_t java_name_index (0x2b1)
	}, ; 590
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 4; uint32_t java_name_index (0x4)
	}, ; 591
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555827, ; uint32_t type_token_id (0x2000573)
		i32 127; uint32_t java_name_index (0x7f)
	}, ; 592
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555203, ; uint32_t type_token_id (0x2000303)
		i32 345; uint32_t java_name_index (0x159)
	}, ; 593
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555200, ; uint32_t type_token_id (0x2000300)
		i32 688; uint32_t java_name_index (0x2b0)
	}, ; 594
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 942; uint32_t java_name_index (0x3ae)
	}, ; 595
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 761; uint32_t java_name_index (0x2f9)
	}, ; 596
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554921, ; uint32_t type_token_id (0x20001e9)
		i32 568; uint32_t java_name_index (0x238)
	}, ; 597
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555046, ; uint32_t type_token_id (0x2000266)
		i32 628; uint32_t java_name_index (0x274)
	}, ; 598
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 200; uint32_t java_name_index (0xc8)
	}, ; 599
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 60; uint32_t java_name_index (0x3c)
	}, ; 600
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 869; uint32_t java_name_index (0x365)
	}, ; 601
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554762, ; uint32_t type_token_id (0x200014a)
		i32 325; uint32_t java_name_index (0x145)
	}, ; 602
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555957, ; uint32_t type_token_id (0x20005f5)
		i32 188; uint32_t java_name_index (0xbc)
	}, ; 603
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555082, ; uint32_t type_token_id (0x200028a)
		i32 633; uint32_t java_name_index (0x279)
	}, ; 604
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 951; uint32_t java_name_index (0x3b7)
	}, ; 605
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555276, ; uint32_t type_token_id (0x200034c)
		i32 117; uint32_t java_name_index (0x75)
	}, ; 606
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555168, ; uint32_t type_token_id (0x20002e0)
		i32 657; uint32_t java_name_index (0x291)
	}, ; 607
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 220; uint32_t java_name_index (0xdc)
	}, ; 608
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 393; uint32_t java_name_index (0x189)
	}, ; 609
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 169; uint32_t java_name_index (0xa9)
	}, ; 610
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 871; uint32_t java_name_index (0x367)
	}, ; 611
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 859; uint32_t java_name_index (0x35b)
	}, ; 612
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 266; uint32_t java_name_index (0x10a)
	}, ; 613
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 862; uint32_t java_name_index (0x35e)
	}, ; 614
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554653, ; uint32_t type_token_id (0x20000dd)
		i32 411; uint32_t java_name_index (0x19b)
	}, ; 615
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554757, ; uint32_t type_token_id (0x2000145)
		i32 321; uint32_t java_name_index (0x141)
	}, ; 616
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555413, ; uint32_t type_token_id (0x20003d5)
		i32 830; uint32_t java_name_index (0x33e)
	}, ; 617
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554735, ; uint32_t type_token_id (0x200012f)
		i32 460; uint32_t java_name_index (0x1cc)
	}, ; 618
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 647; uint32_t java_name_index (0x287)
	}, ; 619
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 201; uint32_t java_name_index (0xc9)
	}, ; 620
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555187, ; uint32_t type_token_id (0x20002f3)
		i32 675; uint32_t java_name_index (0x2a3)
	}, ; 621
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 926; uint32_t java_name_index (0x39e)
	}, ; 622
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 909; uint32_t java_name_index (0x38d)
	}, ; 623
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 202; uint32_t java_name_index (0xca)
	}, ; 624
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 301; uint32_t java_name_index (0x12d)
	}, ; 625
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555139, ; uint32_t type_token_id (0x20002c3)
		i32 650; uint32_t java_name_index (0x28a)
	}, ; 626
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 223; uint32_t java_name_index (0xdf)
	}, ; 627
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 887; uint32_t java_name_index (0x377)
	}, ; 628
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 330; uint32_t java_name_index (0x14a)
	}, ; 629
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 774; uint32_t java_name_index (0x306)
	}, ; 630
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 19; uint32_t java_name_index (0x13)
	}, ; 631
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 295; uint32_t java_name_index (0x127)
	}, ; 632
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 276; uint32_t java_name_index (0x114)
	}, ; 633
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 212; uint32_t java_name_index (0xd4)
	}, ; 634
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 28; uint32_t java_name_index (0x1c)
	}, ; 635
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 897; uint32_t java_name_index (0x381)
	}, ; 636
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 860; uint32_t java_name_index (0x35c)
	}, ; 637
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555307, ; uint32_t type_token_id (0x200036b)
		i32 143; uint32_t java_name_index (0x8f)
	}, ; 638
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555095, ; uint32_t type_token_id (0x2000297)
		i32 642; uint32_t java_name_index (0x282)
	}, ; 639
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 764; uint32_t java_name_index (0x2fc)
	}, ; 640
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555325, ; uint32_t type_token_id (0x200037d)
		i32 765; uint32_t java_name_index (0x2fd)
	}, ; 641
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 215; uint32_t java_name_index (0xd7)
	}, ; 642
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555283, ; uint32_t type_token_id (0x2000353)
		i32 125; uint32_t java_name_index (0x7d)
	}, ; 643
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 923; uint32_t java_name_index (0x39b)
	}, ; 644
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554971, ; uint32_t type_token_id (0x200021b)
		i32 596; uint32_t java_name_index (0x254)
	}, ; 645
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555090, ; uint32_t type_token_id (0x2000292)
		i32 638; uint32_t java_name_index (0x27e)
	}, ; 646
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 64; uint32_t java_name_index (0x40)
	}, ; 647
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554816, ; uint32_t type_token_id (0x2000180)
		i32 508; uint32_t java_name_index (0x1fc)
	}, ; 648
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554664, ; uint32_t type_token_id (0x20000e8)
		i32 416; uint32_t java_name_index (0x1a0)
	}, ; 649
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 257; uint32_t java_name_index (0x101)
	}, ; 650
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 214; uint32_t java_name_index (0xd6)
	}, ; 651
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 363; uint32_t java_name_index (0x16b)
	}, ; 652
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 53; uint32_t java_name_index (0x35)
	}, ; 653
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555327, ; uint32_t type_token_id (0x200037f)
		i32 767; uint32_t java_name_index (0x2ff)
	}, ; 654
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 731; uint32_t java_name_index (0x2db)
	}, ; 655
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 922; uint32_t java_name_index (0x39a)
	}, ; 656
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 980; uint32_t java_name_index (0x3d4)
	}, ; 657
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555287, ; uint32_t type_token_id (0x2000357)
		i32 130; uint32_t java_name_index (0x82)
	}, ; 658
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555301, ; uint32_t type_token_id (0x2000365)
		i32 753; uint32_t java_name_index (0x2f1)
	}, ; 659
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555032, ; uint32_t type_token_id (0x2000258)
		i32 621; uint32_t java_name_index (0x26d)
	}, ; 660
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554858, ; uint32_t type_token_id (0x20001aa)
		i32 536; uint32_t java_name_index (0x218)
	}, ; 661
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555248, ; uint32_t type_token_id (0x2000330)
		i32 721; uint32_t java_name_index (0x2d1)
	}, ; 662
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 941; uint32_t java_name_index (0x3ad)
	}, ; 663
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 874; uint32_t java_name_index (0x36a)
	}, ; 664
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 289; uint32_t java_name_index (0x121)
	}, ; 665
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555958, ; uint32_t type_token_id (0x20005f6)
		i32 189; uint32_t java_name_index (0xbd)
	}, ; 666
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 255; uint32_t java_name_index (0xff)
	}, ; 667
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555397, ; uint32_t type_token_id (0x20003c5)
		i32 817; uint32_t java_name_index (0x331)
	}, ; 668
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555290, ; uint32_t type_token_id (0x200035a)
		i32 745; uint32_t java_name_index (0x2e9)
	}, ; 669
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 899; uint32_t java_name_index (0x383)
	}, ; 670
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554818, ; uint32_t type_token_id (0x2000182)
		i32 510; uint32_t java_name_index (0x1fe)
	}, ; 671
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554840, ; uint32_t type_token_id (0x2000198)
		i32 526; uint32_t java_name_index (0x20e)
	}, ; 672
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555396, ; uint32_t type_token_id (0x20003c4)
		i32 816; uint32_t java_name_index (0x330)
	}, ; 673
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555081, ; uint32_t type_token_id (0x2000289)
		i32 632; uint32_t java_name_index (0x278)
	}, ; 674
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555304, ; uint32_t type_token_id (0x2000368)
		i32 141; uint32_t java_name_index (0x8d)
	}, ; 675
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 120; uint32_t java_name_index (0x78)
	}, ; 676
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555214, ; uint32_t type_token_id (0x200030e)
		i32 698; uint32_t java_name_index (0x2ba)
	}, ; 677
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555403, ; uint32_t type_token_id (0x20003cb)
		i32 822; uint32_t java_name_index (0x336)
	}, ; 678
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 836; uint32_t java_name_index (0x344)
	}, ; 679
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 1; uint32_t java_name_index (0x1)
	}, ; 680
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555284, ; uint32_t type_token_id (0x2000354)
		i32 128; uint32_t java_name_index (0x80)
	}, ; 681
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554767, ; uint32_t type_token_id (0x200014f)
		i32 329; uint32_t java_name_index (0x149)
	}, ; 682
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 489; uint32_t java_name_index (0x1e9)
	}, ; 683
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 280; uint32_t java_name_index (0x118)
	}, ; 684
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555786, ; uint32_t type_token_id (0x200054a)
		i32 91; uint32_t java_name_index (0x5b)
	}, ; 685
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 373; uint32_t java_name_index (0x175)
	}, ; 686
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554770, ; uint32_t type_token_id (0x2000152)
		i32 477; uint32_t java_name_index (0x1dd)
	}, ; 687
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 837; uint32_t java_name_index (0x345)
	}, ; 688
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 850; uint32_t java_name_index (0x352)
	}, ; 689
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 10; uint32_t java_name_index (0xa)
	}, ; 690
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554783, ; uint32_t type_token_id (0x200015f)
		i32 485; uint32_t java_name_index (0x1e5)
	}, ; 691
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 883; uint32_t java_name_index (0x373)
	}, ; 692
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554598, ; uint32_t type_token_id (0x20000a6)
		i32 958; uint32_t java_name_index (0x3be)
	}, ; 693
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555398, ; uint32_t type_token_id (0x20003c6)
		i32 818; uint32_t java_name_index (0x332)
	}, ; 694
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 927; uint32_t java_name_index (0x39f)
	}, ; 695
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555106, ; uint32_t type_token_id (0x20002a2)
		i32 315; uint32_t java_name_index (0x13b)
	}, ; 696
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 208; uint32_t java_name_index (0xd0)
	}, ; 697
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554665, ; uint32_t type_token_id (0x20000e9)
		i32 417; uint32_t java_name_index (0x1a1)
	}, ; 698
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554679, ; uint32_t type_token_id (0x20000f7)
		i32 426; uint32_t java_name_index (0x1aa)
	}, ; 699
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index (0x17)
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 362; uint32_t java_name_index (0x16a)
	}, ; 700
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555353, ; uint32_t type_token_id (0x2000399)
		i32 785; uint32_t java_name_index (0x311)
	}, ; 701
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555202, ; uint32_t type_token_id (0x2000302)
		i32 344; uint32_t java_name_index (0x158)
	}, ; 702
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 63; uint32_t java_name_index (0x3f)
	}, ; 703
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554725, ; uint32_t type_token_id (0x2000125)
		i32 305; uint32_t java_name_index (0x131)
	}, ; 704
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555336, ; uint32_t type_token_id (0x2000388)
		i32 158; uint32_t java_name_index (0x9e)
	}, ; 705
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 744; uint32_t java_name_index (0x2e8)
	}, ; 706
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554841, ; uint32_t type_token_id (0x2000199)
		i32 527; uint32_t java_name_index (0x20f)
	}, ; 707
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 423; uint32_t java_name_index (0x1a7)
	}, ; 708
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 151; uint32_t java_name_index (0x97)
	}, ; 709
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555107, ; uint32_t type_token_id (0x20002a3)
		i32 317; uint32_t java_name_index (0x13d)
	}, ; 710
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 403; uint32_t java_name_index (0x193)
	}, ; 711
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 983; uint32_t java_name_index (0x3d7)
	}, ; 712
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 73; uint32_t java_name_index (0x49)
	}, ; 713
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 40; uint32_t java_name_index (0x28)
	}, ; 714
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 172; uint32_t java_name_index (0xac)
	}, ; 715
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554881, ; uint32_t type_token_id (0x20001c1)
		i32 547; uint32_t java_name_index (0x223)
	}, ; 716
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 608; uint32_t java_name_index (0x260)
	}, ; 717
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 935; uint32_t java_name_index (0x3a7)
	}, ; 718
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555269, ; uint32_t type_token_id (0x2000345)
		i32 108; uint32_t java_name_index (0x6c)
	}, ; 719
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555245, ; uint32_t type_token_id (0x200032d)
		i32 719; uint32_t java_name_index (0x2cf)
	}, ; 720
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554670, ; uint32_t type_token_id (0x20000ee)
		i32 421; uint32_t java_name_index (0x1a5)
	}, ; 721
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 324; uint32_t java_name_index (0x144)
	}, ; 722
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555193, ; uint32_t type_token_id (0x20002f9)
		i32 681; uint32_t java_name_index (0x2a9)
	}, ; 723
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555202, ; uint32_t type_token_id (0x2000302)
		i32 690; uint32_t java_name_index (0x2b2)
	}, ; 724
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 195; uint32_t java_name_index (0xc3)
	}, ; 725
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 579; uint32_t java_name_index (0x243)
	}, ; 726
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555431, ; uint32_t type_token_id (0x20003e7)
		i32 834; uint32_t java_name_index (0x342)
	}, ; 727
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 244; uint32_t java_name_index (0xf4)
	}, ; 728
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 150; uint32_t java_name_index (0x96)
	}, ; 729
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 57; uint32_t java_name_index (0x39)
	}, ; 730
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554880, ; uint32_t type_token_id (0x20001c0)
		i32 546; uint32_t java_name_index (0x222)
	}, ; 731
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555199, ; uint32_t type_token_id (0x20002ff)
		i32 687; uint32_t java_name_index (0x2af)
	}, ; 732
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index (0xf)
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 251; uint32_t java_name_index (0xfb)
	}, ; 733
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 736; uint32_t java_name_index (0x2e0)
	}, ; 734
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554603, ; uint32_t type_token_id (0x20000ab)
		i32 384; uint32_t java_name_index (0x180)
	}, ; 735
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 68; uint32_t java_name_index (0x44)
	}, ; 736
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554752, ; uint32_t type_token_id (0x2000140)
		i32 316; uint32_t java_name_index (0x13c)
	}, ; 737
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 904; uint32_t java_name_index (0x388)
	}, ; 738
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555823, ; uint32_t type_token_id (0x200056f)
		i32 124; uint32_t java_name_index (0x7c)
	}, ; 739
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554729, ; uint32_t type_token_id (0x2000129)
		i32 455; uint32_t java_name_index (0x1c7)
	}, ; 740
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555254, ; uint32_t type_token_id (0x2000336)
		i32 106; uint32_t java_name_index (0x6a)
	}, ; 741
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 277; uint32_t java_name_index (0x115)
	}, ; 742
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 210; uint32_t java_name_index (0xd2)
	}, ; 743
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 723; uint32_t java_name_index (0x2d3)
	}, ; 744
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555098, ; uint32_t type_token_id (0x200029a)
		i32 645; uint32_t java_name_index (0x285)
	}, ; 745
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554488, ; uint32_t type_token_id (0x2000038)
		i32 5; uint32_t java_name_index (0x5)
	}, ; 746
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555374, ; uint32_t type_token_id (0x20003ae)
		i32 800; uint32_t java_name_index (0x320)
	}, ; 747
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 694; uint32_t java_name_index (0x2b6)
	}, ; 748
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555406, ; uint32_t type_token_id (0x20003ce)
		i32 824; uint32_t java_name_index (0x338)
	}, ; 749
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 70; uint32_t java_name_index (0x46)
	}, ; 750
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 456; uint32_t java_name_index (0x1c8)
	}, ; 751
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 62; uint32_t java_name_index (0x3e)
	}, ; 752
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 8; uint32_t java_name_index (0x8)
	}, ; 753
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 602; uint32_t java_name_index (0x25a)
	}, ; 754
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 889; uint32_t java_name_index (0x379)
	}, ; 755
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555354, ; uint32_t type_token_id (0x200039a)
		i32 786; uint32_t java_name_index (0x312)
	}, ; 756
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 24; uint32_t java_name_index (0x18)
	}, ; 757
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 693; uint32_t java_name_index (0x2b5)
	}, ; 758
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 97; uint32_t java_name_index (0x61)
	}, ; 759
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555335, ; uint32_t type_token_id (0x2000387)
		i32 157; uint32_t java_name_index (0x9d)
	}, ; 760
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554691, ; uint32_t type_token_id (0x2000103)
		i32 436; uint32_t java_name_index (0x1b4)
	}, ; 761
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554719, ; uint32_t type_token_id (0x200011f)
		i32 450; uint32_t java_name_index (0x1c2)
	}, ; 762
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 775; uint32_t java_name_index (0x307)
	}, ; 763
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 203; uint32_t java_name_index (0xcb)
	}, ; 764
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555218, ; uint32_t type_token_id (0x2000312)
		i32 700; uint32_t java_name_index (0x2bc)
	}, ; 765
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555177, ; uint32_t type_token_id (0x20002e9)
		i32 665; uint32_t java_name_index (0x299)
	}, ; 766
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 908; uint32_t java_name_index (0x38c)
	}, ; 767
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 193; uint32_t java_name_index (0xc1)
	}, ; 768
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 281; uint32_t java_name_index (0x119)
	}, ; 769
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555815, ; uint32_t type_token_id (0x2000567)
		i32 112; uint32_t java_name_index (0x70)
	}, ; 770
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 412; uint32_t java_name_index (0x19c)
	}, ; 771
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 162; uint32_t java_name_index (0xa2)
	}, ; 772
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 392; uint32_t java_name_index (0x188)
	}, ; 773
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 61; uint32_t java_name_index (0x3d)
	}, ; 774
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555405, ; uint32_t type_token_id (0x20003cd)
		i32 823; uint32_t java_name_index (0x337)
	}, ; 775
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555381, ; uint32_t type_token_id (0x20003b5)
		i32 806; uint32_t java_name_index (0x326)
	}, ; 776
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555155, ; uint32_t type_token_id (0x20002d3)
		i32 654; uint32_t java_name_index (0x28e)
	}, ; 777
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 974; uint32_t java_name_index (0x3ce)
	}, ; 778
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 890; uint32_t java_name_index (0x37a)
	}, ; 779
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554717, ; uint32_t type_token_id (0x200011d)
		i32 448; uint32_t java_name_index (0x1c0)
	}, ; 780
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 614; uint32_t java_name_index (0x266)
	}, ; 781
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 262; uint32_t java_name_index (0x106)
	}, ; 782
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 739; uint32_t java_name_index (0x2e3)
	}, ; 783
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554777, ; uint32_t type_token_id (0x2000159)
		i32 337; uint32_t java_name_index (0x151)
	}, ; 784
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 580; uint32_t java_name_index (0x244)
	}, ; 785
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554681, ; uint32_t type_token_id (0x20000f9)
		i32 428; uint32_t java_name_index (0x1ac)
	}, ; 786
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554842, ; uint32_t type_token_id (0x200019a)
		i32 528; uint32_t java_name_index (0x210)
	}, ; 787
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 962; uint32_t java_name_index (0x3c2)
	}, ; 788
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 372; uint32_t java_name_index (0x174)
	}, ; 789
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555235, ; uint32_t type_token_id (0x2000323)
		i32 712; uint32_t java_name_index (0x2c8)
	}, ; 790
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554743, ; uint32_t type_token_id (0x2000137)
		i32 308; uint32_t java_name_index (0x134)
	}, ; 791
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index (0x4)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 50; uint32_t java_name_index (0x32)
	}, ; 792
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 705; uint32_t java_name_index (0x2c1)
	}, ; 793
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 892; uint32_t java_name_index (0x37c)
	}, ; 794
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 379; uint32_t java_name_index (0x17b)
	}, ; 795
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555378, ; uint32_t type_token_id (0x20003b2)
		i32 803; uint32_t java_name_index (0x323)
	}, ; 796
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554885, ; uint32_t type_token_id (0x20001c5)
		i32 550; uint32_t java_name_index (0x226)
	}, ; 797
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index (0xc)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 85; uint32_t java_name_index (0x55)
	}, ; 798
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555359, ; uint32_t type_token_id (0x200039f)
		i32 173; uint32_t java_name_index (0xad)
	}, ; 799
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554998, ; uint32_t type_token_id (0x2000236)
		i32 611; uint32_t java_name_index (0x263)
	}, ; 800
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554718, ; uint32_t type_token_id (0x200011e)
		i32 449; uint32_t java_name_index (0x1c1)
	}, ; 801
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 366; uint32_t java_name_index (0x16e)
	}, ; 802
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554982, ; uint32_t type_token_id (0x2000226)
		i32 603; uint32_t java_name_index (0x25b)
	}, ; 803
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 814; uint32_t java_name_index (0x32e)
	}, ; 804
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 136; uint32_t java_name_index (0x88)
	}, ; 805
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 442; uint32_t java_name_index (0x1ba)
	}, ; 806
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554904, ; uint32_t type_token_id (0x20001d8)
		i32 558; uint32_t java_name_index (0x22e)
	}, ; 807
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555285, ; uint32_t type_token_id (0x2000355)
		i32 741; uint32_t java_name_index (0x2e5)
	}, ; 808
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 918; uint32_t java_name_index (0x396)
	}, ; 809
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 888; uint32_t java_name_index (0x378)
	}, ; 810
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555414, ; uint32_t type_token_id (0x20003d6)
		i32 831; uint32_t java_name_index (0x33f)
	}, ; 811
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 284; uint32_t java_name_index (0x11c)
	}, ; 812
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555856, ; uint32_t type_token_id (0x2000590)
		i32 181; uint32_t java_name_index (0xb5)
	}, ; 813
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 963; uint32_t java_name_index (0x3c3)
	}, ; 814
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555194, ; uint32_t type_token_id (0x20002fa)
		i32 682; uint32_t java_name_index (0x2aa)
	}, ; 815
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555047, ; uint32_t type_token_id (0x2000267)
		i32 629; uint32_t java_name_index (0x275)
	}, ; 816
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555260, ; uint32_t type_token_id (0x200033c)
		i32 728; uint32_t java_name_index (0x2d8)
	}, ; 817
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555409, ; uint32_t type_token_id (0x20003d1)
		i32 827; uint32_t java_name_index (0x33b)
	}, ; 818
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 46; uint32_t java_name_index (0x2e)
	}, ; 819
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 387; uint32_t java_name_index (0x183)
	}, ; 820
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 380; uint32_t java_name_index (0x17c)
	}, ; 821
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 950; uint32_t java_name_index (0x3b6)
	}, ; 822
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 463; uint32_t java_name_index (0x1cf)
	}, ; 823
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 283; uint32_t java_name_index (0x11b)
	}, ; 824
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554847, ; uint32_t type_token_id (0x200019f)
		i32 530; uint32_t java_name_index (0x212)
	}, ; 825
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 969; uint32_t java_name_index (0x3c9)
	}, ; 826
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 406; uint32_t java_name_index (0x196)
	}, ; 827
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554632, ; uint32_t type_token_id (0x20000c8)
		i32 400; uint32_t java_name_index (0x190)
	}, ; 828
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554795, ; uint32_t type_token_id (0x200016b)
		i32 341; uint32_t java_name_index (0x155)
	}, ; 829
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555859, ; uint32_t type_token_id (0x2000593)
		i32 184; uint32_t java_name_index (0xb8)
	}, ; 830
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 447; uint32_t java_name_index (0x1bf)
	}, ; 831
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555002, ; uint32_t type_token_id (0x200023a)
		i32 613; uint32_t java_name_index (0x265)
	}, ; 832
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 898; uint32_t java_name_index (0x382)
	}, ; 833
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 924; uint32_t java_name_index (0x39c)
	}, ; 834
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554905, ; uint32_t type_token_id (0x20001d9)
		i32 559; uint32_t java_name_index (0x22f)
	}, ; 835
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 868; uint32_t java_name_index (0x364)
	}, ; 836
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 78; uint32_t java_name_index (0x4e)
	}, ; 837
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 84; uint32_t java_name_index (0x54)
	}, ; 838
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554780, ; uint32_t type_token_id (0x200015c)
		i32 482; uint32_t java_name_index (0x1e2)
	}, ; 839
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 801; uint32_t java_name_index (0x321)
	}, ; 840
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 813; uint32_t java_name_index (0x32d)
	}, ; 841
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 912; uint32_t java_name_index (0x390)
	}, ; 842
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 839; uint32_t java_name_index (0x347)
	}, ; 843
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 259; uint32_t java_name_index (0x103)
	}, ; 844
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 113; uint32_t java_name_index (0x71)
	}, ; 845
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 227; uint32_t java_name_index (0xe3)
	}, ; 846
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555048, ; uint32_t type_token_id (0x2000268)
		i32 630; uint32_t java_name_index (0x276)
	}, ; 847
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555816, ; uint32_t type_token_id (0x2000568)
		i32 115; uint32_t java_name_index (0x73)
	}, ; 848
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 390; uint32_t java_name_index (0x186)
	}, ; 849
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 236; uint32_t java_name_index (0xec)
	}, ; 850
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555186, ; uint32_t type_token_id (0x20002f2)
		i32 674; uint32_t java_name_index (0x2a2)
	}, ; 851
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554839, ; uint32_t type_token_id (0x2000197)
		i32 525; uint32_t java_name_index (0x20d)
	}, ; 852
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555174, ; uint32_t type_token_id (0x20002e6)
		i32 662; uint32_t java_name_index (0x296)
	}, ; 853
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554870, ; uint32_t type_token_id (0x20001b6)
		i32 542; uint32_t java_name_index (0x21e)
	}, ; 854
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554900, ; uint32_t type_token_id (0x20001d4)
		i32 556; uint32_t java_name_index (0x22c)
	}, ; 855
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554688, ; uint32_t type_token_id (0x2000100)
		i32 433; uint32_t java_name_index (0x1b1)
	}, ; 856
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 230; uint32_t java_name_index (0xe6)
	}, ; 857
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 66; uint32_t java_name_index (0x42)
	}, ; 858
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554780, ; uint32_t type_token_id (0x200015c)
		i32 338; uint32_t java_name_index (0x152)
	}, ; 859
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 391; uint32_t java_name_index (0x187)
	}, ; 860
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555352, ; uint32_t type_token_id (0x2000398)
		i32 784; uint32_t java_name_index (0x310)
	}, ; 861
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555197, ; uint32_t type_token_id (0x20002fd)
		i32 685; uint32_t java_name_index (0x2ad)
	}, ; 862
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554827, ; uint32_t type_token_id (0x200018b)
		i32 518; uint32_t java_name_index (0x206)
	}, ; 863
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555167, ; uint32_t type_token_id (0x20002df)
		i32 656; uint32_t java_name_index (0x290)
	}, ; 864
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555217, ; uint32_t type_token_id (0x2000311)
		i32 699; uint32_t java_name_index (0x2bb)
	}, ; 865
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 921; uint32_t java_name_index (0x399)
	}, ; 866
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554782, ; uint32_t type_token_id (0x200015e)
		i32 484; uint32_t java_name_index (0x1e4)
	}, ; 867
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555166, ; uint32_t type_token_id (0x20002de)
		i32 655; uint32_t java_name_index (0x28f)
	}, ; 868
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 911; uint32_t java_name_index (0x38f)
	}, ; 869
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 454; uint32_t java_name_index (0x1c6)
	}, ; 870
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555313, ; uint32_t type_token_id (0x2000371)
		i32 758; uint32_t java_name_index (0x2f6)
	}, ; 871
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 913; uint32_t java_name_index (0x391)
	}, ; 872
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 15; uint32_t java_name_index (0xf)
	}, ; 873
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555172, ; uint32_t type_token_id (0x20002e4)
		i32 660; uint32_t java_name_index (0x294)
	}, ; 874
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555038, ; uint32_t type_token_id (0x200025e)
		i32 623; uint32_t java_name_index (0x26f)
	}, ; 875
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555088, ; uint32_t type_token_id (0x2000290)
		i32 637; uint32_t java_name_index (0x27d)
	}, ; 876
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554966, ; uint32_t type_token_id (0x2000216)
		i32 592; uint32_t java_name_index (0x250)
	}, ; 877
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 47; uint32_t java_name_index (0x2f)
	}, ; 878
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554708, ; uint32_t type_token_id (0x2000114)
		i32 302; uint32_t java_name_index (0x12e)
	}, ; 879
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554918, ; uint32_t type_token_id (0x20001e6)
		i32 565; uint32_t java_name_index (0x235)
	}, ; 880
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 298; uint32_t java_name_index (0x12a)
	}, ; 881
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 915; uint32_t java_name_index (0x393)
	}, ; 882
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 965; uint32_t java_name_index (0x3c5)
	}, ; 883
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554745, ; uint32_t type_token_id (0x2000139)
		i32 309; uint32_t java_name_index (0x135)
	}, ; 884
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555113, ; uint32_t type_token_id (0x20002a9)
		i32 333; uint32_t java_name_index (0x14d)
	}, ; 885
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 725; uint32_t java_name_index (0x2d5)
	}, ; 886
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 286; uint32_t java_name_index (0x11e)
	}, ; 887
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554973, ; uint32_t type_token_id (0x200021d)
		i32 598; uint32_t java_name_index (0x256)
	}, ; 888
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 268; uint32_t java_name_index (0x10c)
	}, ; 889
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 38; uint32_t java_name_index (0x26)
	}, ; 890
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554970, ; uint32_t type_token_id (0x200021a)
		i32 595; uint32_t java_name_index (0x253)
	}, ; 891
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 137; uint32_t java_name_index (0x89)
	}, ; 892
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554814, ; uint32_t type_token_id (0x200017e)
		i32 506; uint32_t java_name_index (0x1fa)
	}, ; 893
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555181, ; uint32_t type_token_id (0x20002ed)
		i32 669; uint32_t java_name_index (0x29d)
	}, ; 894
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index (0xf)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 252; uint32_t java_name_index (0xfc)
	}, ; 895
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554882, ; uint32_t type_token_id (0x20001c2)
		i32 548; uint32_t java_name_index (0x224)
	}, ; 896
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555178, ; uint32_t type_token_id (0x20002ea)
		i32 666; uint32_t java_name_index (0x29a)
	}, ; 897
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555141, ; uint32_t type_token_id (0x20002c5)
		i32 651; uint32_t java_name_index (0x28b)
	}, ; 898
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555189, ; uint32_t type_token_id (0x20002f5)
		i32 677; uint32_t java_name_index (0x2a5)
	}, ; 899
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 762; uint32_t java_name_index (0x2fa)
	}, ; 900
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554623, ; uint32_t type_token_id (0x20000bf)
		i32 971; uint32_t java_name_index (0x3cb)
	}, ; 901
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 278; uint32_t java_name_index (0x116)
	}, ; 902
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 170; uint32_t java_name_index (0xaa)
	}, ; 903
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555123, ; uint32_t type_token_id (0x20002b3)
		i32 646; uint32_t java_name_index (0x286)
	}, ; 904
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555196, ; uint32_t type_token_id (0x20002fc)
		i32 684; uint32_t java_name_index (0x2ac)
	}, ; 905
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 353; uint32_t java_name_index (0x161)
	}, ; 906
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555312, ; uint32_t type_token_id (0x2000370)
		i32 145; uint32_t java_name_index (0x91)
	}, ; 907
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 910; uint32_t java_name_index (0x38e)
	}, ; 908
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 944; uint32_t java_name_index (0x3b0)
	}, ; 909
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555025, ; uint32_t type_token_id (0x2000251)
		i32 617; uint32_t java_name_index (0x269)
	}, ; 910
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 737; uint32_t java_name_index (0x2e1)
	}, ; 911
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 271; uint32_t java_name_index (0x10f)
	}, ; 912
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 872; uint32_t java_name_index (0x368)
	}, ; 913
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555302, ; uint32_t type_token_id (0x2000366)
		i32 754; uint32_t java_name_index (0x2f2)
	}, ; 914
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554669, ; uint32_t type_token_id (0x20000ed)
		i32 420; uint32_t java_name_index (0x1a4)
	}, ; 915
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 196; uint32_t java_name_index (0xc4)
	}, ; 916
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554802, ; uint32_t type_token_id (0x2000172)
		i32 498; uint32_t java_name_index (0x1f2)
	}, ; 917
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 148; uint32_t java_name_index (0x94)
	}, ; 918
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 977; uint32_t java_name_index (0x3d1)
	}, ; 919
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554733, ; uint32_t type_token_id (0x200012d)
		i32 458; uint32_t java_name_index (0x1ca)
	}, ; 920
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554796, ; uint32_t type_token_id (0x200016c)
		i32 492; uint32_t java_name_index (0x1ec)
	}, ; 921
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 796; uint32_t java_name_index (0x31c)
	}, ; 922
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 36; uint32_t java_name_index (0x24)
	}, ; 923
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 163; uint32_t java_name_index (0xa3)
	}, ; 924
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555182, ; uint32_t type_token_id (0x20002ee)
		i32 670; uint32_t java_name_index (0x29e)
	}, ; 925
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 634; uint32_t java_name_index (0x27a)
	}, ; 926
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555826, ; uint32_t type_token_id (0x2000572)
		i32 126; uint32_t java_name_index (0x7e)
	}, ; 927
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 229; uint32_t java_name_index (0xe5)
	}, ; 928
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555296, ; uint32_t type_token_id (0x2000360)
		i32 749; uint32_t java_name_index (0x2ed)
	}, ; 929
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554721, ; uint32_t type_token_id (0x2000121)
		i32 451; uint32_t java_name_index (0x1c3)
	}, ; 930
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554959, ; uint32_t type_token_id (0x200020f)
		i32 587; uint32_t java_name_index (0x24b)
	}, ; 931
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 857; uint32_t java_name_index (0x359)
	}, ; 932
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 873; uint32_t java_name_index (0x369)
	}, ; 933
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 288; uint32_t java_name_index (0x120)
	}, ; 934
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index (0xf)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 249; uint32_t java_name_index (0xf9)
	}, ; 935
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554639, ; uint32_t type_token_id (0x20000cf)
		i32 404; uint32_t java_name_index (0x194)
	}, ; 936
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 959; uint32_t java_name_index (0x3bf)
	}, ; 937
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 44; uint32_t java_name_index (0x2c)
	}, ; 938
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554850, ; uint32_t type_token_id (0x20001a2)
		i32 532; uint32_t java_name_index (0x214)
	}, ; 939
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 756; uint32_t java_name_index (0x2f4)
	}, ; 940
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555384, ; uint32_t type_token_id (0x20003b8)
		i32 808; uint32_t java_name_index (0x328)
	}, ; 941
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555335, ; uint32_t type_token_id (0x2000387)
		i32 772; uint32_t java_name_index (0x304)
	}, ; 942
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554919, ; uint32_t type_token_id (0x20001e7)
		i32 566; uint32_t java_name_index (0x236)
	}, ; 943
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 975; uint32_t java_name_index (0x3cf)
	}, ; 944
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 110; uint32_t java_name_index (0x6e)
	}, ; 945
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 930; uint32_t java_name_index (0x3a2)
	}, ; 946
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 178; uint32_t java_name_index (0xb2)
	}, ; 947
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554663, ; uint32_t type_token_id (0x20000e7)
		i32 415; uint32_t java_name_index (0x19f)
	}, ; 948
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555349, ; uint32_t type_token_id (0x2000395)
		i32 782; uint32_t java_name_index (0x30e)
	}, ; 949
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 792; uint32_t java_name_index (0x318)
	}, ; 950
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 979; uint32_t java_name_index (0x3d3)
	}, ; 951
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 71; uint32_t java_name_index (0x47)
	}, ; 952
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 274; uint32_t java_name_index (0x112)
	}, ; 953
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 192; uint32_t java_name_index (0xc0)
	}, ; 954
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554781, ; uint32_t type_token_id (0x200015d)
		i32 483; uint32_t java_name_index (0x1e3)
	}, ; 955
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554613, ; uint32_t type_token_id (0x20000b5)
		i32 967; uint32_t java_name_index (0x3c7)
	}, ; 956
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555236, ; uint32_t type_token_id (0x2000324)
		i32 713; uint32_t java_name_index (0x2c9)
	}, ; 957
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 937; uint32_t java_name_index (0x3a9)
	}, ; 958
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 72; uint32_t java_name_index (0x48)
	}, ; 959
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555171, ; uint32_t type_token_id (0x20002e3)
		i32 659; uint32_t java_name_index (0x293)
	}, ; 960
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554734, ; uint32_t type_token_id (0x200012e)
		i32 459; uint32_t java_name_index (0x1cb)
	}, ; 961
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 954; uint32_t java_name_index (0x3ba)
	}, ; 962
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555848, ; uint32_t type_token_id (0x2000588)
		i32 161; uint32_t java_name_index (0xa1)
	}, ; 963
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555045, ; uint32_t type_token_id (0x2000265)
		i32 627; uint32_t java_name_index (0x273)
	}, ; 964
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555231, ; uint32_t type_token_id (0x200031f)
		i32 99; uint32_t java_name_index (0x63)
	}, ; 965
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 570; uint32_t java_name_index (0x23a)
	}, ; 966
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 190; uint32_t java_name_index (0xbe)
	}, ; 967
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554725, ; uint32_t type_token_id (0x2000125)
		i32 453; uint32_t java_name_index (0x1c5)
	}, ; 968
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 256; uint32_t java_name_index (0x100)
	}, ; 969
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554917, ; uint32_t type_token_id (0x20001e5)
		i32 564; uint32_t java_name_index (0x234)
	}, ; 970
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 138; uint32_t java_name_index (0x8a)
	}, ; 971
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 770; uint32_t java_name_index (0x302)
	}, ; 972
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554876, ; uint32_t type_token_id (0x20001bc)
		i32 544; uint32_t java_name_index (0x220)
	}, ; 973
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 569; uint32_t java_name_index (0x239)
	}, ; 974
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 885; uint32_t java_name_index (0x375)
	}, ; 975
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555268, ; uint32_t type_token_id (0x2000344)
		i32 732; uint32_t java_name_index (0x2dc)
	}, ; 976
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 738; uint32_t java_name_index (0x2e2)
	}, ; 977
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 394; uint32_t java_name_index (0x18a)
	}, ; 978
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 902; uint32_t java_name_index (0x386)
	}, ; 979
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 22; uint32_t java_name_index (0x16)
	}, ; 980
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554476, ; uint32_t type_token_id (0x200002c)
		i32 982; uint32_t java_name_index (0x3d6)
	}, ; 981
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33554649, ; uint32_t type_token_id (0x20000d9)
		i32 408; uint32_t java_name_index (0x198)
	}, ; 982
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 11; uint32_t java_name_index (0xb)
	}, ; 983
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 981; uint32_t java_name_index (0x3d5)
	}, ; 984
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 294; uint32_t java_name_index (0x126)
	}, ; 985
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 881; uint32_t java_name_index (0x371)
	}, ; 986
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555086, ; uint32_t type_token_id (0x200028e)
		i32 635; uint32_t java_name_index (0x27b)
	}, ; 987
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555389, ; uint32_t type_token_id (0x20003bd)
		i32 812; uint32_t java_name_index (0x32c)
	}, ; 988
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555128, ; uint32_t type_token_id (0x20002b8)
		i32 648; uint32_t java_name_index (0x288)
	}, ; 989
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555180, ; uint32_t type_token_id (0x20002ec)
		i32 668; uint32_t java_name_index (0x29c)
	} ; 990
], align 16

; Java type names
@java_type_names = dso_local local_unnamed_addr constant [991 x ptr] [
	ptr @.str.0, ; 0
	ptr @.str.1, ; 1
	ptr @.str.2, ; 2
	ptr @.str.3, ; 3
	ptr @.str.4, ; 4
	ptr @.str.5, ; 5
	ptr @.str.6, ; 6
	ptr @.str.7, ; 7
	ptr @.str.8, ; 8
	ptr @.str.9, ; 9
	ptr @.str.10, ; 10
	ptr @.str.11, ; 11
	ptr @.str.12, ; 12
	ptr @.str.13, ; 13
	ptr @.str.14, ; 14
	ptr @.str.15, ; 15
	ptr @.str.16, ; 16
	ptr @.str.17, ; 17
	ptr @.str.18, ; 18
	ptr @.str.19, ; 19
	ptr @.str.20, ; 20
	ptr @.str.21, ; 21
	ptr @.str.22, ; 22
	ptr @.str.23, ; 23
	ptr @.str.24, ; 24
	ptr @.str.25, ; 25
	ptr @.str.26, ; 26
	ptr @.str.27, ; 27
	ptr @.str.28, ; 28
	ptr @.str.29, ; 29
	ptr @.str.30, ; 30
	ptr @.str.31, ; 31
	ptr @.str.32, ; 32
	ptr @.str.33, ; 33
	ptr @.str.34, ; 34
	ptr @.str.35, ; 35
	ptr @.str.36, ; 36
	ptr @.str.37, ; 37
	ptr @.str.38, ; 38
	ptr @.str.39, ; 39
	ptr @.str.40, ; 40
	ptr @.str.41, ; 41
	ptr @.str.42, ; 42
	ptr @.str.43, ; 43
	ptr @.str.44, ; 44
	ptr @.str.45, ; 45
	ptr @.str.46, ; 46
	ptr @.str.47, ; 47
	ptr @.str.48, ; 48
	ptr @.str.49, ; 49
	ptr @.str.50, ; 50
	ptr @.str.51, ; 51
	ptr @.str.52, ; 52
	ptr @.str.53, ; 53
	ptr @.str.54, ; 54
	ptr @.str.55, ; 55
	ptr @.str.56, ; 56
	ptr @.str.57, ; 57
	ptr @.str.58, ; 58
	ptr @.str.59, ; 59
	ptr @.str.60, ; 60
	ptr @.str.61, ; 61
	ptr @.str.62, ; 62
	ptr @.str.63, ; 63
	ptr @.str.64, ; 64
	ptr @.str.65, ; 65
	ptr @.str.66, ; 66
	ptr @.str.67, ; 67
	ptr @.str.68, ; 68
	ptr @.str.69, ; 69
	ptr @.str.70, ; 70
	ptr @.str.71, ; 71
	ptr @.str.72, ; 72
	ptr @.str.73, ; 73
	ptr @.str.74, ; 74
	ptr @.str.75, ; 75
	ptr @.str.76, ; 76
	ptr @.str.77, ; 77
	ptr @.str.78, ; 78
	ptr @.str.79, ; 79
	ptr @.str.80, ; 80
	ptr @.str.81, ; 81
	ptr @.str.82, ; 82
	ptr @.str.83, ; 83
	ptr @.str.84, ; 84
	ptr @.str.85, ; 85
	ptr @.str.86, ; 86
	ptr @.str.87, ; 87
	ptr @.str.88, ; 88
	ptr @.str.89, ; 89
	ptr @.str.90, ; 90
	ptr @.str.91, ; 91
	ptr @.str.92, ; 92
	ptr @.str.93, ; 93
	ptr @.str.94, ; 94
	ptr @.str.95, ; 95
	ptr @.str.96, ; 96
	ptr @.str.97, ; 97
	ptr @.str.98, ; 98
	ptr @.str.99, ; 99
	ptr @.str.100, ; 100
	ptr @.str.101, ; 101
	ptr @.str.102, ; 102
	ptr @.str.103, ; 103
	ptr @.str.104, ; 104
	ptr @.str.105, ; 105
	ptr @.str.106, ; 106
	ptr @.str.107, ; 107
	ptr @.str.108, ; 108
	ptr @.str.109, ; 109
	ptr @.str.110, ; 110
	ptr @.str.111, ; 111
	ptr @.str.112, ; 112
	ptr @.str.113, ; 113
	ptr @.str.114, ; 114
	ptr @.str.115, ; 115
	ptr @.str.116, ; 116
	ptr @.str.117, ; 117
	ptr @.str.118, ; 118
	ptr @.str.119, ; 119
	ptr @.str.120, ; 120
	ptr @.str.121, ; 121
	ptr @.str.122, ; 122
	ptr @.str.123, ; 123
	ptr @.str.124, ; 124
	ptr @.str.125, ; 125
	ptr @.str.126, ; 126
	ptr @.str.127, ; 127
	ptr @.str.128, ; 128
	ptr @.str.129, ; 129
	ptr @.str.130, ; 130
	ptr @.str.131, ; 131
	ptr @.str.132, ; 132
	ptr @.str.133, ; 133
	ptr @.str.134, ; 134
	ptr @.str.135, ; 135
	ptr @.str.136, ; 136
	ptr @.str.137, ; 137
	ptr @.str.138, ; 138
	ptr @.str.139, ; 139
	ptr @.str.140, ; 140
	ptr @.str.141, ; 141
	ptr @.str.142, ; 142
	ptr @.str.143, ; 143
	ptr @.str.144, ; 144
	ptr @.str.145, ; 145
	ptr @.str.146, ; 146
	ptr @.str.147, ; 147
	ptr @.str.148, ; 148
	ptr @.str.149, ; 149
	ptr @.str.150, ; 150
	ptr @.str.151, ; 151
	ptr @.str.152, ; 152
	ptr @.str.153, ; 153
	ptr @.str.154, ; 154
	ptr @.str.155, ; 155
	ptr @.str.156, ; 156
	ptr @.str.157, ; 157
	ptr @.str.158, ; 158
	ptr @.str.159, ; 159
	ptr @.str.160, ; 160
	ptr @.str.161, ; 161
	ptr @.str.162, ; 162
	ptr @.str.163, ; 163
	ptr @.str.164, ; 164
	ptr @.str.165, ; 165
	ptr @.str.166, ; 166
	ptr @.str.167, ; 167
	ptr @.str.168, ; 168
	ptr @.str.169, ; 169
	ptr @.str.170, ; 170
	ptr @.str.171, ; 171
	ptr @.str.172, ; 172
	ptr @.str.173, ; 173
	ptr @.str.174, ; 174
	ptr @.str.175, ; 175
	ptr @.str.176, ; 176
	ptr @.str.177, ; 177
	ptr @.str.178, ; 178
	ptr @.str.179, ; 179
	ptr @.str.180, ; 180
	ptr @.str.181, ; 181
	ptr @.str.182, ; 182
	ptr @.str.183, ; 183
	ptr @.str.184, ; 184
	ptr @.str.185, ; 185
	ptr @.str.186, ; 186
	ptr @.str.187, ; 187
	ptr @.str.188, ; 188
	ptr @.str.189, ; 189
	ptr @.str.190, ; 190
	ptr @.str.191, ; 191
	ptr @.str.192, ; 192
	ptr @.str.193, ; 193
	ptr @.str.194, ; 194
	ptr @.str.195, ; 195
	ptr @.str.196, ; 196
	ptr @.str.197, ; 197
	ptr @.str.198, ; 198
	ptr @.str.199, ; 199
	ptr @.str.200, ; 200
	ptr @.str.201, ; 201
	ptr @.str.202, ; 202
	ptr @.str.203, ; 203
	ptr @.str.204, ; 204
	ptr @.str.205, ; 205
	ptr @.str.206, ; 206
	ptr @.str.207, ; 207
	ptr @.str.208, ; 208
	ptr @.str.209, ; 209
	ptr @.str.210, ; 210
	ptr @.str.211, ; 211
	ptr @.str.212, ; 212
	ptr @.str.213, ; 213
	ptr @.str.214, ; 214
	ptr @.str.215, ; 215
	ptr @.str.216, ; 216
	ptr @.str.217, ; 217
	ptr @.str.218, ; 218
	ptr @.str.219, ; 219
	ptr @.str.220, ; 220
	ptr @.str.221, ; 221
	ptr @.str.222, ; 222
	ptr @.str.223, ; 223
	ptr @.str.224, ; 224
	ptr @.str.225, ; 225
	ptr @.str.226, ; 226
	ptr @.str.227, ; 227
	ptr @.str.228, ; 228
	ptr @.str.229, ; 229
	ptr @.str.230, ; 230
	ptr @.str.231, ; 231
	ptr @.str.232, ; 232
	ptr @.str.233, ; 233
	ptr @.str.234, ; 234
	ptr @.str.235, ; 235
	ptr @.str.236, ; 236
	ptr @.str.237, ; 237
	ptr @.str.238, ; 238
	ptr @.str.239, ; 239
	ptr @.str.240, ; 240
	ptr @.str.241, ; 241
	ptr @.str.242, ; 242
	ptr @.str.243, ; 243
	ptr @.str.244, ; 244
	ptr @.str.245, ; 245
	ptr @.str.246, ; 246
	ptr @.str.247, ; 247
	ptr @.str.248, ; 248
	ptr @.str.249, ; 249
	ptr @.str.250, ; 250
	ptr @.str.251, ; 251
	ptr @.str.252, ; 252
	ptr @.str.253, ; 253
	ptr @.str.254, ; 254
	ptr @.str.255, ; 255
	ptr @.str.256, ; 256
	ptr @.str.257, ; 257
	ptr @.str.258, ; 258
	ptr @.str.259, ; 259
	ptr @.str.260, ; 260
	ptr @.str.261, ; 261
	ptr @.str.262, ; 262
	ptr @.str.263, ; 263
	ptr @.str.264, ; 264
	ptr @.str.265, ; 265
	ptr @.str.266, ; 266
	ptr @.str.267, ; 267
	ptr @.str.268, ; 268
	ptr @.str.269, ; 269
	ptr @.str.270, ; 270
	ptr @.str.271, ; 271
	ptr @.str.272, ; 272
	ptr @.str.273, ; 273
	ptr @.str.274, ; 274
	ptr @.str.275, ; 275
	ptr @.str.276, ; 276
	ptr @.str.277, ; 277
	ptr @.str.278, ; 278
	ptr @.str.279, ; 279
	ptr @.str.280, ; 280
	ptr @.str.281, ; 281
	ptr @.str.282, ; 282
	ptr @.str.283, ; 283
	ptr @.str.284, ; 284
	ptr @.str.285, ; 285
	ptr @.str.286, ; 286
	ptr @.str.287, ; 287
	ptr @.str.288, ; 288
	ptr @.str.289, ; 289
	ptr @.str.290, ; 290
	ptr @.str.291, ; 291
	ptr @.str.292, ; 292
	ptr @.str.293, ; 293
	ptr @.str.294, ; 294
	ptr @.str.295, ; 295
	ptr @.str.296, ; 296
	ptr @.str.297, ; 297
	ptr @.str.298, ; 298
	ptr @.str.299, ; 299
	ptr @.str.300, ; 300
	ptr @.str.301, ; 301
	ptr @.str.302, ; 302
	ptr @.str.303, ; 303
	ptr @.str.304, ; 304
	ptr @.str.305, ; 305
	ptr @.str.306, ; 306
	ptr @.str.307, ; 307
	ptr @.str.308, ; 308
	ptr @.str.309, ; 309
	ptr @.str.310, ; 310
	ptr @.str.311, ; 311
	ptr @.str.312, ; 312
	ptr @.str.313, ; 313
	ptr @.str.314, ; 314
	ptr @.str.315, ; 315
	ptr @.str.316, ; 316
	ptr @.str.317, ; 317
	ptr @.str.318, ; 318
	ptr @.str.319, ; 319
	ptr @.str.320, ; 320
	ptr @.str.321, ; 321
	ptr @.str.322, ; 322
	ptr @.str.323, ; 323
	ptr @.str.324, ; 324
	ptr @.str.325, ; 325
	ptr @.str.326, ; 326
	ptr @.str.327, ; 327
	ptr @.str.328, ; 328
	ptr @.str.329, ; 329
	ptr @.str.330, ; 330
	ptr @.str.331, ; 331
	ptr @.str.332, ; 332
	ptr @.str.333, ; 333
	ptr @.str.334, ; 334
	ptr @.str.335, ; 335
	ptr @.str.336, ; 336
	ptr @.str.337, ; 337
	ptr @.str.338, ; 338
	ptr @.str.339, ; 339
	ptr @.str.340, ; 340
	ptr @.str.341, ; 341
	ptr @.str.342, ; 342
	ptr @.str.343, ; 343
	ptr @.str.344, ; 344
	ptr @.str.345, ; 345
	ptr @.str.346, ; 346
	ptr @.str.347, ; 347
	ptr @.str.348, ; 348
	ptr @.str.349, ; 349
	ptr @.str.350, ; 350
	ptr @.str.351, ; 351
	ptr @.str.352, ; 352
	ptr @.str.353, ; 353
	ptr @.str.354, ; 354
	ptr @.str.355, ; 355
	ptr @.str.356, ; 356
	ptr @.str.357, ; 357
	ptr @.str.358, ; 358
	ptr @.str.359, ; 359
	ptr @.str.360, ; 360
	ptr @.str.361, ; 361
	ptr @.str.362, ; 362
	ptr @.str.363, ; 363
	ptr @.str.364, ; 364
	ptr @.str.365, ; 365
	ptr @.str.366, ; 366
	ptr @.str.367, ; 367
	ptr @.str.368, ; 368
	ptr @.str.369, ; 369
	ptr @.str.370, ; 370
	ptr @.str.371, ; 371
	ptr @.str.372, ; 372
	ptr @.str.373, ; 373
	ptr @.str.374, ; 374
	ptr @.str.375, ; 375
	ptr @.str.376, ; 376
	ptr @.str.377, ; 377
	ptr @.str.378, ; 378
	ptr @.str.379, ; 379
	ptr @.str.380, ; 380
	ptr @.str.381, ; 381
	ptr @.str.382, ; 382
	ptr @.str.383, ; 383
	ptr @.str.384, ; 384
	ptr @.str.385, ; 385
	ptr @.str.386, ; 386
	ptr @.str.387, ; 387
	ptr @.str.388, ; 388
	ptr @.str.389, ; 389
	ptr @.str.390, ; 390
	ptr @.str.391, ; 391
	ptr @.str.392, ; 392
	ptr @.str.393, ; 393
	ptr @.str.394, ; 394
	ptr @.str.395, ; 395
	ptr @.str.396, ; 396
	ptr @.str.397, ; 397
	ptr @.str.398, ; 398
	ptr @.str.399, ; 399
	ptr @.str.400, ; 400
	ptr @.str.401, ; 401
	ptr @.str.402, ; 402
	ptr @.str.403, ; 403
	ptr @.str.404, ; 404
	ptr @.str.405, ; 405
	ptr @.str.406, ; 406
	ptr @.str.407, ; 407
	ptr @.str.408, ; 408
	ptr @.str.409, ; 409
	ptr @.str.410, ; 410
	ptr @.str.411, ; 411
	ptr @.str.412, ; 412
	ptr @.str.413, ; 413
	ptr @.str.414, ; 414
	ptr @.str.415, ; 415
	ptr @.str.416, ; 416
	ptr @.str.417, ; 417
	ptr @.str.418, ; 418
	ptr @.str.419, ; 419
	ptr @.str.420, ; 420
	ptr @.str.421, ; 421
	ptr @.str.422, ; 422
	ptr @.str.423, ; 423
	ptr @.str.424, ; 424
	ptr @.str.425, ; 425
	ptr @.str.426, ; 426
	ptr @.str.427, ; 427
	ptr @.str.428, ; 428
	ptr @.str.429, ; 429
	ptr @.str.430, ; 430
	ptr @.str.431, ; 431
	ptr @.str.432, ; 432
	ptr @.str.433, ; 433
	ptr @.str.434, ; 434
	ptr @.str.435, ; 435
	ptr @.str.436, ; 436
	ptr @.str.437, ; 437
	ptr @.str.438, ; 438
	ptr @.str.439, ; 439
	ptr @.str.440, ; 440
	ptr @.str.441, ; 441
	ptr @.str.442, ; 442
	ptr @.str.443, ; 443
	ptr @.str.444, ; 444
	ptr @.str.445, ; 445
	ptr @.str.446, ; 446
	ptr @.str.447, ; 447
	ptr @.str.448, ; 448
	ptr @.str.449, ; 449
	ptr @.str.450, ; 450
	ptr @.str.451, ; 451
	ptr @.str.452, ; 452
	ptr @.str.453, ; 453
	ptr @.str.454, ; 454
	ptr @.str.455, ; 455
	ptr @.str.456, ; 456
	ptr @.str.457, ; 457
	ptr @.str.458, ; 458
	ptr @.str.459, ; 459
	ptr @.str.460, ; 460
	ptr @.str.461, ; 461
	ptr @.str.462, ; 462
	ptr @.str.463, ; 463
	ptr @.str.464, ; 464
	ptr @.str.465, ; 465
	ptr @.str.466, ; 466
	ptr @.str.467, ; 467
	ptr @.str.468, ; 468
	ptr @.str.469, ; 469
	ptr @.str.470, ; 470
	ptr @.str.471, ; 471
	ptr @.str.472, ; 472
	ptr @.str.473, ; 473
	ptr @.str.474, ; 474
	ptr @.str.475, ; 475
	ptr @.str.476, ; 476
	ptr @.str.477, ; 477
	ptr @.str.478, ; 478
	ptr @.str.479, ; 479
	ptr @.str.480, ; 480
	ptr @.str.481, ; 481
	ptr @.str.482, ; 482
	ptr @.str.483, ; 483
	ptr @.str.484, ; 484
	ptr @.str.485, ; 485
	ptr @.str.486, ; 486
	ptr @.str.487, ; 487
	ptr @.str.488, ; 488
	ptr @.str.489, ; 489
	ptr @.str.490, ; 490
	ptr @.str.491, ; 491
	ptr @.str.492, ; 492
	ptr @.str.493, ; 493
	ptr @.str.494, ; 494
	ptr @.str.495, ; 495
	ptr @.str.496, ; 496
	ptr @.str.497, ; 497
	ptr @.str.498, ; 498
	ptr @.str.499, ; 499
	ptr @.str.500, ; 500
	ptr @.str.501, ; 501
	ptr @.str.502, ; 502
	ptr @.str.503, ; 503
	ptr @.str.504, ; 504
	ptr @.str.505, ; 505
	ptr @.str.506, ; 506
	ptr @.str.507, ; 507
	ptr @.str.508, ; 508
	ptr @.str.509, ; 509
	ptr @.str.510, ; 510
	ptr @.str.511, ; 511
	ptr @.str.512, ; 512
	ptr @.str.513, ; 513
	ptr @.str.514, ; 514
	ptr @.str.515, ; 515
	ptr @.str.516, ; 516
	ptr @.str.517, ; 517
	ptr @.str.518, ; 518
	ptr @.str.519, ; 519
	ptr @.str.520, ; 520
	ptr @.str.521, ; 521
	ptr @.str.522, ; 522
	ptr @.str.523, ; 523
	ptr @.str.524, ; 524
	ptr @.str.525, ; 525
	ptr @.str.526, ; 526
	ptr @.str.527, ; 527
	ptr @.str.528, ; 528
	ptr @.str.529, ; 529
	ptr @.str.530, ; 530
	ptr @.str.531, ; 531
	ptr @.str.532, ; 532
	ptr @.str.533, ; 533
	ptr @.str.534, ; 534
	ptr @.str.535, ; 535
	ptr @.str.536, ; 536
	ptr @.str.537, ; 537
	ptr @.str.538, ; 538
	ptr @.str.539, ; 539
	ptr @.str.540, ; 540
	ptr @.str.541, ; 541
	ptr @.str.542, ; 542
	ptr @.str.543, ; 543
	ptr @.str.544, ; 544
	ptr @.str.545, ; 545
	ptr @.str.546, ; 546
	ptr @.str.547, ; 547
	ptr @.str.548, ; 548
	ptr @.str.549, ; 549
	ptr @.str.550, ; 550
	ptr @.str.551, ; 551
	ptr @.str.552, ; 552
	ptr @.str.553, ; 553
	ptr @.str.554, ; 554
	ptr @.str.555, ; 555
	ptr @.str.556, ; 556
	ptr @.str.557, ; 557
	ptr @.str.558, ; 558
	ptr @.str.559, ; 559
	ptr @.str.560, ; 560
	ptr @.str.561, ; 561
	ptr @.str.562, ; 562
	ptr @.str.563, ; 563
	ptr @.str.564, ; 564
	ptr @.str.565, ; 565
	ptr @.str.566, ; 566
	ptr @.str.567, ; 567
	ptr @.str.568, ; 568
	ptr @.str.569, ; 569
	ptr @.str.570, ; 570
	ptr @.str.571, ; 571
	ptr @.str.572, ; 572
	ptr @.str.573, ; 573
	ptr @.str.574, ; 574
	ptr @.str.575, ; 575
	ptr @.str.576, ; 576
	ptr @.str.577, ; 577
	ptr @.str.578, ; 578
	ptr @.str.579, ; 579
	ptr @.str.580, ; 580
	ptr @.str.581, ; 581
	ptr @.str.582, ; 582
	ptr @.str.583, ; 583
	ptr @.str.584, ; 584
	ptr @.str.585, ; 585
	ptr @.str.586, ; 586
	ptr @.str.587, ; 587
	ptr @.str.588, ; 588
	ptr @.str.589, ; 589
	ptr @.str.590, ; 590
	ptr @.str.591, ; 591
	ptr @.str.592, ; 592
	ptr @.str.593, ; 593
	ptr @.str.594, ; 594
	ptr @.str.595, ; 595
	ptr @.str.596, ; 596
	ptr @.str.597, ; 597
	ptr @.str.598, ; 598
	ptr @.str.599, ; 599
	ptr @.str.600, ; 600
	ptr @.str.601, ; 601
	ptr @.str.602, ; 602
	ptr @.str.603, ; 603
	ptr @.str.604, ; 604
	ptr @.str.605, ; 605
	ptr @.str.606, ; 606
	ptr @.str.607, ; 607
	ptr @.str.608, ; 608
	ptr @.str.609, ; 609
	ptr @.str.610, ; 610
	ptr @.str.611, ; 611
	ptr @.str.612, ; 612
	ptr @.str.613, ; 613
	ptr @.str.614, ; 614
	ptr @.str.615, ; 615
	ptr @.str.616, ; 616
	ptr @.str.617, ; 617
	ptr @.str.618, ; 618
	ptr @.str.619, ; 619
	ptr @.str.620, ; 620
	ptr @.str.621, ; 621
	ptr @.str.622, ; 622
	ptr @.str.623, ; 623
	ptr @.str.624, ; 624
	ptr @.str.625, ; 625
	ptr @.str.626, ; 626
	ptr @.str.627, ; 627
	ptr @.str.628, ; 628
	ptr @.str.629, ; 629
	ptr @.str.630, ; 630
	ptr @.str.631, ; 631
	ptr @.str.632, ; 632
	ptr @.str.633, ; 633
	ptr @.str.634, ; 634
	ptr @.str.635, ; 635
	ptr @.str.636, ; 636
	ptr @.str.637, ; 637
	ptr @.str.638, ; 638
	ptr @.str.639, ; 639
	ptr @.str.640, ; 640
	ptr @.str.641, ; 641
	ptr @.str.642, ; 642
	ptr @.str.643, ; 643
	ptr @.str.644, ; 644
	ptr @.str.645, ; 645
	ptr @.str.646, ; 646
	ptr @.str.647, ; 647
	ptr @.str.648, ; 648
	ptr @.str.649, ; 649
	ptr @.str.650, ; 650
	ptr @.str.651, ; 651
	ptr @.str.652, ; 652
	ptr @.str.653, ; 653
	ptr @.str.654, ; 654
	ptr @.str.655, ; 655
	ptr @.str.656, ; 656
	ptr @.str.657, ; 657
	ptr @.str.658, ; 658
	ptr @.str.659, ; 659
	ptr @.str.660, ; 660
	ptr @.str.661, ; 661
	ptr @.str.662, ; 662
	ptr @.str.663, ; 663
	ptr @.str.664, ; 664
	ptr @.str.665, ; 665
	ptr @.str.666, ; 666
	ptr @.str.667, ; 667
	ptr @.str.668, ; 668
	ptr @.str.669, ; 669
	ptr @.str.670, ; 670
	ptr @.str.671, ; 671
	ptr @.str.672, ; 672
	ptr @.str.673, ; 673
	ptr @.str.674, ; 674
	ptr @.str.675, ; 675
	ptr @.str.676, ; 676
	ptr @.str.677, ; 677
	ptr @.str.678, ; 678
	ptr @.str.679, ; 679
	ptr @.str.680, ; 680
	ptr @.str.681, ; 681
	ptr @.str.682, ; 682
	ptr @.str.683, ; 683
	ptr @.str.684, ; 684
	ptr @.str.685, ; 685
	ptr @.str.686, ; 686
	ptr @.str.687, ; 687
	ptr @.str.688, ; 688
	ptr @.str.689, ; 689
	ptr @.str.690, ; 690
	ptr @.str.691, ; 691
	ptr @.str.692, ; 692
	ptr @.str.693, ; 693
	ptr @.str.694, ; 694
	ptr @.str.695, ; 695
	ptr @.str.696, ; 696
	ptr @.str.697, ; 697
	ptr @.str.698, ; 698
	ptr @.str.699, ; 699
	ptr @.str.700, ; 700
	ptr @.str.701, ; 701
	ptr @.str.702, ; 702
	ptr @.str.703, ; 703
	ptr @.str.704, ; 704
	ptr @.str.705, ; 705
	ptr @.str.706, ; 706
	ptr @.str.707, ; 707
	ptr @.str.708, ; 708
	ptr @.str.709, ; 709
	ptr @.str.710, ; 710
	ptr @.str.711, ; 711
	ptr @.str.712, ; 712
	ptr @.str.713, ; 713
	ptr @.str.714, ; 714
	ptr @.str.715, ; 715
	ptr @.str.716, ; 716
	ptr @.str.717, ; 717
	ptr @.str.718, ; 718
	ptr @.str.719, ; 719
	ptr @.str.720, ; 720
	ptr @.str.721, ; 721
	ptr @.str.722, ; 722
	ptr @.str.723, ; 723
	ptr @.str.724, ; 724
	ptr @.str.725, ; 725
	ptr @.str.726, ; 726
	ptr @.str.727, ; 727
	ptr @.str.728, ; 728
	ptr @.str.729, ; 729
	ptr @.str.730, ; 730
	ptr @.str.731, ; 731
	ptr @.str.732, ; 732
	ptr @.str.733, ; 733
	ptr @.str.734, ; 734
	ptr @.str.735, ; 735
	ptr @.str.736, ; 736
	ptr @.str.737, ; 737
	ptr @.str.738, ; 738
	ptr @.str.739, ; 739
	ptr @.str.740, ; 740
	ptr @.str.741, ; 741
	ptr @.str.742, ; 742
	ptr @.str.743, ; 743
	ptr @.str.744, ; 744
	ptr @.str.745, ; 745
	ptr @.str.746, ; 746
	ptr @.str.747, ; 747
	ptr @.str.748, ; 748
	ptr @.str.749, ; 749
	ptr @.str.750, ; 750
	ptr @.str.751, ; 751
	ptr @.str.752, ; 752
	ptr @.str.753, ; 753
	ptr @.str.754, ; 754
	ptr @.str.755, ; 755
	ptr @.str.756, ; 756
	ptr @.str.757, ; 757
	ptr @.str.758, ; 758
	ptr @.str.759, ; 759
	ptr @.str.760, ; 760
	ptr @.str.761, ; 761
	ptr @.str.762, ; 762
	ptr @.str.763, ; 763
	ptr @.str.764, ; 764
	ptr @.str.765, ; 765
	ptr @.str.766, ; 766
	ptr @.str.767, ; 767
	ptr @.str.768, ; 768
	ptr @.str.769, ; 769
	ptr @.str.770, ; 770
	ptr @.str.771, ; 771
	ptr @.str.772, ; 772
	ptr @.str.773, ; 773
	ptr @.str.774, ; 774
	ptr @.str.775, ; 775
	ptr @.str.776, ; 776
	ptr @.str.777, ; 777
	ptr @.str.778, ; 778
	ptr @.str.779, ; 779
	ptr @.str.780, ; 780
	ptr @.str.781, ; 781
	ptr @.str.782, ; 782
	ptr @.str.783, ; 783
	ptr @.str.784, ; 784
	ptr @.str.785, ; 785
	ptr @.str.786, ; 786
	ptr @.str.787, ; 787
	ptr @.str.788, ; 788
	ptr @.str.789, ; 789
	ptr @.str.790, ; 790
	ptr @.str.791, ; 791
	ptr @.str.792, ; 792
	ptr @.str.793, ; 793
	ptr @.str.794, ; 794
	ptr @.str.795, ; 795
	ptr @.str.796, ; 796
	ptr @.str.797, ; 797
	ptr @.str.798, ; 798
	ptr @.str.799, ; 799
	ptr @.str.800, ; 800
	ptr @.str.801, ; 801
	ptr @.str.802, ; 802
	ptr @.str.803, ; 803
	ptr @.str.804, ; 804
	ptr @.str.805, ; 805
	ptr @.str.806, ; 806
	ptr @.str.807, ; 807
	ptr @.str.808, ; 808
	ptr @.str.809, ; 809
	ptr @.str.810, ; 810
	ptr @.str.811, ; 811
	ptr @.str.812, ; 812
	ptr @.str.813, ; 813
	ptr @.str.814, ; 814
	ptr @.str.815, ; 815
	ptr @.str.816, ; 816
	ptr @.str.817, ; 817
	ptr @.str.818, ; 818
	ptr @.str.819, ; 819
	ptr @.str.820, ; 820
	ptr @.str.821, ; 821
	ptr @.str.822, ; 822
	ptr @.str.823, ; 823
	ptr @.str.824, ; 824
	ptr @.str.825, ; 825
	ptr @.str.826, ; 826
	ptr @.str.827, ; 827
	ptr @.str.828, ; 828
	ptr @.str.829, ; 829
	ptr @.str.830, ; 830
	ptr @.str.831, ; 831
	ptr @.str.832, ; 832
	ptr @.str.833, ; 833
	ptr @.str.834, ; 834
	ptr @.str.835, ; 835
	ptr @.str.836, ; 836
	ptr @.str.837, ; 837
	ptr @.str.838, ; 838
	ptr @.str.839, ; 839
	ptr @.str.840, ; 840
	ptr @.str.841, ; 841
	ptr @.str.842, ; 842
	ptr @.str.843, ; 843
	ptr @.str.844, ; 844
	ptr @.str.845, ; 845
	ptr @.str.846, ; 846
	ptr @.str.847, ; 847
	ptr @.str.848, ; 848
	ptr @.str.849, ; 849
	ptr @.str.850, ; 850
	ptr @.str.851, ; 851
	ptr @.str.852, ; 852
	ptr @.str.853, ; 853
	ptr @.str.854, ; 854
	ptr @.str.855, ; 855
	ptr @.str.856, ; 856
	ptr @.str.857, ; 857
	ptr @.str.858, ; 858
	ptr @.str.859, ; 859
	ptr @.str.860, ; 860
	ptr @.str.861, ; 861
	ptr @.str.862, ; 862
	ptr @.str.863, ; 863
	ptr @.str.864, ; 864
	ptr @.str.865, ; 865
	ptr @.str.866, ; 866
	ptr @.str.867, ; 867
	ptr @.str.868, ; 868
	ptr @.str.869, ; 869
	ptr @.str.870, ; 870
	ptr @.str.871, ; 871
	ptr @.str.872, ; 872
	ptr @.str.873, ; 873
	ptr @.str.874, ; 874
	ptr @.str.875, ; 875
	ptr @.str.876, ; 876
	ptr @.str.877, ; 877
	ptr @.str.878, ; 878
	ptr @.str.879, ; 879
	ptr @.str.880, ; 880
	ptr @.str.881, ; 881
	ptr @.str.882, ; 882
	ptr @.str.883, ; 883
	ptr @.str.884, ; 884
	ptr @.str.885, ; 885
	ptr @.str.886, ; 886
	ptr @.str.887, ; 887
	ptr @.str.888, ; 888
	ptr @.str.889, ; 889
	ptr @.str.890, ; 890
	ptr @.str.891, ; 891
	ptr @.str.892, ; 892
	ptr @.str.893, ; 893
	ptr @.str.894, ; 894
	ptr @.str.895, ; 895
	ptr @.str.896, ; 896
	ptr @.str.897, ; 897
	ptr @.str.898, ; 898
	ptr @.str.899, ; 899
	ptr @.str.900, ; 900
	ptr @.str.901, ; 901
	ptr @.str.902, ; 902
	ptr @.str.903, ; 903
	ptr @.str.904, ; 904
	ptr @.str.905, ; 905
	ptr @.str.906, ; 906
	ptr @.str.907, ; 907
	ptr @.str.908, ; 908
	ptr @.str.909, ; 909
	ptr @.str.910, ; 910
	ptr @.str.911, ; 911
	ptr @.str.912, ; 912
	ptr @.str.913, ; 913
	ptr @.str.914, ; 914
	ptr @.str.915, ; 915
	ptr @.str.916, ; 916
	ptr @.str.917, ; 917
	ptr @.str.918, ; 918
	ptr @.str.919, ; 919
	ptr @.str.920, ; 920
	ptr @.str.921, ; 921
	ptr @.str.922, ; 922
	ptr @.str.923, ; 923
	ptr @.str.924, ; 924
	ptr @.str.925, ; 925
	ptr @.str.926, ; 926
	ptr @.str.927, ; 927
	ptr @.str.928, ; 928
	ptr @.str.929, ; 929
	ptr @.str.930, ; 930
	ptr @.str.931, ; 931
	ptr @.str.932, ; 932
	ptr @.str.933, ; 933
	ptr @.str.934, ; 934
	ptr @.str.935, ; 935
	ptr @.str.936, ; 936
	ptr @.str.937, ; 937
	ptr @.str.938, ; 938
	ptr @.str.939, ; 939
	ptr @.str.940, ; 940
	ptr @.str.941, ; 941
	ptr @.str.942, ; 942
	ptr @.str.943, ; 943
	ptr @.str.944, ; 944
	ptr @.str.945, ; 945
	ptr @.str.946, ; 946
	ptr @.str.947, ; 947
	ptr @.str.948, ; 948
	ptr @.str.949, ; 949
	ptr @.str.950, ; 950
	ptr @.str.951, ; 951
	ptr @.str.952, ; 952
	ptr @.str.953, ; 953
	ptr @.str.954, ; 954
	ptr @.str.955, ; 955
	ptr @.str.956, ; 956
	ptr @.str.957, ; 957
	ptr @.str.958, ; 958
	ptr @.str.959, ; 959
	ptr @.str.960, ; 960
	ptr @.str.961, ; 961
	ptr @.str.962, ; 962
	ptr @.str.963, ; 963
	ptr @.str.964, ; 964
	ptr @.str.965, ; 965
	ptr @.str.966, ; 966
	ptr @.str.967, ; 967
	ptr @.str.968, ; 968
	ptr @.str.969, ; 969
	ptr @.str.970, ; 970
	ptr @.str.971, ; 971
	ptr @.str.972, ; 972
	ptr @.str.973, ; 973
	ptr @.str.974, ; 974
	ptr @.str.975, ; 975
	ptr @.str.976, ; 976
	ptr @.str.977, ; 977
	ptr @.str.978, ; 978
	ptr @.str.979, ; 979
	ptr @.str.980, ; 980
	ptr @.str.981, ; 981
	ptr @.str.982, ; 982
	ptr @.str.983, ; 983
	ptr @.str.984, ; 984
	ptr @.str.985, ; 985
	ptr @.str.986, ; 986
	ptr @.str.987, ; 987
	ptr @.str.988, ; 988
	ptr @.str.989, ; 989
	ptr @.str.990 ; 990
], align 16

; Strings
@.str.0 = private unnamed_addr constant [36 x i8] c"androidx/lifecycle/SavedStateHandle\00", align 16
@.str.1 = private unnamed_addr constant [54 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout\00", align 16
@.str.2 = private unnamed_addr constant [78 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback\00", align 16
@.str.3 = private unnamed_addr constant [72 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener\00", align 16
@.str.4 = private unnamed_addr constant [88 x i8] c"mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor\00", align 16
@.str.5 = private unnamed_addr constant [55 x i8] c"crc64ba438d8f48cf7e75/ActivityLifecycleContextListener\00", align 16
@.str.6 = private unnamed_addr constant [43 x i8] c"crc64ba438d8f48cf7e75/IntermediateActivity\00", align 16
@.str.7 = private unnamed_addr constant [59 x i8] c"crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener\00", align 16
@.str.8 = private unnamed_addr constant [51 x i8] c"crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver\00", align 16
@.str.9 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/GridLayoutManager\00", align 16
@.str.10 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup\00", align 16
@.str.11 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchUIUtil\00", align 16
@.str.12 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchHelper\00", align 16
@.str.13 = private unnamed_addr constant [54 x i8] c"androidx/recyclerview/widget/ItemTouchHelper$Callback\00", align 16
@.str.14 = private unnamed_addr constant [49 x i8] c"androidx/recyclerview/widget/LinearLayoutManager\00", align 16
@.str.15 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/LinearSmoothScroller\00", align 16
@.str.16 = private unnamed_addr constant [46 x i8] c"androidx/recyclerview/widget/LinearSnapHelper\00", align 16
@.str.17 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/OrientationHelper\00", align 16
@.str.18 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/PagerSnapHelper\00", align 16
@.str.19 = private unnamed_addr constant [42 x i8] c"androidx/recyclerview/widget/RecyclerView\00", align 16
@.str.20 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter\00", align 16
@.str.21 = private unnamed_addr constant [73 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy\00", align 16
@.str.22 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$AdapterDataObserver\00", align 16
@.str.23 = private unnamed_addr constant [68 x i8] c"androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback\00", align 16
@.str.24 = private unnamed_addr constant [60 x i8] c"androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory\00", align 16
@.str.25 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator\00", align 16
@.str.26 = private unnamed_addr constant [84 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener\00", align 16
@.str.27 = private unnamed_addr constant [70 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo\00", align 16
@.str.28 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemDecoration\00", align 16
@.str.29 = private unnamed_addr constant [56 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager\00", align 16
@.str.30 = private unnamed_addr constant [79 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry\00", align 16
@.str.31 = private unnamed_addr constant [67 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties\00", align 16
@.str.32 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutParams\00", align 16
@.str.33 = private unnamed_addr constant [75 x i8] c"androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener\00", align 16
@.str.34 = private unnamed_addr constant [91 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor\00", align 16
@.str.35 = private unnamed_addr constant [58 x i8] c"androidx/recyclerview/widget/RecyclerView$OnFlingListener\00", align 16
@.str.36 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$OnItemTouchListener\00", align 16
@.str.37 = private unnamed_addr constant [78 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor\00", align 16
@.str.38 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$OnScrollListener\00", align 16
@.str.39 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecycledViewPool\00", align 16
@.str.40 = private unnamed_addr constant [51 x i8] c"androidx/recyclerview/widget/RecyclerView$Recycler\00", align 16
@.str.41 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecyclerListener\00", align 16
@.str.42 = private unnamed_addr constant [75 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor\00", align 16
@.str.43 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller\00", align 16
@.str.44 = private unnamed_addr constant [64 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action\00", align 16
@.str.45 = private unnamed_addr constant [48 x i8] c"androidx/recyclerview/widget/RecyclerView$State\00", align 16
@.str.46 = private unnamed_addr constant [61 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewCacheExtension\00", align 16
@.str.47 = private unnamed_addr constant [53 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewHolder\00", align 16
@.str.48 = private unnamed_addr constant [63 x i8] c"androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate\00", align 16
@.str.49 = private unnamed_addr constant [40 x i8] c"androidx/recyclerview/widget/SnapHelper\00", align 16
@.str.50 = private unnamed_addr constant [36 x i8] c"androidx/customview/widget/Openable\00", align 16
@.str.51 = private unnamed_addr constant [38 x i8] c"androidx/collection/SparseArrayCompat\00", align 16
@.str.52 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavController\00", align 16
@.str.53 = private unnamed_addr constant [63 x i8] c"androidx/navigation/NavController$OnDestinationChangedListener\00", align 16
@.str.54 = private unnamed_addr constant [79 x i8] c"mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor\00", align 16
@.str.55 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkBuilder\00", align 16
@.str.56 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavHostController\00", align 16
@.str.57 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavInflater\00", align 16
@.str.58 = private unnamed_addr constant [47 x i8] c"androidx/navigation/fragment/FragmentNavigator\00", align 16
@.str.59 = private unnamed_addr constant [59 x i8] c"androidx/navigation/fragment/FragmentNavigator$Destination\00", align 16
@.str.60 = private unnamed_addr constant [45 x i8] c"androidx/navigation/fragment/NavHostFragment\00", align 16
@.str.61 = private unnamed_addr constant [39 x i8] c"androidx/savedstate/SavedStateRegistry\00", align 16
@.str.62 = private unnamed_addr constant [58 x i8] c"androidx/savedstate/SavedStateRegistry$SavedStateProvider\00", align 16
@.str.63 = private unnamed_addr constant [43 x i8] c"crc643f2b18b2570eaa5a/PlatformGraphicsView\00", align 16
@.str.64 = private unnamed_addr constant [36 x i8] c"androidx/activity/ComponentActivity\00", align 16
@.str.65 = private unnamed_addr constant [34 x i8] c"androidx/activity/ComponentDialog\00", align 16
@.str.66 = private unnamed_addr constant [37 x i8] c"androidx/activity/FullyDrawnReporter\00", align 16
@.str.67 = private unnamed_addr constant [40 x i8] c"androidx/activity/OnBackPressedCallback\00", align 16
@.str.68 = private unnamed_addr constant [42 x i8] c"androidx/activity/OnBackPressedDispatcher\00", align 16
@.str.69 = private unnamed_addr constant [58 x i8] c"androidx/activity/contextaware/OnContextAvailableListener\00", align 16
@.str.70 = private unnamed_addr constant [74 x i8] c"mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor\00", align 16
@.str.71 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultLauncher\00", align 16
@.str.72 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultRegistry\00", align 16
@.str.73 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultCallback\00", align 16
@.str.74 = private unnamed_addr constant [57 x i8] c"androidx/activity/result/contract/ActivityResultContract\00", align 16
@.str.75 = private unnamed_addr constant [75 x i8] c"androidx/activity/result/contract/ActivityResultContract$SynchronousResult\00", align 16
@.str.76 = private unnamed_addr constant [16 x i8] c"kotlin/Function\00", align 16
@.str.77 = private unnamed_addr constant [26 x i8] c"kotlin/sequences/Sequence\00", align 16
@.str.78 = private unnamed_addr constant [45 x i8] c"kotlin/jvm/internal/DefaultConstructorMarker\00", align 16
@.str.79 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function0\00", align 16
@.str.80 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function1\00", align 16
@.str.81 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function2\00", align 16
@.str.82 = private unnamed_addr constant [31 x i8] c"kotlin/coroutines/Continuation\00", align 16
@.str.83 = private unnamed_addr constant [39 x i8] c"kotlin/coroutines/CoroutineContext$Key\00", align 16
@.str.84 = private unnamed_addr constant [35 x i8] c"kotlin/coroutines/CoroutineContext\00", align 16
@.str.85 = private unnamed_addr constant [34 x i8] c"androidx/cardview/widget/CardView\00", align 16
@.str.86 = private unnamed_addr constant [55 x i8] c"crc64f728827fec74e9c3/TapWindowTracker_GestureListener\00", align 16
@.str.87 = private unnamed_addr constant [40 x i8] c"crc64f728827fec74e9c3/Toolbar_Container\00", align 16
@.str.88 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/ColorChangeRevealDrawable\00", align 16
@.str.89 = private unnamed_addr constant [52 x i8] c"crc64338477404e88479c/ControlsAccessibilityDelegate\00", align 16
@.str.90 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler\00", align 16
@.str.91 = private unnamed_addr constant [69 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData\00", align 16
@.str.92 = private unnamed_addr constant [66 x i8] c"crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView\00", align 16
@.str.93 = private unnamed_addr constant [40 x i8] c"crc64338477404e88479c/FragmentContainer\00", align 16
@.str.94 = private unnamed_addr constant [46 x i8] c"crc64338477404e88479c/GenericAnimatorListener\00", align 16
@.str.95 = private unnamed_addr constant [50 x i8] c"crc64338477404e88479c/GenericGlobalLayoutListener\00", align 16
@.str.96 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/GenericMenuClickListener\00", align 16
@.str.97 = private unnamed_addr constant [45 x i8] c"crc64338477404e88479c/GradientStrokeDrawable\00", align 16
@.str.98 = private unnamed_addr constant [43 x i8] c"crc64338477404e88479c/InnerGestureListener\00", align 16
@.str.99 = private unnamed_addr constant [41 x i8] c"crc64338477404e88479c/InnerScaleListener\00", align 16
@.str.100 = private unnamed_addr constant [36 x i8] c"crc64338477404e88479c/MauiViewPager\00", align 16
@.str.101 = private unnamed_addr constant [54 x i8] c"crc64338477404e88479c/MultiPageFragmentStateAdapter_1\00", align 16
@.str.102 = private unnamed_addr constant [44 x i8] c"crc64338477404e88479c/PointerGestureHandler\00", align 16
@.str.103 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/TapAndPanGestureDetector\00", align 16
@.str.104 = private unnamed_addr constant [60 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalContainer\00", align 16
@.str.105 = private unnamed_addr constant [74 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalContainer_ModalFragment\00", align 16
@.str.106 = private unnamed_addr constant [36 x i8] c"crc640ec207abc449b2ca/ContainerView\00", align 16
@.str.107 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/CustomFrameLayout\00", align 16
@.str.108 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellContentFragment\00", align 16
@.str.109 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellFlyoutLayout\00", align 16
@.str.110 = private unnamed_addr constant [49 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter\00", align 16
@.str.111 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout\00", align 16
@.str.112 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder\00", align 16
@.str.113 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRenderer\00", align 16
@.str.114 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer\00", align 16
@.str.115 = private unnamed_addr constant [74 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer\00", align 16
@.str.116 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/RecyclerViewContainer\00", align 16
@.str.117 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ScrollLayoutManager\00", align 16
@.str.118 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellFragmentContainer\00", align 16
@.str.119 = private unnamed_addr constant [48 x i8] c"crc640ec207abc449b2ca/ShellFragmentStateAdapter\00", align 16
@.str.120 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellItemRenderer\00", align 16
@.str.121 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/ShellItemRendererBase\00", align 16
@.str.122 = private unnamed_addr constant [41 x i8] c"crc640ec207abc449b2ca/ShellPageContainer\00", align 16
@.str.123 = private unnamed_addr constant [38 x i8] c"crc640ec207abc449b2ca/ShellSearchView\00", align 16
@.str.124 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper\00", align 16
@.str.125 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter\00", align 16
@.str.126 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter\00", align 16
@.str.127 = private unnamed_addr constant [59 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper\00", align 16
@.str.128 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer\00", align 16
@.str.129 = private unnamed_addr constant [64 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged\00", align 16
@.str.130 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker\00", align 16
@.str.131 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable\00", align 16
@.str.132 = private unnamed_addr constant [49 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_TempView\00", align 16
@.str.133 = private unnamed_addr constant [50 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_Listeners\00", align 16
@.str.134 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/CarouselViewAdapter_2\00", align 16
@.str.135 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/EmptyViewAdapter\00", align 16
@.str.136 = private unnamed_addr constant [50 x i8] c"crc645d80431ce5f73f11/GroupableItemsViewAdapter_2\00", align 16
@.str.137 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/ItemsViewAdapter_2\00", align 16
@.str.138 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2\00", align 16
@.str.139 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/SelectableItemsViewAdapter_2\00", align 16
@.str.140 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/StructuredItemsViewAdapter_2\00", align 16
@.str.141 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/CarouselSpacingItemDecoration\00", align 16
@.str.142 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/CarouselViewOnScrollListener\00", align 16
@.str.143 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/DataChangeObserver\00", align 16
@.str.144 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/GridLayoutSpanSizeLookup\00", align 16
@.str.145 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/ItemContentView\00", align 16
@.str.146 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView\00", align 16
@.str.147 = private unnamed_addr constant [82 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener\00", align 16
@.str.148 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/MauiRecyclerView_3\00", align 16
@.str.149 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/PositionalSmoothScroller\00", align 16
@.str.150 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/RecyclerViewScrollListener_2\00", align 16
@.str.151 = private unnamed_addr constant [35 x i8] c"crc645d80431ce5f73f11/ScrollHelper\00", align 16
@.str.152 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SelectableViewHolder\00", align 16
@.str.153 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/SimpleItemTouchHelperCallback\00", align 16
@.str.154 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SimpleViewHolder\00", align 16
@.str.155 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SizedItemContentView\00", align 16
@.str.156 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/CenterSnapHelper\00", align 16
@.str.157 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/EdgeSnapHelper\00", align 16
@.str.158 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/EndSingleSnapHelper\00", align 16
@.str.159 = private unnamed_addr constant [36 x i8] c"crc645d80431ce5f73f11/EndSnapHelper\00", align 16
@.str.160 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper\00", align 16
@.str.161 = private unnamed_addr constant [64 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener\00", align 16
@.str.162 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SingleSnapHelper\00", align 16
@.str.163 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/StartSingleSnapHelper\00", align 16
@.str.164 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/StartSnapHelper\00", align 16
@.str.165 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/SpacingItemDecoration\00", align 16
@.str.166 = private unnamed_addr constant [46 x i8] c"crc645d80431ce5f73f11/TemplatedItemViewHolder\00", align 16
@.str.167 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/TextViewHolder\00", align 16
@.str.168 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/FrameRenderer\00", align 16
@.str.169 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/ViewRenderer\00", align 16
@.str.170 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/ViewRenderer_2\00", align 16
@.str.171 = private unnamed_addr constant [46 x i8] c"crc64e1fb321c08285b90/VisualElementRenderer_1\00", align 16
@.str.172 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/BaseCellView\00", align 16
@.str.173 = private unnamed_addr constant [34 x i8] c"crc64e1fb321c08285b90/CellAdapter\00", align 16
@.str.174 = private unnamed_addr constant [50 x i8] c"crc64e1fb321c08285b90/CellRenderer_RendererHolder\00", align 16
@.str.175 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/ConditionalFocusLayout\00", align 16
@.str.176 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/EntryCellEditText\00", align 16
@.str.177 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/EntryCellView\00", align 16
@.str.178 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/GroupedListViewAdapter\00", align 16
@.str.179 = private unnamed_addr constant [38 x i8] c"crc64e1fb321c08285b90/ListViewAdapter\00", align 16
@.str.180 = private unnamed_addr constant [39 x i8] c"crc64e1fb321c08285b90/ListViewRenderer\00", align 16
@.str.181 = private unnamed_addr constant [49 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_Container\00", align 16
@.str.182 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling\00", align 16
@.str.183 = private unnamed_addr constant [74 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener\00", align 16
@.str.184 = private unnamed_addr constant [62 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector\00", align 16
@.str.185 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/SwitchCellView\00", align 16
@.str.186 = private unnamed_addr constant [52 x i8] c"crc64e1fb321c08285b90/TextCellRenderer_TextCellView\00", align 16
@.str.187 = private unnamed_addr constant [57 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer\00", align 16
@.str.188 = private unnamed_addr constant [76 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener\00", align 16
@.str.189 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener\00", align 16
@.str.190 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/TableViewModelRenderer\00", align 16
@.str.191 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/TableViewRenderer\00", align 16
@.str.192 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/graphics/drawable/DrawerArrowDrawable\00", align 16
@.str.193 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/app/AlertDialog\00", align 16
@.str.194 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/app/AlertDialog$Builder\00", align 16
@.str.195 = private unnamed_addr constant [78 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor\00", align 16
@.str.196 = private unnamed_addr constant [79 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor\00", align 16
@.str.197 = private unnamed_addr constant [89 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor\00", align 16
@.str.198 = private unnamed_addr constant [33 x i8] c"androidx/appcompat/app/ActionBar\00", align 16
@.str.199 = private unnamed_addr constant [46 x i8] c"androidx/appcompat/app/ActionBar$LayoutParams\00", align 16
@.str.200 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/app/ActionBar$OnMenuVisibilityListener\00", align 16
@.str.201 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor\00", align 16
@.str.202 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBar$OnNavigationListener\00", align 16
@.str.203 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/app/ActionBar$Tab\00", align 16
@.str.204 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBar$TabListener\00", align 16
@.str.205 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle\00", align 16
@.str.206 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle$Delegate\00", align 16
@.str.207 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatActivity\00", align 16
@.str.208 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatDelegate\00", align 16
@.str.209 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/app/AppCompatDialog\00", align 16
@.str.210 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatCallback\00", align 16
@.str.211 = private unnamed_addr constant [34 x i8] c"androidx/appcompat/widget/Toolbar\00", align 16
@.str.212 = private unnamed_addr constant [67 x i8] c"androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher\00", align 16
@.str.213 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/Toolbar$LayoutParams\00", align 16
@.str.214 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/Toolbar$OnMenuItemClickListener\00", align 16
@.str.215 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor\00", align 16
@.str.216 = private unnamed_addr constant [56 x i8] c"androidx/appcompat/widget/AppCompatAutoCompleteTextView\00", align 16
@.str.217 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/widget/AppCompatButton\00", align 16
@.str.218 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatCheckBox\00", align 16
@.str.219 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatEditText\00", align 16
@.str.220 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatImageButton\00", align 16
@.str.221 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/AppCompatImageView\00", align 16
@.str.222 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatRadioButton\00", align 16
@.str.223 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatTextView\00", align 16
@.str.224 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/DecorToolbar\00", align 16
@.str.225 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/LinearLayoutCompat\00", align 16
@.str.226 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/LinearLayoutCompat$LayoutParams\00", align 16
@.str.227 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView\00", align 16
@.str.228 = private unnamed_addr constant [75 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener\00", align 16
@.str.229 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/widget/SearchView\00", align 16
@.str.230 = private unnamed_addr constant [53 x i8] c"androidx/appcompat/widget/SearchView$OnCloseListener\00", align 16
@.str.231 = private unnamed_addr constant [69 x i8] c"mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor\00", align 16
@.str.232 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/widget/SearchView$OnQueryTextListener\00", align 16
@.str.233 = private unnamed_addr constant [73 x i8] c"mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor\00", align 16
@.str.234 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/SearchView$OnSuggestionListener\00", align 16
@.str.235 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor\00", align 16
@.str.236 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/SwitchCompat\00", align 16
@.str.237 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/widget/TintTypedArray\00", align 16
@.str.238 = private unnamed_addr constant [40 x i8] c"androidx/appcompat/widget/TooltipCompat\00", align 16
@.str.239 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/view/ActionMode\00", align 16
@.str.240 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/ActionMode$Callback\00", align 16
@.str.241 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/view/menu/MenuBuilder\00", align 16
@.str.242 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/view/menu/MenuBuilder$Callback\00", align 16
@.str.243 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/view/menu/MenuPresenter$Callback\00", align 16
@.str.244 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/view/menu/MenuPresenter\00", align 16
@.str.245 = private unnamed_addr constant [38 x i8] c"androidx/appcompat/view/menu/MenuView\00", align 16
@.str.246 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/view/menu/MenuItemImpl\00", align 16
@.str.247 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/menu/SubMenuBuilder\00", align 16
@.str.248 = private unnamed_addr constant [31 x i8] c"androidx/loader/content/Loader\00", align 16
@.str.249 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCanceledListener\00", align 16
@.str.250 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCompleteListener\00", align 16
@.str.251 = private unnamed_addr constant [34 x i8] c"androidx/loader/app/LoaderManager\00", align 16
@.str.252 = private unnamed_addr constant [50 x i8] c"androidx/loader/app/LoaderManager$LoaderCallbacks\00", align 16
@.str.253 = private unnamed_addr constant [35 x i8] c"crc6469068ad1cdfc2512/MainActivity\00", align 16
@.str.254 = private unnamed_addr constant [38 x i8] c"crc6469068ad1cdfc2512/MainApplication\00", align 16
@.str.255 = private unnamed_addr constant [44 x i8] c"androidx/cursoradapter/widget/CursorAdapter\00", align 16
@.str.256 = private unnamed_addr constant [43 x i8] c"androidx/navigation/ui/AppBarConfiguration\00", align 16
@.str.257 = private unnamed_addr constant [51 x i8] c"androidx/navigation/ui/AppBarConfiguration$Builder\00", align 16
@.str.258 = private unnamed_addr constant [64 x i8] c"androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener\00", align 16
@.str.259 = private unnamed_addr constant [36 x i8] c"androidx/navigation/ui/NavigationUI\00", align 16
@.str.260 = private unnamed_addr constant [59 x i8] c"androidx/appcompat/graphics/drawable/DrawableWrapperCompat\00", align 16
@.str.261 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/content/res/AppCompatResources\00", align 16
@.str.262 = private unnamed_addr constant [39 x i8] c"androidx/fragment/app/FragmentActivity\00", align 16
@.str.263 = private unnamed_addr constant [31 x i8] c"androidx/fragment/app/Fragment\00", align 16
@.str.264 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/Fragment$SavedState\00", align 16
@.str.265 = private unnamed_addr constant [40 x i8] c"androidx/fragment/app/FragmentContainer\00", align 16
@.str.266 = private unnamed_addr constant [44 x i8] c"androidx/fragment/app/FragmentContainerView\00", align 16
@.str.267 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentFactory\00", align 16
@.str.268 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/FragmentHostCallback\00", align 16
@.str.269 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentManager\00", align 16
@.str.270 = private unnamed_addr constant [53 x i8] c"androidx/fragment/app/FragmentManager$BackStackEntry\00", align 16
@.str.271 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks\00", align 16
@.str.272 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$OnBackStackChangedListener\00", align 16
@.str.273 = private unnamed_addr constant [81 x i8] c"mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor\00", align 16
@.str.274 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/FragmentTransaction\00", align 16
@.str.275 = private unnamed_addr constant [47 x i8] c"androidx/fragment/app/FragmentOnAttachListener\00", align 16
@.str.276 = private unnamed_addr constant [63 x i8] c"mono/androidx/fragment/app/FragmentOnAttachListenerImplementor\00", align 16
@.str.277 = private unnamed_addr constant [45 x i8] c"androidx/fragment/app/FragmentResultListener\00", align 16
@.str.278 = private unnamed_addr constant [52 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode\00", align 16
@.str.279 = private unnamed_addr constant [59 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode$Policy\00", align 16
@.str.280 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/strictmode/Violation\00", align 16
@.str.281 = private unnamed_addr constant [39 x i8] c"androidx/viewpager/widget/PagerAdapter\00", align 16
@.str.282 = private unnamed_addr constant [36 x i8] c"androidx/viewpager/widget/ViewPager\00", align 16
@.str.283 = private unnamed_addr constant [60 x i8] c"androidx/viewpager/widget/ViewPager$OnAdapterChangeListener\00", align 16
@.str.284 = private unnamed_addr constant [76 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor\00", align 16
@.str.285 = private unnamed_addr constant [57 x i8] c"androidx/viewpager/widget/ViewPager$OnPageChangeListener\00", align 16
@.str.286 = private unnamed_addr constant [73 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor\00", align 16
@.str.287 = private unnamed_addr constant [52 x i8] c"androidx/viewpager/widget/ViewPager$PageTransformer\00", align 16
@.str.288 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderResultCallback\00", align 16
@.str.289 = private unnamed_addr constant [42 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallback\00", align 16
@.str.290 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1\00", align 16
@.str.291 = private unnamed_addr constant [44 x i8] c"crc6488302ad6e9e4df1a/MauiAppCompatActivity\00", align 16
@.str.292 = private unnamed_addr constant [38 x i8] c"crc6488302ad6e9e4df1a/MauiApplication\00", align 16
@.str.293 = private unnamed_addr constant [65 x i8] c"crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks\00", align 16
@.str.294 = private unnamed_addr constant [31 x i8] c"com/microsoft/maui/BuildConfig\00", align 16
@.str.295 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/ImageLoaderCallback\00", align 16
@.str.296 = private unnamed_addr constant [33 x i8] c"com/microsoft/maui/MauiViewGroup\00", align 16
@.str.297 = private unnamed_addr constant [45 x i8] c"com/microsoft/maui/PlatformAppCompatTextView\00", align 16
@.str.298 = private unnamed_addr constant [44 x i8] c"com/microsoft/maui/PlatformContentViewGroup\00", align 16
@.str.299 = private unnamed_addr constant [36 x i8] c"com/microsoft/maui/PlatformFontSpan\00", align 16
@.str.300 = private unnamed_addr constant [35 x i8] c"com/microsoft/maui/PlatformInterop\00", align 16
@.str.301 = private unnamed_addr constant [42 x i8] c"com/microsoft/maui/PlatformLineHeightSpan\00", align 16
@.str.302 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/PlatformWrapperView\00", align 16
@.str.303 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper\00", align 16
@.str.304 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/BorderDrawable\00", align 16
@.str.305 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/ContainerView\00", align 16
@.str.306 = private unnamed_addr constant [39 x i8] c"crc6452ffdc5b34af3a0f/ContentViewGroup\00", align 16
@.str.307 = private unnamed_addr constant [58 x i8] c"crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks\00", align 16
@.str.308 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/LayoutViewGroup\00", align 16
@.str.309 = private unnamed_addr constant [49 x i8] c"crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener\00", align 16
@.str.310 = private unnamed_addr constant [54 x i8] c"crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat\00", align 16
@.str.311 = private unnamed_addr constant [44 x i8] c"crc6452ffdc5b34af3a0f/MauiAppCompatEditText\00", align 16
@.str.312 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiBoxView\00", align 16
@.str.313 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiDatePicker\00", align 16
@.str.314 = private unnamed_addr constant [41 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton\00", align 16
@.str.315 = private unnamed_addr constant [63 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable\00", align 16
@.str.316 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl\00", align 16
@.str.317 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener\00", align 16
@.str.318 = private unnamed_addr constant [33 x i8] c"crc6452ffdc5b34af3a0f/MauiPicker\00", align 16
@.str.319 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiPickerBase\00", align 16
@.str.320 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiScrollView\00", align 16
@.str.321 = private unnamed_addr constant [47 x i8] c"crc6452ffdc5b34af3a0f/MauiHorizontalScrollView\00", align 16
@.str.322 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiSearchView\00", align 16
@.str.323 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiShapeView\00", align 16
@.str.324 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiStepper\00", align 16
@.str.325 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout\00", align 16
@.str.326 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeView\00", align 16
@.str.327 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/MauiTextView\00", align 16
@.str.328 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiTimePicker\00", align 16
@.str.329 = private unnamed_addr constant [42 x i8] c"crc6452ffdc5b34af3a0f/MauiWebChromeClient\00", align 16
@.str.330 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiWebView\00", align 16
@.str.331 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiWebViewClient\00", align 16
@.str.332 = private unnamed_addr constant [44 x i8] c"microsoft/maui/platform/MauiNavHostFragment\00", align 16
@.str.333 = private unnamed_addr constant [65 x i8] c"crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment\00", align 16
@.str.334 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/NavigationViewFragment\00", align 16
@.str.335 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/ScopedFragment\00", align 16
@.str.336 = private unnamed_addr constant [55 x i8] c"crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks\00", align 16
@.str.337 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/ViewFragment\00", align 16
@.str.338 = private unnamed_addr constant [48 x i8] c"crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView\00", align 16
@.str.339 = private unnamed_addr constant [43 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerHolder\00", align 16
@.str.340 = private unnamed_addr constant [60 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener\00", align 16
@.str.341 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/SwipeViewPager\00", align 16
@.str.342 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult\00", align 16
@.str.343 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/WrapperView\00", align 16
@.str.344 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener\00", align 16
@.str.345 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener\00", align 16
@.str.346 = private unnamed_addr constant [59 x i8] c"crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener\00", align 16
@.str.347 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener\00", align 16
@.str.348 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener\00", align 16
@.str.349 = private unnamed_addr constant [54 x i8] c"crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick\00", align 16
@.str.350 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/LinearGradientShaderFactory\00", align 16
@.str.351 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/RadialGradientShaderFactory\00", align 16
@.str.352 = private unnamed_addr constant [35 x i8] c"crc64b5e713d400f589b7/MauiDrawable\00", align 16
@.str.353 = private unnamed_addr constant [59 x i8] c"crc64a096dc44ad241142/PlatformTicker_DurationScaleListener\00", align 16
@.str.354 = private unnamed_addr constant [39 x i8] c"androidx/lifecycle/ViewModelStoreOwner\00", align 16
@.str.355 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/ViewModel\00", align 16
@.str.356 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/ViewModelProvider\00", align 16
@.str.357 = private unnamed_addr constant [55 x i8] c"androidx/lifecycle/ViewModelProvider$Factory$Companion\00", align 16
@.str.358 = private unnamed_addr constant [45 x i8] c"androidx/lifecycle/ViewModelProvider$Factory\00", align 16
@.str.359 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/ViewModelStore\00", align 16
@.str.360 = private unnamed_addr constant [44 x i8] c"androidx/lifecycle/viewmodel/CreationExtras\00", align 16
@.str.361 = private unnamed_addr constant [48 x i8] c"androidx/lifecycle/viewmodel/CreationExtras$Key\00", align 16
@.str.362 = private unnamed_addr constant [50 x i8] c"androidx/lifecycle/viewmodel/ViewModelInitializer\00", align 16
@.str.363 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavDirections\00", align 16
@.str.364 = private unnamed_addr constant [46 x i8] c"androidx/navigation/NavViewModelStoreProvider\00", align 16
@.str.365 = private unnamed_addr constant [30 x i8] c"androidx/navigation/NavAction\00", align 16
@.str.366 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavArgument\00", align 16
@.str.367 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavBackStackEntry\00", align 16
@.str.368 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavDeepLink\00", align 16
@.str.369 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkRequest\00", align 16
@.str.370 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavDestination\00", align 16
@.str.371 = private unnamed_addr constant [49 x i8] c"androidx/navigation/NavDestination$DeepLinkMatch\00", align 16
@.str.372 = private unnamed_addr constant [29 x i8] c"androidx/navigation/NavGraph\00", align 16
@.str.373 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavGraphNavigator\00", align 16
@.str.374 = private unnamed_addr constant [30 x i8] c"androidx/navigation/Navigator\00", align 16
@.str.375 = private unnamed_addr constant [37 x i8] c"androidx/navigation/Navigator$Extras\00", align 16
@.str.376 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavigatorProvider\00", align 16
@.str.377 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavigatorState\00", align 16
@.str.378 = private unnamed_addr constant [31 x i8] c"androidx/navigation/NavOptions\00", align 16
@.str.379 = private unnamed_addr constant [28 x i8] c"androidx/navigation/NavType\00", align 16
@.str.380 = private unnamed_addr constant [29 x i8] c"org/xmlpull/v1/XmlPullParser\00", align 16
@.str.381 = private unnamed_addr constant [38 x i8] c"org/xmlpull/v1/XmlPullParserException\00", align 16
@.str.382 = private unnamed_addr constant [32 x i8] c"javax/security/cert/Certificate\00", align 16
@.str.383 = private unnamed_addr constant [36 x i8] c"javax/security/cert/X509Certificate\00", align 16
@.str.384 = private unnamed_addr constant [28 x i8] c"javax/security/auth/Subject\00", align 16
@.str.385 = private unnamed_addr constant [24 x i8] c"javax/net/SocketFactory\00", align 16
@.str.386 = private unnamed_addr constant [33 x i8] c"javax/net/ssl/HttpsURLConnection\00", align 16
@.str.387 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/HostnameVerifier\00", align 16
@.str.388 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/KeyManager\00", align 16
@.str.389 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLSession\00", align 16
@.str.390 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/SSLSessionContext\00", align 16
@.str.391 = private unnamed_addr constant [27 x i8] c"javax/net/ssl/TrustManager\00", align 16
@.str.392 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/KeyManagerFactory\00", align 16
@.str.393 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLContext\00", align 16
@.str.394 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/SSLSocketFactory\00", align 16
@.str.395 = private unnamed_addr constant [34 x i8] c"javax/net/ssl/TrustManagerFactory\00", align 16
@.str.396 = private unnamed_addr constant [37 x i8] c"android/window/OnBackInvokedCallback\00", align 16
@.str.397 = private unnamed_addr constant [39 x i8] c"android/window/OnBackInvokedDispatcher\00", align 16
@.str.398 = private unnamed_addr constant [27 x i8] c"android/widget/AbsListView\00", align 16
@.str.399 = private unnamed_addr constant [44 x i8] c"android/widget/AbsListView$OnScrollListener\00", align 16
@.str.400 = private unnamed_addr constant [30 x i8] c"android/widget/AbsoluteLayout\00", align 16
@.str.401 = private unnamed_addr constant [26 x i8] c"android/widget/AbsSeekBar\00", align 16
@.str.402 = private unnamed_addr constant [27 x i8] c"android/widget/AdapterView\00", align 16
@.str.403 = private unnamed_addr constant [47 x i8] c"android/widget/AdapterView$OnItemClickListener\00", align 16
@.str.404 = private unnamed_addr constant [63 x i8] c"mono/android/widget/AdapterView_OnItemClickListenerImplementor\00", align 16
@.str.405 = private unnamed_addr constant [51 x i8] c"android/widget/AdapterView$OnItemLongClickListener\00", align 16
@.str.406 = private unnamed_addr constant [50 x i8] c"android/widget/AdapterView$OnItemSelectedListener\00", align 16
@.str.407 = private unnamed_addr constant [36 x i8] c"android/widget/AutoCompleteTextView\00", align 16
@.str.408 = private unnamed_addr constant [27 x i8] c"android/widget/BaseAdapter\00", align 16
@.str.409 = private unnamed_addr constant [22 x i8] c"android/widget/Button\00", align 16
@.str.410 = private unnamed_addr constant [24 x i8] c"android/widget/CheckBox\00", align 16
@.str.411 = private unnamed_addr constant [30 x i8] c"android/widget/CompoundButton\00", align 16
@.str.412 = private unnamed_addr constant [54 x i8] c"android/widget/CompoundButton$OnCheckedChangeListener\00", align 16
@.str.413 = private unnamed_addr constant [70 x i8] c"mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor\00", align 16
@.str.414 = private unnamed_addr constant [26 x i8] c"android/widget/DatePicker\00", align 16
@.str.415 = private unnamed_addr constant [26 x i8] c"android/widget/EdgeEffect\00", align 16
@.str.416 = private unnamed_addr constant [24 x i8] c"android/widget/EditText\00", align 16
@.str.417 = private unnamed_addr constant [22 x i8] c"android/widget/Filter\00", align 16
@.str.418 = private unnamed_addr constant [36 x i8] c"android/widget/Filter$FilterResults\00", align 16
@.str.419 = private unnamed_addr constant [27 x i8] c"android/widget/FrameLayout\00", align 16
@.str.420 = private unnamed_addr constant [40 x i8] c"android/widget/FrameLayout$LayoutParams\00", align 16
@.str.421 = private unnamed_addr constant [36 x i8] c"android/widget/HorizontalScrollView\00", align 16
@.str.422 = private unnamed_addr constant [23 x i8] c"android/widget/Adapter\00", align 16
@.str.423 = private unnamed_addr constant [26 x i8] c"android/widget/Filterable\00", align 16
@.str.424 = private unnamed_addr constant [35 x i8] c"android/widget/FilterQueryProvider\00", align 16
@.str.425 = private unnamed_addr constant [27 x i8] c"android/widget/ListAdapter\00", align 16
@.str.426 = private unnamed_addr constant [27 x i8] c"android/widget/ImageButton\00", align 16
@.str.427 = private unnamed_addr constant [25 x i8] c"android/widget/ImageView\00", align 16
@.str.428 = private unnamed_addr constant [35 x i8] c"android/widget/ImageView$ScaleType\00", align 16
@.str.429 = private unnamed_addr constant [30 x i8] c"android/widget/SectionIndexer\00", align 16
@.str.430 = private unnamed_addr constant [30 x i8] c"android/widget/SpinnerAdapter\00", align 16
@.str.431 = private unnamed_addr constant [28 x i8] c"android/widget/LinearLayout\00", align 16
@.str.432 = private unnamed_addr constant [41 x i8] c"android/widget/LinearLayout$LayoutParams\00", align 16
@.str.433 = private unnamed_addr constant [24 x i8] c"android/widget/ListView\00", align 16
@.str.434 = private unnamed_addr constant [27 x i8] c"android/widget/ProgressBar\00", align 16
@.str.435 = private unnamed_addr constant [27 x i8] c"android/widget/RadioButton\00", align 16
@.str.436 = private unnamed_addr constant [26 x i8] c"android/widget/SearchView\00", align 16
@.str.437 = private unnamed_addr constant [23 x i8] c"android/widget/SeekBar\00", align 16
@.str.438 = private unnamed_addr constant [47 x i8] c"android/widget/SeekBar$OnSeekBarChangeListener\00", align 16
@.str.439 = private unnamed_addr constant [22 x i8] c"android/widget/Switch\00", align 16
@.str.440 = private unnamed_addr constant [24 x i8] c"android/widget/TextView\00", align 16
@.str.441 = private unnamed_addr constant [35 x i8] c"android/widget/TextView$BufferType\00", align 16
@.str.442 = private unnamed_addr constant [47 x i8] c"android/widget/TextView$OnEditorActionListener\00", align 16
@.str.443 = private unnamed_addr constant [63 x i8] c"mono/android/widget/TextView_OnEditorActionListenerImplementor\00", align 16
@.str.444 = private unnamed_addr constant [26 x i8] c"android/widget/TimePicker\00", align 16
@.str.445 = private unnamed_addr constant [29 x i8] c"android/webkit/CookieManager\00", align 16
@.str.446 = private unnamed_addr constant [29 x i8] c"android/webkit/ValueCallback\00", align 16
@.str.447 = private unnamed_addr constant [34 x i8] c"android/webkit/WebResourceRequest\00", align 16
@.str.448 = private unnamed_addr constant [27 x i8] c"android/webkit/MimeTypeMap\00", align 16
@.str.449 = private unnamed_addr constant [31 x i8] c"android/webkit/WebChromeClient\00", align 16
@.str.450 = private unnamed_addr constant [49 x i8] c"android/webkit/WebChromeClient$FileChooserParams\00", align 16
@.str.451 = private unnamed_addr constant [32 x i8] c"android/webkit/WebResourceError\00", align 16
@.str.452 = private unnamed_addr constant [27 x i8] c"android/webkit/WebSettings\00", align 16
@.str.453 = private unnamed_addr constant [23 x i8] c"android/webkit/WebView\00", align 16
@.str.454 = private unnamed_addr constant [29 x i8] c"android/webkit/WebViewClient\00", align 16
@.str.455 = private unnamed_addr constant [28 x i8] c"android/util/DisplayMetrics\00", align 16
@.str.456 = private unnamed_addr constant [26 x i8] c"android/util/AttributeSet\00", align 16
@.str.457 = private unnamed_addr constant [18 x i8] c"android/util/Pair\00", align 16
@.str.458 = private unnamed_addr constant [19 x i8] c"android/util/SizeF\00", align 16
@.str.459 = private unnamed_addr constant [25 x i8] c"android/util/SparseArray\00", align 16
@.str.460 = private unnamed_addr constant [22 x i8] c"android/util/StateSet\00", align 16
@.str.461 = private unnamed_addr constant [24 x i8] c"android/util/TypedValue\00", align 16
@.str.462 = private unnamed_addr constant [18 x i8] c"android/text/Html\00", align 16
@.str.463 = private unnamed_addr constant [22 x i8] c"android/text/Editable\00", align 16
@.str.464 = private unnamed_addr constant [22 x i8] c"android/text/GetChars\00", align 16
@.str.465 = private unnamed_addr constant [38 x i8] c"android/text/InputFilter$LengthFilter\00", align 16
@.str.466 = private unnamed_addr constant [25 x i8] c"android/text/InputFilter\00", align 16
@.str.467 = private unnamed_addr constant [24 x i8] c"android/text/NoCopySpan\00", align 16
@.str.468 = private unnamed_addr constant [23 x i8] c"android/text/Spannable\00", align 16
@.str.469 = private unnamed_addr constant [21 x i8] c"android/text/Spanned\00", align 16
@.str.470 = private unnamed_addr constant [36 x i8] c"android/text/TextDirectionHeuristic\00", align 16
@.str.471 = private unnamed_addr constant [25 x i8] c"android/text/TextWatcher\00", align 16
@.str.472 = private unnamed_addr constant [20 x i8] c"android/text/Layout\00", align 16
@.str.473 = private unnamed_addr constant [30 x i8] c"android/text/Layout$Alignment\00", align 16
@.str.474 = private unnamed_addr constant [29 x i8] c"android/text/SpannableString\00", align 16
@.str.475 = private unnamed_addr constant [36 x i8] c"android/text/SpannableStringBuilder\00", align 16
@.str.476 = private unnamed_addr constant [37 x i8] c"android/text/SpannableStringInternal\00", align 16
@.str.477 = private unnamed_addr constant [26 x i8] c"android/text/StaticLayout\00", align 16
@.str.478 = private unnamed_addr constant [34 x i8] c"android/text/StaticLayout$Builder\00", align 16
@.str.479 = private unnamed_addr constant [23 x i8] c"android/text/TextPaint\00", align 16
@.str.480 = private unnamed_addr constant [23 x i8] c"android/text/TextUtils\00", align 16
@.str.481 = private unnamed_addr constant [34 x i8] c"android/text/TextUtils$TruncateAt\00", align 16
@.str.482 = private unnamed_addr constant [41 x i8] c"mono/android/text/TextWatcherImplementor\00", align 16
@.str.483 = private unnamed_addr constant [39 x i8] c"android/text/style/BackgroundColorSpan\00", align 16
@.str.484 = private unnamed_addr constant [30 x i8] c"android/text/style/BulletSpan\00", align 16
@.str.485 = private unnamed_addr constant [34 x i8] c"android/text/style/CharacterStyle\00", align 16
@.str.486 = private unnamed_addr constant [33 x i8] c"android/text/style/ClickableSpan\00", align 16
@.str.487 = private unnamed_addr constant [39 x i8] c"android/text/style/ForegroundColorSpan\00", align 16
@.str.488 = private unnamed_addr constant [34 x i8] c"android/text/style/LineHeightSpan\00", align 16
@.str.489 = private unnamed_addr constant [34 x i8] c"android/text/style/ParagraphStyle\00", align 16
@.str.490 = private unnamed_addr constant [36 x i8] c"android/text/style/WrapTogetherSpan\00", align 16
@.str.491 = private unnamed_addr constant [39 x i8] c"android/text/style/MetricAffectingSpan\00", align 16
@.str.492 = private unnamed_addr constant [37 x i8] c"android/text/style/StrikethroughSpan\00", align 16
@.str.493 = private unnamed_addr constant [29 x i8] c"android/text/style/StyleSpan\00", align 16
@.str.494 = private unnamed_addr constant [33 x i8] c"android/text/style/SubscriptSpan\00", align 16
@.str.495 = private unnamed_addr constant [35 x i8] c"android/text/style/SuperscriptSpan\00", align 16
@.str.496 = private unnamed_addr constant [32 x i8] c"android/text/style/TypefaceSpan\00", align 16
@.str.497 = private unnamed_addr constant [33 x i8] c"android/text/style/UnderlineSpan\00", align 16
@.str.498 = private unnamed_addr constant [36 x i8] c"android/text/method/BaseKeyListener\00", align 16
@.str.499 = private unnamed_addr constant [38 x i8] c"android/text/method/DigitsKeyListener\00", align 16
@.str.500 = private unnamed_addr constant [32 x i8] c"android/text/method/KeyListener\00", align 16
@.str.501 = private unnamed_addr constant [39 x i8] c"android/text/method/MetaKeyKeyListener\00", align 16
@.str.502 = private unnamed_addr constant [38 x i8] c"android/text/method/NumberKeyListener\00", align 16
@.str.503 = private unnamed_addr constant [31 x i8] c"android/text/format/DateFormat\00", align 16
@.str.504 = private unnamed_addr constant [35 x i8] c"android/provider/DocumentsContract\00", align 16
@.str.505 = private unnamed_addr constant [28 x i8] c"android/provider/MediaStore\00", align 16
@.str.506 = private unnamed_addr constant [34 x i8] c"android/provider/MediaStore$Audio\00", align 16
@.str.507 = private unnamed_addr constant [40 x i8] c"android/provider/MediaStore$Audio$Media\00", align 16
@.str.508 = private unnamed_addr constant [35 x i8] c"android/provider/MediaStore$Images\00", align 16
@.str.509 = private unnamed_addr constant [41 x i8] c"android/provider/MediaStore$Images$Media\00", align 16
@.str.510 = private unnamed_addr constant [34 x i8] c"android/provider/MediaStore$Video\00", align 16
@.str.511 = private unnamed_addr constant [40 x i8] c"android/provider/MediaStore$Video$Media\00", align 16
@.str.512 = private unnamed_addr constant [37 x i8] c"android/preference/PreferenceManager\00", align 16
@.str.513 = private unnamed_addr constant [22 x i8] c"android/os/BaseBundle\00", align 16
@.str.514 = private unnamed_addr constant [17 x i8] c"android/os/Build\00", align 16
@.str.515 = private unnamed_addr constant [25 x i8] c"android/os/Build$VERSION\00", align 16
@.str.516 = private unnamed_addr constant [18 x i8] c"android/os/Bundle\00", align 16
@.str.517 = private unnamed_addr constant [30 x i8] c"android/os/CancellationSignal\00", align 16
@.str.518 = private unnamed_addr constant [23 x i8] c"android/os/Environment\00", align 16
@.str.519 = private unnamed_addr constant [19 x i8] c"android/os/Handler\00", align 16
@.str.520 = private unnamed_addr constant [34 x i8] c"android/os/IBinder$DeathRecipient\00", align 16
@.str.521 = private unnamed_addr constant [19 x i8] c"android/os/IBinder\00", align 16
@.str.522 = private unnamed_addr constant [22 x i8] c"android/os/IInterface\00", align 16
@.str.523 = private unnamed_addr constant [30 x i8] c"android/os/Parcelable$Creator\00", align 16
@.str.524 = private unnamed_addr constant [22 x i8] c"android/os/Parcelable\00", align 16
@.str.525 = private unnamed_addr constant [22 x i8] c"android/os/LocaleList\00", align 16
@.str.526 = private unnamed_addr constant [18 x i8] c"android/os/Looper\00", align 16
@.str.527 = private unnamed_addr constant [19 x i8] c"android/os/Message\00", align 16
@.str.528 = private unnamed_addr constant [18 x i8] c"android/os/Parcel\00", align 16
@.str.529 = private unnamed_addr constant [24 x i8] c"android/os/PowerManager\00", align 16
@.str.530 = private unnamed_addr constant [22 x i8] c"android/opengl/Matrix\00", align 16
@.str.531 = private unnamed_addr constant [16 x i8] c"android/net/Uri\00", align 16
@.str.532 = private unnamed_addr constant [33 x i8] c"android/database/CharArrayBuffer\00", align 16
@.str.533 = private unnamed_addr constant [33 x i8] c"android/database/ContentObserver\00", align 16
@.str.534 = private unnamed_addr constant [33 x i8] c"android/database/DataSetObserver\00", align 16
@.str.535 = private unnamed_addr constant [24 x i8] c"android/database/Cursor\00", align 16
@.str.536 = private unnamed_addr constant [27 x i8] c"android/animation/Animator\00", align 16
@.str.537 = private unnamed_addr constant [44 x i8] c"android/animation/Animator$AnimatorListener\00", align 16
@.str.538 = private unnamed_addr constant [42 x i8] c"android/animation/AnimatorListenerAdapter\00", align 16
@.str.539 = private unnamed_addr constant [35 x i8] c"android/animation/TimeInterpolator\00", align 16
@.str.540 = private unnamed_addr constant [32 x i8] c"android/animation/ValueAnimator\00", align 16
@.str.541 = private unnamed_addr constant [55 x i8] c"android/animation/ValueAnimator$AnimatorUpdateListener\00", align 16
@.str.542 = private unnamed_addr constant [71 x i8] c"mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor\00", align 16
@.str.543 = private unnamed_addr constant [60 x i8] c"android/animation/ValueAnimator$DurationScaleChangeListener\00", align 16
@.str.544 = private unnamed_addr constant [47 x i8] c"mono/android/animation/AnimatorEventDispatcher\00", align 16
@.str.545 = private unnamed_addr constant [21 x i8] c"android/app/Activity\00", align 16
@.str.546 = private unnamed_addr constant [24 x i8] c"android/app/AlertDialog\00", align 16
@.str.547 = private unnamed_addr constant [32 x i8] c"android/app/AlertDialog$Builder\00", align 16
@.str.548 = private unnamed_addr constant [24 x i8] c"android/app/Application\00", align 16
@.str.549 = private unnamed_addr constant [51 x i8] c"android/app/Application$ActivityLifecycleCallbacks\00", align 16
@.str.550 = private unnamed_addr constant [29 x i8] c"android/app/DatePickerDialog\00", align 16
@.str.551 = private unnamed_addr constant [47 x i8] c"android/app/DatePickerDialog$OnDateSetListener\00", align 16
@.str.552 = private unnamed_addr constant [63 x i8] c"mono/android/app/DatePickerDialog_OnDateSetListenerImplementor\00", align 16
@.str.553 = private unnamed_addr constant [19 x i8] c"android/app/Dialog\00", align 16
@.str.554 = private unnamed_addr constant [26 x i8] c"android/app/PendingIntent\00", align 16
@.str.555 = private unnamed_addr constant [27 x i8] c"android/app/SearchableInfo\00", align 16
@.str.556 = private unnamed_addr constant [29 x i8] c"android/app/TimePickerDialog\00", align 16
@.str.557 = private unnamed_addr constant [47 x i8] c"android/app/TimePickerDialog$OnTimeSetListener\00", align 16
@.str.558 = private unnamed_addr constant [63 x i8] c"mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor\00", align 16
@.str.559 = private unnamed_addr constant [26 x i8] c"android/app/UiModeManager\00", align 16
@.str.560 = private unnamed_addr constant [40 x i8] c"android/view/WindowManager$LayoutParams\00", align 16
@.str.561 = private unnamed_addr constant [24 x i8] c"android/view/ActionMode\00", align 16
@.str.562 = private unnamed_addr constant [33 x i8] c"android/view/ActionMode$Callback\00", align 16
@.str.563 = private unnamed_addr constant [28 x i8] c"android/view/ActionProvider\00", align 16
@.str.564 = private unnamed_addr constant [25 x i8] c"android/view/ContentInfo\00", align 16
@.str.565 = private unnamed_addr constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 16
@.str.566 = private unnamed_addr constant [21 x i8] c"android/view/Display\00", align 16
@.str.567 = private unnamed_addr constant [23 x i8] c"android/view/DragEvent\00", align 16
@.str.568 = private unnamed_addr constant [29 x i8] c"android/view/GestureDetector\00", align 16
@.str.569 = private unnamed_addr constant [49 x i8] c"android/view/GestureDetector$OnDoubleTapListener\00", align 16
@.str.570 = private unnamed_addr constant [47 x i8] c"android/view/GestureDetector$OnGestureListener\00", align 16
@.str.571 = private unnamed_addr constant [41 x i8] c"android/view/ContextMenu$ContextMenuInfo\00", align 16
@.str.572 = private unnamed_addr constant [25 x i8] c"android/view/ContextMenu\00", align 16
@.str.573 = private unnamed_addr constant [18 x i8] c"android/view/Menu\00", align 16
@.str.574 = private unnamed_addr constant [45 x i8] c"android/view/MenuItem$OnActionExpandListener\00", align 16
@.str.575 = private unnamed_addr constant [46 x i8] c"android/view/MenuItem$OnMenuItemClickListener\00", align 16
@.str.576 = private unnamed_addr constant [22 x i8] c"android/view/MenuItem\00", align 16
@.str.577 = private unnamed_addr constant [24 x i8] c"android/view/InputEvent\00", align 16
@.str.578 = private unnamed_addr constant [21 x i8] c"android/view/SubMenu\00", align 16
@.str.579 = private unnamed_addr constant [25 x i8] c"android/view/ViewManager\00", align 16
@.str.580 = private unnamed_addr constant [24 x i8] c"android/view/ViewParent\00", align 16
@.str.581 = private unnamed_addr constant [45 x i8] c"android/view/WindowInsetsAnimationController\00", align 16
@.str.582 = private unnamed_addr constant [50 x i8] c"android/view/WindowInsetsAnimationControlListener\00", align 16
@.str.583 = private unnamed_addr constant [36 x i8] c"android/view/WindowInsetsController\00", align 16
@.str.584 = private unnamed_addr constant [72 x i8] c"android/view/WindowInsetsController$OnControllableInsetsChangedListener\00", align 16
@.str.585 = private unnamed_addr constant [27 x i8] c"android/view/WindowManager\00", align 16
@.str.586 = private unnamed_addr constant [35 x i8] c"android/view/KeyboardShortcutGroup\00", align 16
@.str.587 = private unnamed_addr constant [22 x i8] c"android/view/KeyEvent\00", align 16
@.str.588 = private unnamed_addr constant [28 x i8] c"android/view/LayoutInflater\00", align 16
@.str.589 = private unnamed_addr constant [26 x i8] c"android/view/MenuInflater\00", align 16
@.str.590 = private unnamed_addr constant [25 x i8] c"android/view/MotionEvent\00", align 16
@.str.591 = private unnamed_addr constant [38 x i8] c"android/view/OrientationEventListener\00", align 16
@.str.592 = private unnamed_addr constant [34 x i8] c"android/view/ScaleGestureDetector\00", align 16
@.str.593 = private unnamed_addr constant [57 x i8] c"android/view/ScaleGestureDetector$OnScaleGestureListener\00", align 16
@.str.594 = private unnamed_addr constant [63 x i8] c"android/view/ScaleGestureDetector$SimpleOnScaleGestureListener\00", align 16
@.str.595 = private unnamed_addr constant [25 x i8] c"android/view/SearchEvent\00", align 16
@.str.596 = private unnamed_addr constant [18 x i8] c"android/view/View\00", align 16
@.str.597 = private unnamed_addr constant [40 x i8] c"android/view/View$AccessibilityDelegate\00", align 16
@.str.598 = private unnamed_addr constant [36 x i8] c"android/view/View$DragShadowBuilder\00", align 16
@.str.599 = private unnamed_addr constant [30 x i8] c"android/view/View$MeasureSpec\00", align 16
@.str.600 = private unnamed_addr constant [46 x i8] c"android/view/View$OnAttachStateChangeListener\00", align 16
@.str.601 = private unnamed_addr constant [62 x i8] c"mono/android/view/View_OnAttachStateChangeListenerImplementor\00", align 16
@.str.602 = private unnamed_addr constant [34 x i8] c"android/view/View$OnClickListener\00", align 16
@.str.603 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnClickListenerImplementor\00", align 16
@.str.604 = private unnamed_addr constant [33 x i8] c"android/view/View$OnDragListener\00", align 16
@.str.605 = private unnamed_addr constant [40 x i8] c"android/view/View$OnFocusChangeListener\00", align 16
@.str.606 = private unnamed_addr constant [56 x i8] c"mono/android/view/View_OnFocusChangeListenerImplementor\00", align 16
@.str.607 = private unnamed_addr constant [34 x i8] c"android/view/View$OnHoverListener\00", align 16
@.str.608 = private unnamed_addr constant [32 x i8] c"android/view/View$OnKeyListener\00", align 16
@.str.609 = private unnamed_addr constant [48 x i8] c"mono/android/view/View_OnKeyListenerImplementor\00", align 16
@.str.610 = private unnamed_addr constant [41 x i8] c"android/view/View$OnLayoutChangeListener\00", align 16
@.str.611 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnLayoutChangeListenerImplementor\00", align 16
@.str.612 = private unnamed_addr constant [41 x i8] c"android/view/View$OnScrollChangeListener\00", align 16
@.str.613 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnScrollChangeListenerImplementor\00", align 16
@.str.614 = private unnamed_addr constant [34 x i8] c"android/view/View$OnTouchListener\00", align 16
@.str.615 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnTouchListenerImplementor\00", align 16
@.str.616 = private unnamed_addr constant [31 x i8] c"android/view/ViewConfiguration\00", align 16
@.str.617 = private unnamed_addr constant [23 x i8] c"android/view/ViewGroup\00", align 16
@.str.618 = private unnamed_addr constant [36 x i8] c"android/view/ViewGroup$LayoutParams\00", align 16
@.str.619 = private unnamed_addr constant [42 x i8] c"android/view/ViewGroup$MarginLayoutParams\00", align 16
@.str.620 = private unnamed_addr constant [49 x i8] c"android/view/ViewGroup$OnHierarchyChangeListener\00", align 16
@.str.621 = private unnamed_addr constant [65 x i8] c"mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor\00", align 16
@.str.622 = private unnamed_addr constant [34 x i8] c"android/view/ViewPropertyAnimator\00", align 16
@.str.623 = private unnamed_addr constant [30 x i8] c"android/view/ViewTreeObserver\00", align 16
@.str.624 = private unnamed_addr constant [53 x i8] c"android/view/ViewTreeObserver$OnGlobalLayoutListener\00", align 16
@.str.625 = private unnamed_addr constant [20 x i8] c"android/view/Window\00", align 16
@.str.626 = private unnamed_addr constant [29 x i8] c"android/view/Window$Callback\00", align 16
@.str.627 = private unnamed_addr constant [26 x i8] c"android/view/WindowInsets\00", align 16
@.str.628 = private unnamed_addr constant [35 x i8] c"android/view/WindowInsetsAnimation\00", align 16
@.str.629 = private unnamed_addr constant [42 x i8] c"android/view/WindowInsetsAnimation$Bounds\00", align 16
@.str.630 = private unnamed_addr constant [27 x i8] c"android/view/WindowMetrics\00", align 16
@.str.631 = private unnamed_addr constant [44 x i8] c"android/view/inputmethod/InputMethodManager\00", align 16
@.str.632 = private unnamed_addr constant [46 x i8] c"android/view/animation/AccelerateInterpolator\00", align 16
@.str.633 = private unnamed_addr constant [33 x i8] c"android/view/animation/Animation\00", align 16
@.str.634 = private unnamed_addr constant [51 x i8] c"android/view/animation/Animation$AnimationListener\00", align 16
@.str.635 = private unnamed_addr constant [36 x i8] c"android/view/animation/AnimationSet\00", align 16
@.str.636 = private unnamed_addr constant [38 x i8] c"android/view/animation/AnimationUtils\00", align 16
@.str.637 = private unnamed_addr constant [40 x i8] c"android/view/animation/BaseInterpolator\00", align 16
@.str.638 = private unnamed_addr constant [46 x i8] c"android/view/animation/DecelerateInterpolator\00", align 16
@.str.639 = private unnamed_addr constant [36 x i8] c"android/view/animation/Interpolator\00", align 16
@.str.640 = private unnamed_addr constant [42 x i8] c"android/view/animation/LinearInterpolator\00", align 16
@.str.641 = private unnamed_addr constant [46 x i8] c"android/view/accessibility/AccessibilityEvent\00", align 16
@.str.642 = private unnamed_addr constant [49 x i8] c"android/view/accessibility/AccessibilityNodeInfo\00", align 16
@.str.643 = private unnamed_addr constant [68 x i8] c"android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo\00", align 16
@.str.644 = private unnamed_addr constant [47 x i8] c"android/view/accessibility/AccessibilityRecord\00", align 16
@.str.645 = private unnamed_addr constant [51 x i8] c"android/view/accessibility/AccessibilityWindowInfo\00", align 16
@.str.646 = private unnamed_addr constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 16
@.str.647 = private unnamed_addr constant [31 x i8] c"mono/android/runtime/JavaArray\00", align 16
@.str.648 = private unnamed_addr constant [21 x i8] c"java/util/Collection\00", align 16
@.str.649 = private unnamed_addr constant [18 x i8] c"java/util/HashMap\00", align 16
@.str.650 = private unnamed_addr constant [20 x i8] c"java/util/ArrayList\00", align 16
@.str.651 = private unnamed_addr constant [32 x i8] c"mono/android/runtime/JavaObject\00", align 16
@.str.652 = private unnamed_addr constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 16
@.str.653 = private unnamed_addr constant [18 x i8] c"java/util/HashSet\00", align 16
@.str.654 = private unnamed_addr constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 16
@.str.655 = private unnamed_addr constant [36 x i8] c"android/runtime/XmlReaderPullParser\00", align 16
@.str.656 = private unnamed_addr constant [24 x i8] c"android/graphics/Bitmap\00", align 16
@.str.657 = private unnamed_addr constant [39 x i8] c"android/graphics/Bitmap$CompressFormat\00", align 16
@.str.658 = private unnamed_addr constant [31 x i8] c"android/graphics/Bitmap$Config\00", align 16
@.str.659 = private unnamed_addr constant [31 x i8] c"android/graphics/BitmapFactory\00", align 16
@.str.660 = private unnamed_addr constant [30 x i8] c"android/graphics/BitmapShader\00", align 16
@.str.661 = private unnamed_addr constant [27 x i8] c"android/graphics/BlendMode\00", align 16
@.str.662 = private unnamed_addr constant [32 x i8] c"android/graphics/BlurMaskFilter\00", align 16
@.str.663 = private unnamed_addr constant [37 x i8] c"android/graphics/BlurMaskFilter$Blur\00", align 16
@.str.664 = private unnamed_addr constant [24 x i8] c"android/graphics/Canvas\00", align 16
@.str.665 = private unnamed_addr constant [29 x i8] c"android/graphics/ColorFilter\00", align 16
@.str.666 = private unnamed_addr constant [32 x i8] c"android/graphics/DashPathEffect\00", align 16
@.str.667 = private unnamed_addr constant [24 x i8] c"android/graphics/Insets\00", align 16
@.str.668 = private unnamed_addr constant [32 x i8] c"android/graphics/LinearGradient\00", align 16
@.str.669 = private unnamed_addr constant [28 x i8] c"android/graphics/MaskFilter\00", align 16
@.str.670 = private unnamed_addr constant [24 x i8] c"android/graphics/Matrix\00", align 16
@.str.671 = private unnamed_addr constant [23 x i8] c"android/graphics/Paint\00", align 16
@.str.672 = private unnamed_addr constant [27 x i8] c"android/graphics/Paint$Cap\00", align 16
@.str.673 = private unnamed_addr constant [35 x i8] c"android/graphics/Paint$FontMetrics\00", align 16
@.str.674 = private unnamed_addr constant [38 x i8] c"android/graphics/Paint$FontMetricsInt\00", align 16
@.str.675 = private unnamed_addr constant [28 x i8] c"android/graphics/Paint$Join\00", align 16
@.str.676 = private unnamed_addr constant [29 x i8] c"android/graphics/Paint$Style\00", align 16
@.str.677 = private unnamed_addr constant [22 x i8] c"android/graphics/Path\00", align 16
@.str.678 = private unnamed_addr constant [32 x i8] c"android/graphics/Path$Direction\00", align 16
@.str.679 = private unnamed_addr constant [31 x i8] c"android/graphics/Path$FillType\00", align 16
@.str.680 = private unnamed_addr constant [28 x i8] c"android/graphics/PathEffect\00", align 16
@.str.681 = private unnamed_addr constant [23 x i8] c"android/graphics/Point\00", align 16
@.str.682 = private unnamed_addr constant [24 x i8] c"android/graphics/PointF\00", align 16
@.str.683 = private unnamed_addr constant [28 x i8] c"android/graphics/PorterDuff\00", align 16
@.str.684 = private unnamed_addr constant [33 x i8] c"android/graphics/PorterDuff$Mode\00", align 16
@.str.685 = private unnamed_addr constant [36 x i8] c"android/graphics/PorterDuffXfermode\00", align 16
@.str.686 = private unnamed_addr constant [32 x i8] c"android/graphics/RadialGradient\00", align 16
@.str.687 = private unnamed_addr constant [22 x i8] c"android/graphics/Rect\00", align 16
@.str.688 = private unnamed_addr constant [23 x i8] c"android/graphics/RectF\00", align 16
@.str.689 = private unnamed_addr constant [24 x i8] c"android/graphics/Region\00", align 16
@.str.690 = private unnamed_addr constant [27 x i8] c"android/graphics/Region$Op\00", align 16
@.str.691 = private unnamed_addr constant [24 x i8] c"android/graphics/Shader\00", align 16
@.str.692 = private unnamed_addr constant [33 x i8] c"android/graphics/Shader$TileMode\00", align 16
@.str.693 = private unnamed_addr constant [26 x i8] c"android/graphics/Typeface\00", align 16
@.str.694 = private unnamed_addr constant [26 x i8] c"android/graphics/Xfermode\00", align 16
@.str.695 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/AnimationDrawable\00", align 16
@.str.696 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ColorDrawable\00", align 16
@.str.697 = private unnamed_addr constant [35 x i8] c"android/graphics/drawable/Drawable\00", align 16
@.str.698 = private unnamed_addr constant [49 x i8] c"android/graphics/drawable/Drawable$ConstantState\00", align 16
@.str.699 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/DrawableContainer\00", align 16
@.str.700 = private unnamed_addr constant [42 x i8] c"android/graphics/drawable/DrawableWrapper\00", align 16
@.str.701 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/GradientDrawable\00", align 16
@.str.702 = private unnamed_addr constant [55 x i8] c"android/graphics/drawable/GradientDrawable$Orientation\00", align 16
@.str.703 = private unnamed_addr constant [37 x i8] c"android/graphics/drawable/Animatable\00", align 16
@.str.704 = private unnamed_addr constant [31 x i8] c"android/graphics/drawable/Icon\00", align 16
@.str.705 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/InsetDrawable\00", align 16
@.str.706 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/LayerDrawable\00", align 16
@.str.707 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/PaintDrawable\00", align 16
@.str.708 = private unnamed_addr constant [41 x i8] c"android/graphics/drawable/RippleDrawable\00", align 16
@.str.709 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ShapeDrawable\00", align 16
@.str.710 = private unnamed_addr constant [54 x i8] c"android/graphics/drawable/ShapeDrawable$ShaderFactory\00", align 16
@.str.711 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/StateListDrawable\00", align 16
@.str.712 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/OvalShape\00", align 16
@.str.713 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/RectShape\00", align 16
@.str.714 = private unnamed_addr constant [39 x i8] c"android/graphics/drawable/shapes/Shape\00", align 16
@.str.715 = private unnamed_addr constant [34 x i8] c"android/content/BroadcastReceiver\00", align 16
@.str.716 = private unnamed_addr constant [25 x i8] c"android/content/ClipData\00", align 16
@.str.717 = private unnamed_addr constant [30 x i8] c"android/content/ClipData$Item\00", align 16
@.str.718 = private unnamed_addr constant [32 x i8] c"android/content/ClipDescription\00", align 16
@.str.719 = private unnamed_addr constant [30 x i8] c"android/content/ComponentName\00", align 16
@.str.720 = private unnamed_addr constant [32 x i8] c"android/content/ContentResolver\00", align 16
@.str.721 = private unnamed_addr constant [24 x i8] c"android/content/Context\00", align 16
@.str.722 = private unnamed_addr constant [31 x i8] c"android/content/ContextWrapper\00", align 16
@.str.723 = private unnamed_addr constant [49 x i8] c"android/content/DialogInterface$OnCancelListener\00", align 16
@.str.724 = private unnamed_addr constant [65 x i8] c"mono/android/content/DialogInterface_OnCancelListenerImplementor\00", align 16
@.str.725 = private unnamed_addr constant [48 x i8] c"android/content/DialogInterface$OnClickListener\00", align 16
@.str.726 = private unnamed_addr constant [64 x i8] c"mono/android/content/DialogInterface_OnClickListenerImplementor\00", align 16
@.str.727 = private unnamed_addr constant [50 x i8] c"android/content/DialogInterface$OnDismissListener\00", align 16
@.str.728 = private unnamed_addr constant [66 x i8] c"mono/android/content/DialogInterface_OnDismissListenerImplementor\00", align 16
@.str.729 = private unnamed_addr constant [46 x i8] c"android/content/DialogInterface$OnKeyListener\00", align 16
@.str.730 = private unnamed_addr constant [59 x i8] c"android/content/DialogInterface$OnMultiChoiceClickListener\00", align 16
@.str.731 = private unnamed_addr constant [47 x i8] c"android/content/DialogInterface$OnShowListener\00", align 16
@.str.732 = private unnamed_addr constant [63 x i8] c"mono/android/content/DialogInterface_OnShowListenerImplementor\00", align 16
@.str.733 = private unnamed_addr constant [32 x i8] c"android/content/DialogInterface\00", align 16
@.str.734 = private unnamed_addr constant [23 x i8] c"android/content/Intent\00", align 16
@.str.735 = private unnamed_addr constant [29 x i8] c"android/content/IntentFilter\00", align 16
@.str.736 = private unnamed_addr constant [29 x i8] c"android/content/IntentSender\00", align 16
@.str.737 = private unnamed_addr constant [41 x i8] c"android/content/SharedPreferences$Editor\00", align 16
@.str.738 = private unnamed_addr constant [67 x i8] c"android/content/SharedPreferences$OnSharedPreferenceChangeListener\00", align 16
@.str.739 = private unnamed_addr constant [34 x i8] c"android/content/SharedPreferences\00", align 16
@.str.740 = private unnamed_addr constant [40 x i8] c"android/content/res/AssetFileDescriptor\00", align 16
@.str.741 = private unnamed_addr constant [33 x i8] c"android/content/res/AssetManager\00", align 16
@.str.742 = private unnamed_addr constant [35 x i8] c"android/content/res/ColorStateList\00", align 16
@.str.743 = private unnamed_addr constant [34 x i8] c"android/content/res/Configuration\00", align 16
@.str.744 = private unnamed_addr constant [38 x i8] c"android/content/res/XmlResourceParser\00", align 16
@.str.745 = private unnamed_addr constant [30 x i8] c"android/content/res/Resources\00", align 16
@.str.746 = private unnamed_addr constant [36 x i8] c"android/content/res/Resources$Theme\00", align 16
@.str.747 = private unnamed_addr constant [31 x i8] c"android/content/res/TypedArray\00", align 16
@.str.748 = private unnamed_addr constant [34 x i8] c"android/content/pm/PackageManager\00", align 16
@.str.749 = private unnamed_addr constant [35 x i8] c"android/content/pm/ApplicationInfo\00", align 16
@.str.750 = private unnamed_addr constant [31 x i8] c"android/content/pm/PackageInfo\00", align 16
@.str.751 = private unnamed_addr constant [35 x i8] c"android/content/pm/PackageItemInfo\00", align 16
@.str.752 = private unnamed_addr constant [32 x i8] c"android/content/pm/ShortcutInfo\00", align 16
@.str.753 = private unnamed_addr constant [40 x i8] c"android/content/pm/ShortcutInfo$Builder\00", align 16
@.str.754 = private unnamed_addr constant [35 x i8] c"android/content/pm/ShortcutManager\00", align 16
@.str.755 = private unnamed_addr constant [29 x i8] c"android/content/pm/Signature\00", align 16
@.str.756 = private unnamed_addr constant [22 x i8] c"java/util/Enumeration\00", align 16
@.str.757 = private unnamed_addr constant [19 x i8] c"java/util/Iterator\00", align 16
@.str.758 = private unnamed_addr constant [17 x i8] c"java/util/Locale\00", align 16
@.str.759 = private unnamed_addr constant [17 x i8] c"java/util/Random\00", align 16
@.str.760 = private unnamed_addr constant [28 x i8] c"java/util/function/Consumer\00", align 16
@.str.761 = private unnamed_addr constant [31 x i8] c"java/util/function/IntConsumer\00", align 16
@.str.762 = private unnamed_addr constant [29 x i8] c"java/util/function/Predicate\00", align 16
@.str.763 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/Executor\00", align 16
@.str.764 = private unnamed_addr constant [28 x i8] c"java/util/concurrent/Future\00", align 16
@.str.765 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/TimeUnit\00", align 16
@.str.766 = private unnamed_addr constant [44 x i8] c"java/util/concurrent/atomic/AtomicReference\00", align 16
@.str.767 = private unnamed_addr constant [24 x i8] c"java/text/DecimalFormat\00", align 16
@.str.768 = private unnamed_addr constant [31 x i8] c"java/text/DecimalFormatSymbols\00", align 16
@.str.769 = private unnamed_addr constant [23 x i8] c"java/text/NumberFormat\00", align 16
@.str.770 = private unnamed_addr constant [17 x i8] c"java/text/Format\00", align 16
@.str.771 = private unnamed_addr constant [24 x i8] c"java/security/Principal\00", align 16
@.str.772 = private unnamed_addr constant [23 x i8] c"java/security/KeyStore\00", align 16
@.str.773 = private unnamed_addr constant [27 x i8] c"java/security/SecureRandom\00", align 16
@.str.774 = private unnamed_addr constant [31 x i8] c"java/security/cert/Certificate\00", align 16
@.str.775 = private unnamed_addr constant [30 x i8] c"java/nio/channels/FileChannel\00", align 16
@.str.776 = private unnamed_addr constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 16
@.str.777 = private unnamed_addr constant [26 x i8] c"java/net/ConnectException\00", align 16
@.str.778 = private unnamed_addr constant [27 x i8] c"java/net/HttpURLConnection\00", align 16
@.str.779 = private unnamed_addr constant [27 x i8] c"java/net/InetSocketAddress\00", align 16
@.str.780 = private unnamed_addr constant [27 x i8] c"java/net/ProtocolException\00", align 16
@.str.781 = private unnamed_addr constant [15 x i8] c"java/net/Proxy\00", align 1
@.str.782 = private unnamed_addr constant [20 x i8] c"java/net/Proxy$Type\00", align 16
@.str.783 = private unnamed_addr constant [23 x i8] c"java/net/SocketAddress\00", align 16
@.str.784 = private unnamed_addr constant [25 x i8] c"java/net/SocketException\00", align 16
@.str.785 = private unnamed_addr constant [32 x i8] c"java/net/SocketTimeoutException\00", align 16
@.str.786 = private unnamed_addr constant [33 x i8] c"java/net/UnknownServiceException\00", align 16
@.str.787 = private unnamed_addr constant [13 x i8] c"java/net/URL\00", align 1
@.str.788 = private unnamed_addr constant [23 x i8] c"java/net/URLConnection\00", align 16
@.str.789 = private unnamed_addr constant [13 x i8] c"java/io/File\00", align 1
@.str.790 = private unnamed_addr constant [23 x i8] c"java/io/FileDescriptor\00", align 16
@.str.791 = private unnamed_addr constant [24 x i8] c"java/io/FileInputStream\00", align 16
@.str.792 = private unnamed_addr constant [18 x i8] c"java/io/Closeable\00", align 16
@.str.793 = private unnamed_addr constant [20 x i8] c"java/io/InputStream\00", align 16
@.str.794 = private unnamed_addr constant [31 x i8] c"java/io/InterruptedIOException\00", align 16
@.str.795 = private unnamed_addr constant [20 x i8] c"java/io/IOException\00", align 16
@.str.796 = private unnamed_addr constant [21 x i8] c"java/io/OutputStream\00", align 16
@.str.797 = private unnamed_addr constant [20 x i8] c"java/io/PrintWriter\00", align 16
@.str.798 = private unnamed_addr constant [25 x i8] c"java/io/RandomAccessFile\00", align 16
@.str.799 = private unnamed_addr constant [15 x i8] c"java/io/Reader\00", align 1
@.str.800 = private unnamed_addr constant [21 x i8] c"java/io/StringWriter\00", align 16
@.str.801 = private unnamed_addr constant [15 x i8] c"java/io/Writer\00", align 1
@.str.802 = private unnamed_addr constant [18 x i8] c"java/lang/Boolean\00", align 16
@.str.803 = private unnamed_addr constant [15 x i8] c"java/lang/Byte\00", align 1
@.str.804 = private unnamed_addr constant [20 x i8] c"java/lang/Character\00", align 16
@.str.805 = private unnamed_addr constant [16 x i8] c"java/lang/Class\00", align 16
@.str.806 = private unnamed_addr constant [29 x i8] c"java/lang/ClassCastException\00", align 16
@.str.807 = private unnamed_addr constant [22 x i8] c"java/lang/ClassLoader\00", align 16
@.str.808 = private unnamed_addr constant [17 x i8] c"java/lang/Double\00", align 16
@.str.809 = private unnamed_addr constant [15 x i8] c"java/lang/Enum\00", align 1
@.str.810 = private unnamed_addr constant [16 x i8] c"java/lang/Error\00", align 16
@.str.811 = private unnamed_addr constant [20 x i8] c"java/lang/Exception\00", align 16
@.str.812 = private unnamed_addr constant [16 x i8] c"java/lang/Float\00", align 16
@.str.813 = private unnamed_addr constant [21 x i8] c"java/lang/Appendable\00", align 16
@.str.814 = private unnamed_addr constant [23 x i8] c"java/lang/CharSequence\00", align 16
@.str.815 = private unnamed_addr constant [35 x i8] c"java/lang/IllegalArgumentException\00", align 16
@.str.816 = private unnamed_addr constant [32 x i8] c"java/lang/IllegalStateException\00", align 16
@.str.817 = private unnamed_addr constant [36 x i8] c"java/lang/IndexOutOfBoundsException\00", align 16
@.str.818 = private unnamed_addr constant [18 x i8] c"java/lang/Integer\00", align 16
@.str.819 = private unnamed_addr constant [19 x i8] c"java/lang/Runnable\00", align 16
@.str.820 = private unnamed_addr constant [15 x i8] c"java/lang/Long\00", align 1
@.str.821 = private unnamed_addr constant [31 x i8] c"java/lang/NullPointerException\00", align 16
@.str.822 = private unnamed_addr constant [17 x i8] c"java/lang/Number\00", align 16
@.str.823 = private unnamed_addr constant [17 x i8] c"java/lang/Object\00", align 16
@.str.824 = private unnamed_addr constant [27 x i8] c"java/lang/RuntimeException\00", align 16
@.str.825 = private unnamed_addr constant [28 x i8] c"java/lang/SecurityException\00", align 16
@.str.826 = private unnamed_addr constant [16 x i8] c"java/lang/Short\00", align 16
@.str.827 = private unnamed_addr constant [28 x i8] c"java/lang/StackTraceElement\00", align 16
@.str.828 = private unnamed_addr constant [17 x i8] c"java/lang/String\00", align 16
@.str.829 = private unnamed_addr constant [17 x i8] c"java/lang/Thread\00", align 16
@.str.830 = private unnamed_addr constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 16
@.str.831 = private unnamed_addr constant [20 x i8] c"java/lang/Throwable\00", align 16
@.str.832 = private unnamed_addr constant [40 x i8] c"java/lang/UnsupportedOperationException\00", align 16
@.str.833 = private unnamed_addr constant [24 x i8] c"mono/java/lang/Runnable\00", align 16
@.str.834 = private unnamed_addr constant [25 x i8] c"mono/android/TypeManager\00", align 16
@.str.835 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/Lifecycle\00", align 16
@.str.836 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$Event\00", align 16
@.str.837 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$State\00", align 16
@.str.838 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/LifecycleObserver\00", align 16
@.str.839 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/LifecycleOwner\00", align 16
@.str.840 = private unnamed_addr constant [28 x i8] c"androidx/core/util/Consumer\00", align 16
@.str.841 = private unnamed_addr constant [29 x i8] c"androidx/core/util/Predicate\00", align 16
@.str.842 = private unnamed_addr constant [24 x i8] c"androidx/core/util/Pair\00", align 16
@.str.843 = private unnamed_addr constant [34 x i8] c"androidx/core/os/LocaleListCompat\00", align 16
@.str.844 = private unnamed_addr constant [44 x i8] c"androidx/core/internal/view/SupportMenuItem\00", align 16
@.str.845 = private unnamed_addr constant [30 x i8] c"androidx/core/graphics/Insets\00", align 16
@.str.846 = private unnamed_addr constant [47 x i8] c"androidx/core/graphics/drawable/DrawableCompat\00", align 16
@.str.847 = private unnamed_addr constant [36 x i8] c"androidx/core/content/ContextCompat\00", align 16
@.str.848 = private unnamed_addr constant [42 x i8] c"androidx/core/content/res/ResourcesCompat\00", align 16
@.str.849 = private unnamed_addr constant [55 x i8] c"androidx/core/content/res/ResourcesCompat$FontCallback\00", align 16
@.str.850 = private unnamed_addr constant [43 x i8] c"androidx/core/content/pm/PackageInfoCompat\00", align 16
@.str.851 = private unnamed_addr constant [40 x i8] c"androidx/core/app/ActivityOptionsCompat\00", align 16
@.str.852 = private unnamed_addr constant [36 x i8] c"androidx/core/app/ComponentActivity\00", align 16
@.str.853 = private unnamed_addr constant [46 x i8] c"androidx/core/app/ComponentActivity$ExtraData\00", align 16
@.str.854 = private unnamed_addr constant [40 x i8] c"androidx/core/app/SharedElementCallback\00", align 16
@.str.855 = private unnamed_addr constant [70 x i8] c"androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener\00", align 16
@.str.856 = private unnamed_addr constant [35 x i8] c"androidx/core/app/TaskStackBuilder\00", align 16
@.str.857 = private unnamed_addr constant [38 x i8] c"androidx/core/widget/NestedScrollView\00", align 16
@.str.858 = private unnamed_addr constant [61 x i8] c"androidx/core/widget/NestedScrollView$OnScrollChangeListener\00", align 16
@.str.859 = private unnamed_addr constant [77 x i8] c"mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor\00", align 16
@.str.860 = private unnamed_addr constant [42 x i8] c"androidx/core/widget/CompoundButtonCompat\00", align 16
@.str.861 = private unnamed_addr constant [36 x i8] c"androidx/core/widget/TextViewCompat\00", align 16
@.str.862 = private unnamed_addr constant [47 x i8] c"androidx/core/view/AccessibilityDelegateCompat\00", align 16
@.str.863 = private unnamed_addr constant [34 x i8] c"androidx/core/view/ActionProvider\00", align 16
@.str.864 = private unnamed_addr constant [58 x i8] c"androidx/core/view/ActionProvider$SubUiVisibilityListener\00", align 16
@.str.865 = private unnamed_addr constant [74 x i8] c"mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor\00", align 16
@.str.866 = private unnamed_addr constant [53 x i8] c"androidx/core/view/ActionProvider$VisibilityListener\00", align 16
@.str.867 = private unnamed_addr constant [69 x i8] c"mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor\00", align 16
@.str.868 = private unnamed_addr constant [37 x i8] c"androidx/core/view/ContentInfoCompat\00", align 16
@.str.869 = private unnamed_addr constant [39 x i8] c"androidx/core/view/DisplayCutoutCompat\00", align 16
@.str.870 = private unnamed_addr constant [32 x i8] c"androidx/core/view/MenuProvider\00", align 16
@.str.871 = private unnamed_addr constant [47 x i8] c"androidx/core/view/OnApplyWindowInsetsListener\00", align 16
@.str.872 = private unnamed_addr constant [44 x i8] c"androidx/core/view/OnReceiveContentListener\00", align 16
@.str.873 = private unnamed_addr constant [33 x i8] c"androidx/core/view/ScrollingView\00", align 16
@.str.874 = private unnamed_addr constant [48 x i8] c"androidx/core/view/ViewPropertyAnimatorListener\00", align 16
@.str.875 = private unnamed_addr constant [54 x i8] c"androidx/core/view/ViewPropertyAnimatorUpdateListener\00", align 16
@.str.876 = private unnamed_addr constant [62 x i8] c"androidx/core/view/WindowInsetsAnimationControlListenerCompat\00", align 16
@.str.877 = private unnamed_addr constant [34 x i8] c"androidx/core/view/MenuItemCompat\00", align 16
@.str.878 = private unnamed_addr constant [57 x i8] c"androidx/core/view/MenuItemCompat$OnActionExpandListener\00", align 16
@.str.879 = private unnamed_addr constant [37 x i8] c"androidx/core/view/PointerIconCompat\00", align 16
@.str.880 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ScaleGestureDetectorCompat\00", align 16
@.str.881 = private unnamed_addr constant [30 x i8] c"androidx/core/view/ViewCompat\00", align 16
@.str.882 = private unnamed_addr constant [64 x i8] c"androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat\00", align 16
@.str.883 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ViewPropertyAnimatorCompat\00", align 16
@.str.884 = private unnamed_addr constant [47 x i8] c"androidx/core/view/WindowInsetsAnimationCompat\00", align 16
@.str.885 = private unnamed_addr constant [60 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat\00", align 16
@.str.886 = private unnamed_addr constant [56 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$Callback\00", align 16
@.str.887 = private unnamed_addr constant [57 x i8] c"androidx/core/view/WindowInsetsAnimationControllerCompat\00", align 16
@.str.888 = private unnamed_addr constant [38 x i8] c"androidx/core/view/WindowInsetsCompat\00", align 16
@.str.889 = private unnamed_addr constant [43 x i8] c"androidx/core/view/WindowInsetsCompat$Type\00", align 16
@.str.890 = private unnamed_addr constant [48 x i8] c"androidx/core/view/WindowInsetsControllerCompat\00", align 16
@.str.891 = private unnamed_addr constant [84 x i8] c"androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener\00", align 16
@.str.892 = private unnamed_addr constant [100 x i8] c"mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor\00", align 16
@.str.893 = private unnamed_addr constant [61 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat\00", align 16
@.str.894 = private unnamed_addr constant [87 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat\00", align 16
@.str.895 = private unnamed_addr constant [82 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat\00", align 16
@.str.896 = private unnamed_addr constant [86 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat\00", align 16
@.str.897 = private unnamed_addr constant [77 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat\00", align 16
@.str.898 = private unnamed_addr constant [85 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat\00", align 16
@.str.899 = private unnamed_addr constant [65 x i8] c"androidx/core/view/accessibility/AccessibilityNodeProviderCompat\00", align 16
@.str.900 = private unnamed_addr constant [63 x i8] c"androidx/core/view/accessibility/AccessibilityWindowInfoCompat\00", align 16
@.str.901 = private unnamed_addr constant [75 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments\00", align 16
@.str.902 = private unnamed_addr constant [58 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand\00", align 16
@.str.903 = private unnamed_addr constant [41 x i8] c"androidx/core/text/PrecomputedTextCompat\00", align 16
@.str.904 = private unnamed_addr constant [48 x i8] c"androidx/core/text/PrecomputedTextCompat$Params\00", align 16
@.str.905 = private unnamed_addr constant [50 x i8] c"com/google/android/material/shape/CornerTreatment\00", align 16
@.str.906 = private unnamed_addr constant [48 x i8] c"com/google/android/material/shape/EdgeTreatment\00", align 16
@.str.907 = private unnamed_addr constant [45 x i8] c"com/google/android/material/shape/CornerSize\00", align 16
@.str.908 = private unnamed_addr constant [56 x i8] c"com/google/android/material/shape/MaterialShapeDrawable\00", align 16
@.str.909 = private unnamed_addr constant [83 x i8] c"com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState\00", align 16
@.str.910 = private unnamed_addr constant [55 x i8] c"com/google/android/material/shape/ShapeAppearanceModel\00", align 16
@.str.911 = private unnamed_addr constant [63 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$Builder\00", align 16
@.str.912 = private unnamed_addr constant [79 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator\00", align 16
@.str.913 = private unnamed_addr constant [44 x i8] c"com/google/android/material/shape/ShapePath\00", align 16
@.str.914 = private unnamed_addr constant [49 x i8] c"com/google/android/material/shape/ShapePathModel\00", align 16
@.str.915 = private unnamed_addr constant [57 x i8] c"com/google/android/material/imageview/ShapeableImageView\00", align 16
@.str.916 = private unnamed_addr constant [63 x i8] c"com/google/android/material/elevation/ElevationOverlayProvider\00", align 16
@.str.917 = private unnamed_addr constant [54 x i8] c"com/google/android/material/checkbox/MaterialCheckBox\00", align 16
@.str.918 = private unnamed_addr constant [84 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener\00", align 16
@.str.919 = private unnamed_addr constant [100 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor\00", align 16
@.str.920 = private unnamed_addr constant [77 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener\00", align 16
@.str.921 = private unnamed_addr constant [93 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor\00", align 16
@.str.922 = private unnamed_addr constant [50 x i8] c"com/google/android/material/button/MaterialButton\00", align 16
@.str.923 = private unnamed_addr constant [74 x i8] c"com/google/android/material/button/MaterialButton$OnCheckedChangeListener\00", align 16
@.str.924 = private unnamed_addr constant [90 x i8] c"mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor\00", align 16
@.str.925 = private unnamed_addr constant [60 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior\00", align 16
@.str.926 = private unnamed_addr constant [80 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback\00", align 16
@.str.927 = private unnamed_addr constant [58 x i8] c"com/google/android/material/bottomsheet/BottomSheetDialog\00", align 16
@.str.928 = private unnamed_addr constant [48 x i8] c"com/google/android/material/badge/BadgeDrawable\00", align 16
@.str.929 = private unnamed_addr constant [57 x i8] c"com/google/android/material/navigation/NavigationBarView\00", align 16
@.str.930 = private unnamed_addr constant [82 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener\00", align 16
@.str.931 = private unnamed_addr constant [98 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor\00", align 16
@.str.932 = private unnamed_addr constant [80 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener\00", align 16
@.str.933 = private unnamed_addr constant [96 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor\00", align 16
@.str.934 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarItemView\00", align 16
@.str.935 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarMenuView\00", align 16
@.str.936 = private unnamed_addr constant [62 x i8] c"com/google/android/material/navigation/NavigationBarPresenter\00", align 16
@.str.937 = private unnamed_addr constant [54 x i8] c"com/google/android/material/navigation/NavigationView\00", align 16
@.str.938 = private unnamed_addr constant [87 x i8] c"com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener\00", align 16
@.str.939 = private unnamed_addr constant [103 x i8] c"mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor\00", align 16
@.str.940 = private unnamed_addr constant [43 x i8] c"com/google/android/material/tabs/TabLayout\00", align 16
@.str.941 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayout$TabView\00", align 16
@.str.942 = private unnamed_addr constant [69 x i8] c"com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener\00", align 16
@.str.943 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor\00", align 16
@.str.944 = private unnamed_addr constant [65 x i8] c"com/google/android/material/tabs/TabLayout$OnTabSelectedListener\00", align 16
@.str.945 = private unnamed_addr constant [47 x i8] c"com/google/android/material/tabs/TabLayout$Tab\00", align 16
@.str.946 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayoutMediator\00", align 16
@.str.947 = private unnamed_addr constant [76 x i8] c"com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy\00", align 16
@.str.948 = private unnamed_addr constant [67 x i8] c"com/google/android/material/internal/StaticLayoutBuilderConfigurer\00", align 16
@.str.949 = private unnamed_addr constant [60 x i8] c"com/google/android/material/internal/ScrimInsetsFrameLayout\00", align 16
@.str.950 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationItemView\00", align 16
@.str.951 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationMenuView\00", align 16
@.str.952 = private unnamed_addr constant [66 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView\00", align 16
@.str.953 = private unnamed_addr constant [101 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener\00", align 16
@.str.954 = private unnamed_addr constant [99 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener\00", align 16
@.str.955 = private unnamed_addr constant [59 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout\00", align 16
@.str.956 = private unnamed_addr constant [89 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer\00", align 16
@.str.957 = private unnamed_addr constant [48 x i8] c"com/google/android/material/appbar/AppBarLayout\00", align 16
@.str.958 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior\00", align 16
@.str.959 = private unnamed_addr constant [78 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback\00", align 16
@.str.960 = private unnamed_addr constant [57 x i8] c"com/google/android/material/appbar/AppBarLayout$Behavior\00", align 16
@.str.961 = private unnamed_addr constant [66 x i8] c"com/google/android/material/appbar/AppBarLayout$ChildScrollEffect\00", align 16
@.str.962 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$LayoutParams\00", align 16
@.str.963 = private unnamed_addr constant [69 x i8] c"com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener\00", align 16
@.str.964 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor\00", align 16
@.str.965 = private unnamed_addr constant [72 x i8] c"com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener\00", align 16
@.str.966 = private unnamed_addr constant [88 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor\00", align 16
@.str.967 = private unnamed_addr constant [70 x i8] c"com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior\00", align 16
@.str.968 = private unnamed_addr constant [50 x i8] c"com/google/android/material/appbar/HeaderBehavior\00", align 16
@.str.969 = private unnamed_addr constant [63 x i8] c"com/google/android/material/appbar/HeaderScrollingViewBehavior\00", align 16
@.str.970 = private unnamed_addr constant [51 x i8] c"com/google/android/material/appbar/MaterialToolbar\00", align 16
@.str.971 = private unnamed_addr constant [54 x i8] c"com/google/android/material/appbar/ViewOffsetBehavior\00", align 16
@.str.972 = private unnamed_addr constant [38 x i8] c"androidx/viewpager2/widget/ViewPager2\00", align 16
@.str.973 = private unnamed_addr constant [59 x i8] c"androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback\00", align 16
@.str.974 = private unnamed_addr constant [54 x i8] c"androidx/viewpager2/widget/ViewPager2$PageTransformer\00", align 16
@.str.975 = private unnamed_addr constant [49 x i8] c"androidx/viewpager2/adapter/FragmentStateAdapter\00", align 16
@.str.976 = private unnamed_addr constant [47 x i8] c"androidx/viewpager2/adapter/FragmentViewHolder\00", align 16
@.str.977 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/Observer\00", align 16
@.str.978 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/LiveData\00", align 16
@.str.979 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/MutableLiveData\00", align 16
@.str.980 = private unnamed_addr constant [52 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout\00", align 16
@.str.981 = private unnamed_addr constant [61 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior\00", align 16
@.str.982 = private unnamed_addr constant [65 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams\00", align 16
@.str.983 = private unnamed_addr constant [42 x i8] c"androidx/drawerlayout/widget/DrawerLayout\00", align 16
@.str.984 = private unnamed_addr constant [57 x i8] c"androidx/drawerlayout/widget/DrawerLayout$DrawerListener\00", align 16
@.str.985 = private unnamed_addr constant [73 x i8] c"mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor\00", align 16
@.str.986 = private unnamed_addr constant [55 x i8] c"androidx/drawerlayout/widget/DrawerLayout$LayoutParams\00", align 16
@.str.987 = private unnamed_addr constant [29 x i8] c"kotlinx/coroutines/flow/Flow\00", align 16
@.str.988 = private unnamed_addr constant [38 x i8] c"kotlinx/coroutines/flow/FlowCollector\00", align 16
@.str.989 = private unnamed_addr constant [35 x i8] c"kotlinx/coroutines/flow/SharedFlow\00", align 16
@.str.990 = private unnamed_addr constant [34 x i8] c"kotlinx/coroutines/flow/StateFlow\00", align 16

;TypeMapModule
@.TypeMapModule.0_assembly_name = private unnamed_addr constant [47 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModelSavedState\00", align 16
@.TypeMapModule.1_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.SwipeRefreshLayout\00", align 16
@.TypeMapModule.2_assembly_name = private unnamed_addr constant [26 x i8] c"Microsoft.Maui.Essentials\00", align 16
@.TypeMapModule.3_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.RecyclerView\00", align 16
@.TypeMapModule.4_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.CustomView\00", align 16
@.TypeMapModule.5_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.Collection\00", align 16
@.TypeMapModule.6_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.Navigation.Runtime\00", align 16
@.TypeMapModule.7_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.Navigation.Fragment\00", align 16
@.TypeMapModule.8_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.SavedState\00", align 16
@.TypeMapModule.9_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Graphics\00", align 16
@.TypeMapModule.10_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Activity\00", align 16
@.TypeMapModule.11_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.Kotlin.StdLib\00", align 16
@.TypeMapModule.12_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.CardView\00", align 16
@.TypeMapModule.13_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Controls\00", align 16
@.TypeMapModule.14_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.AppCompat\00", align 16
@.TypeMapModule.15_assembly_name = private unnamed_addr constant [24 x i8] c"Xamarin.AndroidX.Loader\00", align 16
@.TypeMapModule.16_assembly_name = private unnamed_addr constant [4 x i8] c"TBL\00", align 1
@.TypeMapModule.17_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.CursorAdapter\00", align 16
@.TypeMapModule.18_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.Navigation.UI\00", align 16
@.TypeMapModule.19_assembly_name = private unnamed_addr constant [46 x i8] c"Xamarin.AndroidX.AppCompat.AppCompatResources\00", align 16
@.TypeMapModule.20_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Fragment\00", align 16
@.TypeMapModule.21_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.ViewPager\00", align 16
@.TypeMapModule.22_assembly_name = private unnamed_addr constant [15 x i8] c"Microsoft.Maui\00", align 1
@.TypeMapModule.23_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModel\00", align 16
@.TypeMapModule.24_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.Navigation.Common\00", align 16
@.TypeMapModule.25_assembly_name = private unnamed_addr constant [13 x i8] c"Mono.Android\00", align 1
@.TypeMapModule.26_assembly_name = private unnamed_addr constant [34 x i8] c"Xamarin.AndroidX.Lifecycle.Common\00", align 16
@.TypeMapModule.27_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.AndroidX.Core\00", align 16
@.TypeMapModule.28_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.Google.Android.Material\00", align 16
@.TypeMapModule.29_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.ViewPager2\00", align 16
@.TypeMapModule.30_assembly_name = private unnamed_addr constant [41 x i8] c"Xamarin.AndroidX.Lifecycle.LiveData.Core\00", align 16
@.TypeMapModule.31_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.CoordinatorLayout\00", align 16
@.TypeMapModule.32_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.DrawerLayout\00", align 16
@.TypeMapModule.33_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.KotlinX.Coroutines.Core.Jvm\00", align 16

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}