.class Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$1;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoUtils.java"

# interfaces
.implements Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils$NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public accept(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 1
    .parameter "context"
    .parameter "node"

    .prologue
    .line 778
    invoke-static {p1, p2}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->isAccessibilityFocusable(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v0

    return v0
.end method
