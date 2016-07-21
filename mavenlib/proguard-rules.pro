# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in E:\as_space\sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

-printmapping proguard.map

-keepclassmembers class fqcn.of.javascript.interface.for.webview {
   public *;
}

-keepclassmembers class * extends android.content.Context {
   public void *(android.view.View);
   public void *(android.view.MenuItem);
}

-keep public class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
    public void set*(...);
}

-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

-keepattributes *Annotation*

##########################################################################
# release log

-assumenosideeffects class android.util.Log {
  public static boolean isLoggable(java.lang.String, int);
  public static int v(...);
  public static int i(...);
  public static int w(...);
  public static int d(...);
  public static int e(...);
}

# end of release log
##########################################################################

##########################################################################
# wypmaframe

-keep class com.wangyin.maframe.** {*;}
-dontwarn com.wangyin.maframe.**

# end of wypmaframe
##########################################################################

##########################################################################
# wypnetwork

-keep class com.wangyin.network.** { *; }
-dontwarn com.wangyin.network.http.**

# end of wypnetwork
##########################################################################

##########################################################################
# wypplugin

-keep class com.wangyin.plugin.** {*;}
-dontwarn com.wangyin.plugin.**

# end of wypplugin
##########################################################################

##########################################################################
# android support

-keep class android.support.** {*;}
-dontwarn android.support.**

# end of android support
##########################################################################

##########################################################################
# android support

-keep class com.wangyin.jsevaluator.** {*;}
-dontwarn com.wangyin.jsevaluator.**

# end of android support
##########################################################################

##########################################################################
# Gson
# Gson uses generic type information stored in a class file when working with fields. Proguard
# removes such information by default, so configure it to keep all of it.
-keepattributes Signature

# Gson specific classes
-keep class sun.misc.Unsafe { *; }
-keep class com.google.gson.stream.** { *; }
-keep class com.google.gson.examples.android.modelmvn.** { *; }
-keep class com.google.gson.** { *;}
-dontwarn com.google.gson.**

## end of Gson
##########################################################################

# Only required if you use AsyncExecutor
-keepclassmembers class * extends de.greenrobot.event.util.ThrowableFailureEvent {
    <init>(java.lang.Throwable);
}

# end of eventBus
#############################################################################
