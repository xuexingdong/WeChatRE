.class final Lcom/tencent/mm/plugin/talkroom/ui/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic bli:Lcom/tencent/mm/plugin/talkroom/ui/TalkRoomPopupNav;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/talkroom/ui/TalkRoomPopupNav;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/tencent/mm/plugin/talkroom/ui/k;->bli:Lcom/tencent/mm/plugin/talkroom/ui/TalkRoomPopupNav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tencent/mm/plugin/talkroom/ui/k;->bli:Lcom/tencent/mm/plugin/talkroom/ui/TalkRoomPopupNav;

    invoke-static {v0}, Lcom/tencent/mm/plugin/talkroom/ui/TalkRoomPopupNav;->c(Lcom/tencent/mm/plugin/talkroom/ui/TalkRoomPopupNav;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/talkroom/ui/k;->bli:Lcom/tencent/mm/plugin/talkroom/ui/TalkRoomPopupNav;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/talkroom/ui/TalkRoomPopupNav;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040012

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 135
    iget-object v0, p0, Lcom/tencent/mm/plugin/talkroom/ui/k;->bli:Lcom/tencent/mm/plugin/talkroom/ui/TalkRoomPopupNav;

    invoke-static {v0}, Lcom/tencent/mm/plugin/talkroom/ui/TalkRoomPopupNav;->c(Lcom/tencent/mm/plugin/talkroom/ui/TalkRoomPopupNav;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    return-void
.end method
