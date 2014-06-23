.class Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;
.super Ljava/lang/Object;
.source "AccessibilityInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/AccessibilityInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextToSpeechWrapper"
.end annotation


# static fields
.field private static final WRAP_TAG:Ljava/lang/String;


# instance fields
.field private final mErrorListener:Landroid/speech/tts/UtteranceProgressListener;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private volatile mReady:Z

.field private volatile mShutdown:Z

.field private final mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private final mTtsParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 647
    const-class v0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    new-instance v0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$1;

    invoke-direct {v0, p0}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$1;-><init>(Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;)V

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 773
    new-instance v0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$2;

    invoke-direct {v0, p0}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$2;-><init>(Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;)V

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mErrorListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 665
    invoke-static {}, Landroid/webkit/AccessibilityInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    sget-object v0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Initializing text-to-speech on thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 672
    .local v6, pkgName:Ljava/lang/String;
    iput-boolean v4, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z

    .line 673
    iput-boolean v4, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mShutdown:Z

    .line 675
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTtsParams:Ljava/util/HashMap;

    .line 676
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTtsParams:Ljava/util/HashMap;

    const-string/jumbo v1, "utteranceId"

    sget-object v2, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".**webview**"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 680
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mErrorListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 681
    return-void
.end method

.method static synthetic access$600(Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 646
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 646
    iget-boolean v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mShutdown:Z

    return v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    sget-object v0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 646
    iput-boolean p1, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z

    return p1
.end method


# virtual methods
.method public isSpeaking()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 686
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    monitor-enter v1

    .line 687
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z

    if-nez v0, :cond_0

    .line 688
    const/4 v0, 0x0

    monitor-exit v1

    .line 691
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 692
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected shutdown()V
    .locals 5

    .prologue
    .line 735
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    monitor-enter v1

    .line 736
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z

    if-nez v0, :cond_1

    .line 737
    invoke-static {}, Landroid/webkit/AccessibilityInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    sget-object v0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Called shutdown before initialize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mShutdown:Z

    .line 747
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z

    .line 748
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 749
    monitor-exit v1

    .line 750
    return-void

    .line 741
    :cond_1
    invoke-static {}, Landroid/webkit/AccessibilityInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    sget-object v0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Shutting down text-to-speech from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public speak(Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 4
    .parameter "text"
    .parameter "queueMode"
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 698
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    monitor-enter v1

    .line 699
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z

    if-nez v0, :cond_1

    .line 700
    invoke-static {}, Landroid/webkit/AccessibilityInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    sget-object v0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Attempted to speak before TTS init"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    const/4 v0, -0x1

    monitor-exit v1

    .line 710
    :goto_0
    return v0

    .line 705
    :cond_1
    invoke-static {}, Landroid/webkit/AccessibilityInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 706
    sget-object v0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Speak called from JS binder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_2
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()I
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 717
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    monitor-enter v1

    .line 718
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z

    if-nez v0, :cond_1

    .line 719
    invoke-static {}, Landroid/webkit/AccessibilityInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    sget-object v0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Attempted to stop before initialize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    const/4 v0, -0x1

    monitor-exit v1

    .line 729
    :goto_0
    return v0

    .line 724
    :cond_1
    invoke-static {}, Landroid/webkit/AccessibilityInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    sget-object v0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Stop called from JS binder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_2
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 730
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
