# ── Flutter ──────────────────────────────────────────────────────────────────
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }
-dontwarn io.flutter.**

# ── Supabase / Ktor / OkHttp ─────────────────────────────────────────────────
-keep class io.github.jan.supabase.** { *; }
-keep class io.ktor.** { *; }
-dontwarn io.ktor.**
-keep class okhttp3.** { *; }
-dontwarn okhttp3.**
-keep class okio.** { *; }
-dontwarn okio.**

# ── Kotlin coroutines ─────────────────────────────────────────────────────────
-keepnames class kotlinx.coroutines.internal.MainDispatcherFactory {}
-keepnames class kotlinx.coroutines.CoroutineExceptionHandler {}
-dontwarn kotlinx.coroutines.**

# ── Hive ──────────────────────────────────────────────────────────────────────
-keep class com.hivedb.** { *; }
-keep class * extends com.google.flatbuffers.Table { *; }
-keepclassmembers class * {
    @com.google.flatbuffers.** *;
}

# ── Flutter TTS ───────────────────────────────────────────────────────────────
-keep class com.tundralabs.fluttertts.** { *; }
-dontwarn com.tundralabs.fluttertts.**

# ── PDF / printing ────────────────────────────────────────────────────────────
-keep class com.example.printing.** { *; }
-dontwarn com.example.printing.**

# ── Connectivity ──────────────────────────────────────────────────────────────
-keep class dev.fluttercommunity.plus.connectivity.** { *; }

# ── Keep all annotations (needed by many libs) ────────────────────────────────
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes Exceptions
-keepattributes InnerClasses
-keepattributes EnclosingMethod

# ── General: don't warn on missing classes from optional dependencies ─────────
-dontwarn javax.annotation.**
-dontwarn org.slf4j.**