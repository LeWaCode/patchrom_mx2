.class final Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
.super Landroid/widget/FrameLayout;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecorView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModePopup:Landroid/widget/PopupWindow;

.field private mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private final mBackgroundPadding:Landroid/graphics/Rect;

.field private mChanging:Z

.field mDefaultOpacity:I

.field private mDownY:I

.field private mDragInStatusBar:Z

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private final mFeatureId:I

.field private final mFrameOffsets:Landroid/graphics/Rect;

.field private final mFramePadding:Landroid/graphics/Rect;

.field private mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusBarRect:Landroid/graphics/Rect;

.field private mWatchingForMenu:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "featureId"

    .prologue
    const/4 v1, 0x0

    .line 1859
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    .line 1860
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1835
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 1840
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 1842
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 1844
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 1846
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 1963
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDragInStatusBar:Z

    .line 1964
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusBarRect:Landroid/graphics/Rect;

    .line 1861
    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    .line 1862
    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1834
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method private doStatusBarDrag(Landroid/view/DragEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2057
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->getActionItemDragListener()Landroid/view/ActionMode$OnActionItemDragListener;

    move-result-object v7

    .line 2058
    .local v7, listener:Landroid/view/ActionMode$OnActionItemDragListener;
    if-eqz v7, :cond_0

    .line 2063
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v2, v8

    .line 2077
    :cond_0
    return v2

    .line 2065
    :pswitch_1
    invoke-virtual {p0, v8}, Landroid/view/View;->notifyStatusBarNfcShareStateChanged(Z)V

    goto :goto_0

    .line 2068
    :pswitch_2
    invoke-virtual {p0, v2}, Landroid/view/View;->notifyStatusBarNfcShareStateChanged(Z)V

    goto :goto_0

    .line 2071
    :pswitch_3
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x102002c

    const-string v6, "NFC_SHARE"

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 2072
    .local v0, menuItem:Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-interface {v7, p1, v0}, Landroid/view/ActionMode$OnActionItemDragListener;->onDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V

    goto :goto_0

    .line 2063
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private drawableChanged()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 2547
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mChanging:Z

    if-eqz v5, :cond_1

    .line 2605
    :cond_0
    :goto_0
    return-void

    .line 2551
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 2554
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 2555
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2557
    const/4 v4, -0x1

    .line 2564
    .local v4, opacity:I
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2565
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2566
    .local v2, fg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 2567
    if-nez v2, :cond_3

    .line 2568
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    .line 2601
    :cond_2
    :goto_1
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 2602
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_0

    .line 2603
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Landroid/view/Window;->setDefaultWindowFormat(I)V
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1500(Lcom/android/internal/policy/impl/PhoneWindow;I)V

    goto :goto_0

    .line 2569
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gtz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gtz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-gtz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-gtz v5, :cond_8

    .line 2573
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .line 2574
    .local v3, fop:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .line 2577
    .local v1, bop:I
    if-eq v3, v10, :cond_4

    if-ne v1, v10, :cond_5

    .line 2578
    :cond_4
    const/4 v4, -0x1

    goto :goto_1

    .line 2579
    :cond_5
    if-nez v3, :cond_6

    .line 2580
    move v4, v1

    goto :goto_1

    .line 2581
    :cond_6
    if-nez v1, :cond_7

    .line 2582
    move v4, v3

    goto :goto_1

    .line 2584
    :cond_7
    invoke-static {v3, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    goto :goto_1

    .line 2592
    .end local v1           #bop:I
    .end local v3           #fop:I
    :cond_8
    const/4 v4, -0x3

    goto :goto_1
.end method

.method private isOutOfBounds(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, -0x5

    .line 2138
    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private obtainDragEvent(ILandroid/view/DragEvent;)Landroid/view/DragEvent;
    .locals 7
    .parameter "action"
    .parameter "event"

    .prologue
    .line 2051
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v6

    move v0, p1

    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v13, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x0

    .line 1967
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v10, :cond_5

    .line 1968
    const/4 v4, 0x0

    .line 1969
    .local v4, retval:Z
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 2042
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v4

    .line 2046
    .end local v4           #retval:Z
    :goto_0
    return v4

    .line 1974
    .restart local v4       #retval:Z
    :pswitch_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1975
    .local v3, point:Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1976
    iget v7, v3, Landroid/graphics/Point;->x:I

    .line 1977
    .local v7, width:I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x105000c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1979
    .local v2, height:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusBarRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v12, v12, v7, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1980
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDragInStatusBar:Z

    .line 1981
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v4

    .line 1982
    goto :goto_0

    .line 1988
    .end local v2           #height:I
    .end local v3           #point:Landroid/graphics/Point;
    .end local v7           #width:I
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 1989
    .local v8, x:I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 1991
    .local v9, y:I
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    .line 1992
    .local v5, root:Landroid/view/ViewRootImpl;
    const/4 v6, 0x0

    .line 1993
    .local v6, statusBarNfcShareEnabled:Z
    if-eqz v5, :cond_0

    .line 1994
    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getStatusBarNfcShareEnabled()Z

    move-result v6

    .line 1998
    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getShadowTouchPoint()Landroid/graphics/Point;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1999
    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getShadowTouchPoint()Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v10

    .line 2003
    :cond_0
    if-eqz v6, :cond_2

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusBarRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v10, :cond_2

    .line 2005
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDragInStatusBar:Z

    if-nez v10, :cond_1

    .line 2006
    invoke-direct {p0, v13, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->obtainDragEvent(ILandroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v1

    .line 2007
    .local v1, exitDrag:Landroid/view/DragEvent;
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 2009
    invoke-direct {p0, v11, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->obtainDragEvent(ILandroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v0

    .line 2010
    .local v0, enterDrag:Landroid/view/DragEvent;
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    .line 2011
    move-object p1, v0

    .line 2014
    .end local v0           #enterDrag:Landroid/view/DragEvent;
    .end local v1           #exitDrag:Landroid/view/DragEvent;
    :cond_1
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDragInStatusBar:Z

    .line 2015
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->doStatusBarDrag(Landroid/view/DragEvent;)Z

    move-result v4

    goto :goto_0

    .line 2018
    :cond_2
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDragInStatusBar:Z

    if-eqz v10, :cond_3

    .line 2019
    invoke-direct {p0, v13, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->obtainDragEvent(ILandroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v1

    .line 2020
    .restart local v1       #exitDrag:Landroid/view/DragEvent;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->doStatusBarDrag(Landroid/view/DragEvent;)Z

    .line 2022
    invoke-direct {p0, v11, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->obtainDragEvent(ILandroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v0

    .line 2023
    .restart local v0       #enterDrag:Landroid/view/DragEvent;
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    .line 2024
    move-object p1, v0

    .line 2027
    .end local v0           #enterDrag:Landroid/view/DragEvent;
    .end local v1           #exitDrag:Landroid/view/DragEvent;
    :cond_3
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDragInStatusBar:Z

    .line 2028
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v4

    .line 2030
    goto/16 :goto_0

    .line 2035
    .end local v5           #root:Landroid/view/ViewRootImpl;
    .end local v6           #statusBarNfcShareEnabled:Z
    .end local v8           #x:I
    .end local v9           #y:I
    :pswitch_2
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDragInStatusBar:Z

    if-eqz v10, :cond_4

    .line 2036
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->doStatusBarDrag(Landroid/view/DragEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2038
    :cond_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v4

    .line 2040
    goto/16 :goto_0

    .line 2046
    .end local v4           #retval:Z
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 1969
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1958
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1959
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/Window;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1866
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 1867
    .local v4, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1868
    .local v0, action:I
    if-nez v0, :cond_1

    move v3, v5

    .line 1870
    .local v3, isDown:Z
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_3

    .line 1873
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$600(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$600(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v7

    if-eq v7, v4, :cond_2

    .line 1874
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1875
    .local v2, handled:Z
    if-eqz v2, :cond_2

    .line 1898
    .end local v2           #handled:Z
    :cond_0
    :goto_1
    return v5

    .end local v3           #isDown:Z
    :cond_1
    move v3, v6

    .line 1868
    goto :goto_0

    .line 1882
    .restart local v3       #isDown:Z
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v7, :cond_3

    .line 1883
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v8

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v7, v8, v4, p1, v6}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1889
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v6}, Landroid/view/Window;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1890
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v6}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 1891
    .local v1, cb:Landroid/view/Window$Callback;
    if-eqz v1, :cond_5

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v6, :cond_5

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1893
    .restart local v2       #handled:Z
    :goto_2
    if-nez v2, :cond_0

    .line 1898
    .end local v1           #cb:Landroid/view/Window$Callback;
    .end local v2           #handled:Z
    :cond_4
    if-eqz v3, :cond_6

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_1

    .line 1891
    .restart local v1       #cb:Landroid/view/Window$Callback;
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2

    .line 1898
    .end local v1           #cb:Landroid/view/Window$Callback;
    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1906
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1907
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v6, v7, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 1909
    .local v1, handled:Z
    if-eqz v1, :cond_1

    .line 1910
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1911
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v4

    iput-boolean v3, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1939
    :cond_0
    :goto_0
    return v3

    .line 1918
    .end local v1           #handled:Z
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1919
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Landroid/view/Window;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_3

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_3

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1921
    .restart local v1       #handled:Z
    :goto_1
    if-nez v1, :cond_0

    .line 1929
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1930
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1931
    .local v2, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5, v2, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1932
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v2, v6, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 1934
    iput-boolean v4, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1935
    if-nez v1, :cond_0

    .end local v2           #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_2
    move v3, v4

    .line 1939
    goto :goto_0

    .line 1919
    .end local v1           #handled:Z
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 2241
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2242
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/Window;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2243
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2244
    const/4 v1, 0x1

    .line 2247
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1944
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1945
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/Window;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1951
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1952
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/Window;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 2379
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2381
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2382
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2384
    :cond_0
    return-void
.end method

.method public finishChanging()V
    .locals 1

    .prologue
    .line 2501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mChanging:Z

    .line 2502
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2503
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "insets"

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2540
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2541
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2543
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 2638
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2640
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateWindowResizeState()V

    .line 2642
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2643
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/Window;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 2644
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 2647
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2655
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->openPanelsAfterRestore()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1600(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 2657
    :cond_1
    return-void
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 2688
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v0, :cond_0

    .line 2689
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeAllPanels()V

    .line 2691
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2661
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2663
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2664
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_0

    .line 2665
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 2668
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2669
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/AbsActionBarView;->dismissPopupMenus()V

    .line 2672
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_3

    .line 2673
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2674
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2675
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2677
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 2680
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v2, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 2681
    .local v1, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_4

    .line 2682
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 2684
    :cond_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 2144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2145
    .local v0, action:I
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v3, :cond_0

    .line 2146
    if-nez v0, :cond_0

    .line 2147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 2148
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 2149
    .local v2, y:I
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->isOutOfBounds(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2150
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(I)V

    .line 2151
    const/4 v3, 0x1

    .line 2157
    .end local v1           #x:I
    .end local v2           #y:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 19
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 2296
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 2297
    .local v8, metrics:Landroid/util/DisplayMetrics;
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    const/4 v6, 0x1

    .line 2299
    .local v6, isPortrait:Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 2300
    .local v15, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 2302
    .local v4, heightMode:I
    const/4 v2, 0x0

    .line 2303
    .local v2, fixedWidth:Z
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-ne v15, v0, :cond_0

    .line 2304
    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 2305
    .local v12, tvw:Landroid/util/TypedValue;
    :goto_1
    if-eqz v12, :cond_0

    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 2307
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 2308
    invoke-virtual {v12, v8}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v13, v0

    .line 2315
    .local v13, w:I
    :goto_2
    if-lez v13, :cond_0

    .line 2316
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 2317
    .local v16, widthSize:I
    move/from16 v0, v16

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2319
    const/4 v2, 0x1

    .line 2324
    .end local v12           #tvw:Landroid/util/TypedValue;
    .end local v13           #w:I
    .end local v16           #widthSize:I
    :cond_0
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-ne v4, v0, :cond_1

    .line 2325
    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 2326
    .local v11, tvh:Landroid/util/TypedValue;
    :goto_3
    if-eqz v11, :cond_1

    iget v0, v11, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 2328
    iget v0, v11, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 2329
    invoke-virtual {v11, v8}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v3, v0

    .line 2336
    .local v3, h:I
    :goto_4
    if-lez v3, :cond_1

    .line 2337
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 2338
    .local v5, heightSize:I
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2344
    .end local v3           #h:I
    .end local v5           #heightSize:I
    .end local v11           #tvh:Landroid/util/TypedValue;
    :cond_1
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2346
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 2347
    .local v14, width:I
    const/4 v7, 0x0

    .line 2349
    .local v7, measure:Z
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2351
    if-nez v2, :cond_2

    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-ne v15, v0, :cond_2

    .line 2352
    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 2353
    .local v10, tv:Landroid/util/TypedValue;
    :goto_5
    iget v0, v10, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 2355
    iget v0, v10, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 2356
    invoke-virtual {v10, v8}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v9, v0

    .line 2363
    .local v9, min:I
    :goto_6
    if-ge v14, v9, :cond_2

    .line 2364
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2365
    const/4 v7, 0x1

    .line 2372
    .end local v9           #min:I
    .end local v10           #tv:Landroid/util/TypedValue;
    :cond_2
    if-eqz v7, :cond_3

    .line 2373
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2375
    :cond_3
    return-void

    .line 2297
    .end local v2           #fixedWidth:Z
    .end local v4           #heightMode:I
    .end local v6           #isPortrait:Z
    .end local v7           #measure:Z
    .end local v14           #width:I
    .end local v15           #widthMode:I
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2304
    .restart local v2       #fixedWidth:Z
    .restart local v4       #heightMode:I
    .restart local v6       #isPortrait:Z
    .restart local v15       #widthMode:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_1

    .line 2309
    .restart local v12       #tvw:Landroid/util/TypedValue;
    :cond_6
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 2310
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v13, v0

    .restart local v13       #w:I
    goto/16 :goto_2

    .line 2312
    .end local v13           #w:I
    :cond_7
    const/4 v13, 0x0

    .restart local v13       #w:I
    goto/16 :goto_2

    .line 2325
    .end local v12           #tvw:Landroid/util/TypedValue;
    .end local v13           #w:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    goto/16 :goto_3

    .line 2330
    .restart local v11       #tvh:Landroid/util/TypedValue;
    :cond_9
    iget v0, v11, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 2331
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v3, v0

    .restart local v3       #h:I
    goto/16 :goto_4

    .line 2333
    .end local v3           #h:I
    :cond_a
    const/4 v3, 0x0

    .restart local v3       #h:I
    goto/16 :goto_4

    .line 2352
    .end local v3           #h:I
    .end local v11           #tvh:Landroid/util/TypedValue;
    .restart local v7       #measure:Z
    .restart local v14       #width:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_5

    .line 2357
    .restart local v10       #tv:Landroid/util/TypedValue;
    :cond_c
    iget v0, v10, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 2358
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v9, v0

    .restart local v9       #min:I
    goto/16 :goto_6

    .line 2360
    .end local v9           #min:I
    :cond_d
    const/4 v9, 0x0

    .restart local v9       #min:I
    goto/16 :goto_6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2134
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 2609
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2613
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$600(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2614
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(I)V

    .line 2617
    :cond_0
    sget-object v1, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2624
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2625
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/Window;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_2

    .line 2626
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 2628
    :cond_2
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 2
    .parameter "eventType"

    .prologue
    .line 2221
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2237
    :goto_0
    return-void

    .line 2228
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 2235
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 2519
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2520
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2521
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateWindowResizeState()V

    .line 2523
    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 9
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2252
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v1

    .line 2253
    .local v1, changed:Z
    if-eqz v1, :cond_1

    .line 2254
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 2255
    .local v2, drawingBounds:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2257
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2258
    .local v3, fg:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 2259
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 2260
    .local v4, frameOffsets:Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 2261
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 2262
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 2263
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 2264
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2265
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 2266
    .local v5, framePadding:Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 2267
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 2268
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 2269
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 2272
    .end local v4           #frameOffsets:Landroid/graphics/Rect;
    .end local v5           #framePadding:Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2273
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 2274
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2291
    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    .end local v2           #drawingBounds:Landroid/graphics/Rect;
    .end local v3           #fg:Landroid/graphics/drawable/Drawable;
    :cond_1
    return v1
.end method

.method public setSurfaceFormat(I)V
    .locals 1
    .parameter "format"

    .prologue
    .line 2706
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    .line 2707
    return-void
.end method

.method public setSurfaceKeepScreenOn(Z)V
    .locals 2
    .parameter "keepOn"

    .prologue
    const/16 v1, 0x80

    .line 2710
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2712
    :goto_0
    return-void

    .line 2711
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public setSurfaceType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 2702
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setType(I)V

    .line 2703
    return-void
.end method

.method public setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 2506
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2507
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2508
    if-eqz p1, :cond_1

    .line 2509
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2513
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2515
    :cond_0
    return-void

    .line 2511
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 2526
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2527
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2528
    if-eqz p1, :cond_1

    .line 2529
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2533
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2535
    :cond_0
    return-void

    .line 2531
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .parameter "originalView"

    .prologue
    .line 2390
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1100(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2391
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1102(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 2392
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1100(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 2397
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1100(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    .line 2399
    .local v0, helper:Lcom/android/internal/view/menu/MenuDialogHelper;
    if-eqz v0, :cond_0

    .line 2400
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 2402
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1202(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 2403
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 2394
    .end local v0           #helper:Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1100(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->clearAll()V

    goto :goto_0

    .line 2403
    .restart local v0       #helper:Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 11
    .parameter "callback"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2416
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_0

    .line 2417
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v5}, Landroid/view/ActionMode;->finish()V

    .line 2420
    :cond_0
    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V

    .line 2421
    .local v4, wrappedCallback:Landroid/view/ActionMode$Callback;
    const/4 v2, 0x0

    .line 2422
    .local v2, mode:Landroid/view/ActionMode;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Landroid/view/Window;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2424
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2429
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 2430
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    .line 2486
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Landroid/view/Window;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2488
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v5, v6}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 2493
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object v5

    .line 2432
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-nez v5, :cond_5

    .line 2433
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->isFloating()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2434
    new-instance v5, Lcom/android/internal/widget/ActionBarContextView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 2435
    new-instance v5, Landroid/widget/PopupWindow;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v9, 0x10103e6

    invoke-direct {v5, v8, v10, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 2437
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 2438
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setLayoutInsetDecor(Z)V

    .line 2439
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 2441
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2442
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2444
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2445
    .local v1, heightValue:Landroid/util/TypedValue;
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v8, 0x10102eb

    invoke-virtual {v5, v8, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2447
    iget v5, v1, Landroid/util/TypedValue;->data:I

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 2449
    .local v0, height:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 2450
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    invoke-virtual {v5, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2451
    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 2467
    .end local v0           #height:I
    .end local v1           #heightValue:Landroid/util/TypedValue;
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v5, :cond_2

    .line 2468
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 2469
    new-instance v2, Lcom/android/internal/view/StandaloneActionMode;

    .end local v2           #mode:Landroid/view/ActionMode;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v5, :cond_8

    move v5, v6

    :goto_4
    invoke-direct {v2, v8, v9, v4, v5}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 2471
    .restart local v2       #mode:Landroid/view/ActionMode;
    invoke-virtual {v2}, Lcom/android/internal/view/StandaloneActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-interface {p1, v2, v5}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2472
    invoke-virtual {v2}, Lcom/android/internal/view/StandaloneActionMode;->invalidate()V

    .line 2473
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 2474
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/AbsActionBarView;->setVisibility(I)V

    .line 2475
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    .line 2476
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_6

    .line 2477
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2479
    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/16 :goto_1

    .line 2459
    :cond_7
    const v5, 0x10203e9

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 2461
    .local v3, stub:Landroid/view/ViewStub;
    if-eqz v3, :cond_5

    .line 2462
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    goto :goto_3

    .end local v2           #mode:Landroid/view/ActionMode;
    .end local v3           #stub:Landroid/view/ViewStub;
    :cond_8
    move v5, v7

    .line 2469
    goto :goto_4

    .line 2482
    .restart local v2       #mode:Landroid/view/ActionMode;
    :cond_9
    iput-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    goto/16 :goto_1

    .line 2489
    :catch_0
    move-exception v5

    goto/16 :goto_2

    .line 2425
    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "originalView"
    .parameter "callback"

    .prologue
    .line 2411
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startChanging()V
    .locals 1

    .prologue
    .line 2497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mChanging:Z

    .line 2498
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2129
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 2082
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2113
    :cond_0
    :goto_0
    return v2

    .line 2088
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 2089
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2091
    .local v0, action:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_3

    .line 2092
    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2093
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->getBackPressListener()Landroid/view/ActionMode$BackPressedListener;

    move-result-object v1

    .line 2097
    .local v1, listener:Landroid/view/ActionMode$BackPressedListener;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/view/ActionMode$BackPressedListener;->onBackPressed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2098
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 2105
    .end local v1           #listener:Landroid/view/ActionMode$BackPressedListener;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView;->hasExpandedActionView()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2106
    if-ne v0, v2, :cond_0

    .line 2107
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView;->collapseActionView()V

    goto :goto_0

    .line 2113
    .end local v0           #action:I
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2117
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2121
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2125
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method updateWindowResizeState()V
    .locals 3

    .prologue
    .line 2631
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2632
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->hackTurnOffWindowResizeAnim(Z)V

    .line 2634
    return-void

    .line 2632
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .locals 1

    .prologue
    .line 2698
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .locals 1

    .prologue
    .line 2694
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
