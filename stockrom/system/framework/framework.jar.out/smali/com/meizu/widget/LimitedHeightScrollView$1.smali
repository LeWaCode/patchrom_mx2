.class Lcom/meizu/widget/LimitedHeightScrollView$1;
.super Ljava/lang/Object;
.source "LimitedHeightScrollView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/LimitedHeightScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/LimitedHeightScrollView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/LimitedHeightScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/meizu/widget/LimitedHeightScrollView$1;->this$0:Lcom/meizu/widget/LimitedHeightScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 50
    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/meizu/widget/LimitedHeightScrollView$1;->this$0:Lcom/meizu/widget/LimitedHeightScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/LimitedHeightScrollView$1;->this$0:Lcom/meizu/widget/LimitedHeightScrollView;

    #getter for: Lcom/meizu/widget/LimitedHeightScrollView;->RESPONSE_RANGER:I
    invoke-static {v2}, Lcom/meizu/widget/LimitedHeightScrollView;->access$000(Lcom/meizu/widget/LimitedHeightScrollView;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/meizu/widget/LimitedHeightScrollView$1;->this$0:Lcom/meizu/widget/LimitedHeightScrollView;

    const/4 v1, 0x1

    #calls: Lcom/meizu/widget/LimitedHeightScrollView;->startScroll(Z)V
    invoke-static {v0, v1}, Lcom/meizu/widget/LimitedHeightScrollView;->access$100(Lcom/meizu/widget/LimitedHeightScrollView;Z)V

    .line 60
    :goto_0
    return v3

    .line 52
    :cond_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/meizu/widget/LimitedHeightScrollView$1;->this$0:Lcom/meizu/widget/LimitedHeightScrollView;

    #getter for: Lcom/meizu/widget/LimitedHeightScrollView;->RESPONSE_RANGER:I
    invoke-static {v1}, Lcom/meizu/widget/LimitedHeightScrollView;->access$000(Lcom/meizu/widget/LimitedHeightScrollView;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/meizu/widget/LimitedHeightScrollView$1;->this$0:Lcom/meizu/widget/LimitedHeightScrollView;

    #calls: Lcom/meizu/widget/LimitedHeightScrollView;->startScroll(Z)V
    invoke-static {v0, v3}, Lcom/meizu/widget/LimitedHeightScrollView;->access$100(Lcom/meizu/widget/LimitedHeightScrollView;Z)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/LimitedHeightScrollView$1;->this$0:Lcom/meizu/widget/LimitedHeightScrollView;

    #calls: Lcom/meizu/widget/LimitedHeightScrollView;->stopScroll()V
    invoke-static {v0}, Lcom/meizu/widget/LimitedHeightScrollView;->access$200(Lcom/meizu/widget/LimitedHeightScrollView;)V

    goto :goto_0

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/meizu/widget/LimitedHeightScrollView$1;->this$0:Lcom/meizu/widget/LimitedHeightScrollView;

    #calls: Lcom/meizu/widget/LimitedHeightScrollView;->stopScroll()V
    invoke-static {v0}, Lcom/meizu/widget/LimitedHeightScrollView;->access$200(Lcom/meizu/widget/LimitedHeightScrollView;)V

    goto :goto_0
.end method
