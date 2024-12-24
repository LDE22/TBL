using System;

[assembly:global::Android.Runtime.NamespaceMapping (Java = "org.webkit.androidjsc", Managed="Org.Webkit.Androidjsc")]
[assembly:global::Android.Runtime.NamespaceMapping (Java = "org.webkit.androidjsc_cppruntime", Managed="Org.Webkit.Androidjsc_cppruntime")]

#if !NET
namespace System.Runtime.Versioning {
    [System.Diagnostics.Conditional("NEVER")]
    [AttributeUsage(AttributeTargets.Assembly | AttributeTargets.Class | AttributeTargets.Constructor | AttributeTargets.Enum | AttributeTargets.Event | AttributeTargets.Field | AttributeTargets.Interface | AttributeTargets.Method | AttributeTargets.Module | AttributeTargets.Property | AttributeTargets.Struct, AllowMultiple = true, Inherited = false)]
    internal sealed class SupportedOSPlatformAttribute : Attribute {
        public SupportedOSPlatformAttribute (string platformName) { }
    }
}
#endif

