.class final Landroid/text/util/UrlSpanHelper$4;
.super Ljava/lang/Object;
.source "UrlSpanHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/util/UrlSpanHelper;->showTelDialog(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$value:Ljava/lang/CharSequence;

.field final synthetic val$widget:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Landroid/text/util/UrlSpanHelper$4;->val$value:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/util/UrlSpanHelper$4;->val$widget:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 252
    :try_start_0
    iget-object v2, p0, Landroid/text/util/UrlSpanHelper$4;->val$value:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/text/util/UrlSpanHelper$4;->val$widget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    #calls: Landroid/text/util/UrlSpanHelper;->getDisplayNameFromPhone(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/text/util/UrlSpanHelper;->access$700(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 255
    iget-object v2, p0, Landroid/text/util/UrlSpanHelper$4;->val$widget:Landroid/view/View;

    new-instance v3, Landroid/text/util/UrlSpanHelper$4$1;

    invoke-direct {v3, p0, v1}, Landroid/text/util/UrlSpanHelper$4$1;-><init>(Landroid/text/util/UrlSpanHelper$4;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
