.class Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonGridSubmenu;
.super Lcom/android/internal/view/menu/GridMenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonGridSubmenu"
.end annotation


# instance fields
.field private mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "subMenu"

    .prologue
    .line 818
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonGridSubmenu;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 819
    invoke-direct {p0, p2, p3}, Lcom/android/internal/view/menu/GridMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 820
    iput-object p3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonGridSubmenu;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 822
    invoke-virtual {p3}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 823
    .local v3, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v5

    if-nez v5, :cond_0

    .line 825
    #getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$200(Lcom/android/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p1, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v5, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->setAnchorView(Landroid/view/View;)V

    .line 828
    :cond_0
    iget-object v5, p1, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 830
    const/4 v4, 0x0

    .line 831
    .local v4, preserveIconSpacing:Z
    invoke-virtual {p3}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 832
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 833
    invoke-virtual {p3, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 834
    .local v0, childItem:Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 835
    const/4 v4, 0x1

    .line 839
    .end local v0           #childItem:Landroid/view/MenuItem;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->setForceShowIcon(Z)V

    .line 840
    return-void

    .line 825
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v4           #preserveIconSpacing:Z
    :cond_2
    #getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$200(Lcom/android/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 832
    .restart local v0       #childItem:Landroid/view/MenuItem;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v4       #preserveIconSpacing:Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 844
    invoke-super {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->onDismiss()V

    .line 845
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonGridSubmenu;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonGridPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonGridSubmenu;
    invoke-static {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$402(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonGridSubmenu;)Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonGridSubmenu;

    .line 846
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonGridSubmenu;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 847
    return-void
.end method
