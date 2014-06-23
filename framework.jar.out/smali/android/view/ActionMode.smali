.class public abstract Landroid/view/ActionMode;
.super Ljava/lang/Object;
.source "ActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ActionMode$OnActionItemDragListener;,
        Landroid/view/ActionMode$BackPressedListener;,
        Landroid/view/ActionMode$Callback;
    }
.end annotation


# instance fields
.field private mActionItemDragListener:Landroid/view/ActionMode$OnActionItemDragListener;

.field private mBackListener:Landroid/view/ActionMode$BackPressedListener;

.field private mTag:Ljava/lang/Object;

.field private mTitleOptionalHint:Z

.field protected selectAll:Z
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_FIELD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
.end field

# static fields
.field public static final SELECT_ALL:I = 0x1
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_FIELD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
.end field

.field public static final SELECT_NONE:I = 0x2
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_FIELD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
.end field

# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ActionMode;->mBackListener:Landroid/view/ActionMode$BackPressedListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ActionMode;->selectAll:Z

    .line 295
    return-void
.end method


# virtual methods
.method public abstract finish()V
.end method

.method public getActionItemDragListener()Landroid/view/ActionMode$OnActionItemDragListener;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroid/view/ActionMode;->mActionItemDragListener:Landroid/view/ActionMode$OnActionItemDragListener;

    return-object v0
.end method

.method public getBackPressListener()Landroid/view/ActionMode$BackPressedListener;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Landroid/view/ActionMode;->mBackListener:Landroid/view/ActionMode$BackPressedListener;

    return-object v0
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getMenu()Landroid/view/Menu;
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public getSelectionMode()I
    .locals 1
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    iget-boolean v0, p0, Landroid/view/ActionMode;->selectAll:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroid/view/ActionMode;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/view/ActionMode;->mTitleOptionalHint:Z

    return v0
.end method

.method public abstract invalidate()V
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public isUiFocusable()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public setActionItemDragListener(Landroid/view/ActionMode$OnActionItemDragListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 307
    iput-object p1, p0, Landroid/view/ActionMode;->mActionItemDragListener:Landroid/view/ActionMode$OnActionItemDragListener;

    .line 308
    return-void
.end method

.method public setBackPressListener(Landroid/view/ActionMode$BackPressedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 283
    iput-object p1, p0, Landroid/view/ActionMode;->mBackListener:Landroid/view/ActionMode$BackPressedListener;

    .line 284
    return-void
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public setDragDismissAnimating(Z)V
    .locals 0
    .parameter "isAnimating"

    .prologue
    .line 325
    return-void
.end method

.method public abstract setRightActionButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
.end method

.method public abstract setRightActionButtonResource(I)V
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
.end method

.method public abstract setRightActionButtonVisibility(I)V
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
.end method

.method public setSelectionMode(I)V
    .locals 1
    .parameter "mode"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/view/ActionMode;->selectAll:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 46
    iput-object p1, p0, Landroid/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setTitleOptionalHint(Z)V
    .locals 0
    .parameter "titleOptional"

    .prologue
    .line 123
    iput-boolean p1, p0, Landroid/view/ActionMode;->mTitleOptionalHint:Z

    .line 124
    return-void
.end method
