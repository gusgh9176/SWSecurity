.class Lcom/olivephone/cu/LoadChannelService$1;
.super Ljava/lang/Thread;
.source "LoadChannelService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/LoadChannelService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/LoadChannelService;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/LoadChannelService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/LoadChannelService$1;->this$0:Lcom/olivephone/cu/LoadChannelService;

    .line 83
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 86
    iget-object v0, p0, Lcom/olivephone/cu/LoadChannelService$1;->this$0:Lcom/olivephone/cu/LoadChannelService;

    invoke-static {v0}, Lcom/olivephone/cu/LoadChannelService;->access$0(Lcom/olivephone/cu/LoadChannelService;)V

    .line 87
    return-void
.end method
