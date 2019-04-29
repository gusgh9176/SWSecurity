.class public Lcom/commonsware/android/arXiv/arXiv;
.super Landroid/app/Activity;
.source "arXiv.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final ABOUT_ID:I = 0x2

.field public static final CLEAR_ID:I = 0x4

.field public static final DONATE_ID:I = 0x6

.field public static final HISTORY_ID:I = 0x3

.field public static final PREF_ID:I = 0x5

.field private static final mAddViewSignature:[Ljava/lang/Class;

.field private static final mRemoveAllViewsSignature:[Ljava/lang/Class;


# instance fields
.field asItems:[Ljava/lang/String;

.field asShortItems:[Ljava/lang/String;

.field asURLs:[Ljava/lang/String;

.field private catList:Landroid/widget/ListView;

.field cmItems:[Ljava/lang/String;

.field cmShortItems:[Ljava/lang/String;

.field cmURLs:[Ljava/lang/String;

.field csItems:[Ljava/lang/String;

.field csShortItems:[Ljava/lang/String;

.field csURLs:[Ljava/lang/String;

.field private droidDB:Lcom/commonsware/android/arXiv/arXivDB;

.field private favList:Landroid/widget/ListView;

.field private favorites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/commonsware/android/arXiv/Feed;",
            ">;"
        }
    .end annotation
.end field

.field private favoritesList:[Ljava/lang/String;

.field private handlerSetList:Landroid/os/Handler;

.field private header:Landroid/widget/TextView;

.field private historys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/commonsware/android/arXiv/History;",
            ">;"
        }
    .end annotation
.end field

.field items:[Ljava/lang/String;

.field itemsFlag:[I

.field private mAddView:Ljava/lang/reflect/Method;

.field private mAddViewArgs:[Ljava/lang/Object;

.field private mRemoveAllViews:Ljava/lang/reflect/Method;

.field private mRemoveAllViewsArgs:[Ljava/lang/Object;

.field mpItems:[Ljava/lang/String;

.field mpShortItems:[Ljava/lang/String;

.field mpURLs:[Ljava/lang/String;

.field mtItems:[Ljava/lang/String;

.field mtShortItems:[Ljava/lang/String;

.field mtURLs:[Ljava/lang/String;

.field private mySourcePref:I

.field nlItems:[Ljava/lang/String;

.field nlShortItems:[Ljava/lang/String;

.field nlURLs:[Ljava/lang/String;

.field qbItems:[Ljava/lang/String;

.field qbShortItems:[Ljava/lang/String;

.field qbURLs:[Ljava/lang/String;

.field qfItems:[Ljava/lang/String;

.field qfShortItems:[Ljava/lang/String;

.field qfURLs:[Ljava/lang/String;

.field shortItems:[Ljava/lang/String;

.field stItems:[Ljava/lang/String;

.field stShortItems:[Ljava/lang/String;

.field stURLs:[Ljava/lang/String;

.field public thisActivity:Landroid/content/Context;

.field private unreadList:[Ljava/lang/String;

.field urls:[Ljava/lang/String;

.field private vFlag:I

.field private vFromWidget:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-array v0, v3, [Ljava/lang/Class;

    .line 100
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    .line 99
    sput-object v0, Lcom/commonsware/android/arXiv/arXiv;->mRemoveAllViewsSignature:[Ljava/lang/Class;

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 102
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/widget/RemoteViews;

    aput-object v1, v0, v3

    .line 101
    sput-object v0, Lcom/commonsware/android/arXiv/arXiv;->mAddViewSignature:[Ljava/lang/Class;

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    iput v3, p0, Lcom/commonsware/android/arXiv/arXiv;->vFlag:I

    .line 90
    iput v4, p0, Lcom/commonsware/android/arXiv/arXiv;->mySourcePref:I

    .line 105
    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->mRemoveAllViewsArgs:[Ljava/lang/Object;

    .line 106
    new-array v0, v5, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->mAddViewArgs:[Ljava/lang/Object;

    .line 109
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->vFromWidget:Ljava/lang/Boolean;

    .line 111
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Astrophysics"

    aput-object v1, v0, v4

    const-string v1, "Condensed Matter"

    aput-object v1, v0, v3

    const-string v1, "Computer Science"

    aput-object v1, v0, v5

    .line 112
    const-string v1, "General Relativity"

    aput-object v1, v0, v6

    const-string v1, "HEP Experiment"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "HEP Lattice"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 113
    const-string v2, "HEP Phenomenology"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "HEP Theory"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Mathematics"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 114
    const-string v2, "Mathematical Physics"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Misc Physics"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Nonlinear Sciences"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 115
    const-string v2, "Nuclear Experiment"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Nuclear Theory"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Quantitative Biology"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 116
    const-string v2, "Quantitative Finance"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Quantum Physics"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Statistics"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->items:[Ljava/lang/String;

    .line 118
    const/16 v0, 0x12

    new-array v0, v0, [I

    aput v3, v0, v4

    aput v5, v0, v3

    aput v6, v0, v5

    const/16 v1, 0x8

    aput v7, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x9

    aput v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->itemsFlag:[I

    .line 120
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Astrophysics"

    aput-object v1, v0, v4

    const-string v1, "Condensed Matter"

    aput-object v1, v0, v3

    .line 121
    const-string v1, "Computer Science"

    aput-object v1, v0, v5

    const-string v1, "General Relativity"

    aput-object v1, v0, v6

    const-string v1, "HEP Experiment"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 122
    const-string v2, "HEP Lattice"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "HEP Phenomenology"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "HEP Theory"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Mathematics"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 123
    const-string v2, "Math. Physics"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Misc Physics"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Nonlinear Sci."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Nuclear Exp."

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 124
    const-string v2, "Nuclear Theory"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Quant. Biology"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Quant. Finance"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 125
    const-string v2, "Quantum Physics"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Statistics"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->shortItems:[Ljava/lang/String;

    .line 127
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "astro-ph"

    aput-object v1, v0, v4

    const-string v1, "cond-mat"

    aput-object v1, v0, v3

    const-string v1, "cs"

    aput-object v1, v0, v5

    const-string v1, "gr-qc"

    aput-object v1, v0, v6

    const-string v1, "hep-ex"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 128
    const-string v2, "hep-lat"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hep-ph"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hep-th"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "math"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "math-ph"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "physics"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 129
    const-string v2, "nlin"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "nucl-ex"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "nucl-th"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "q-bio"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "q-fin"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "quant-ph"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "stat"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->urls:[Ljava/lang/String;

    .line 131
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Astrophysics All"

    aput-object v1, v0, v4

    .line 132
    const-string v1, "Cosmology and Extragalactic Astrophysics"

    aput-object v1, v0, v3

    .line 133
    const-string v1, "Earth & Planetary Astrophysics"

    aput-object v1, v0, v5

    const-string v1, "Galaxy Astrophysics"

    aput-object v1, v0, v6

    .line 134
    const-string v1, "HE Astrophysical Phenomena"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 135
    const-string v2, "Instrumentation and Methods for Astrophysics"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 136
    const-string v2, "Solar and Stellar Astrophysics"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->asItems:[Ljava/lang/String;

    .line 138
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "astro-ph"

    aput-object v1, v0, v4

    const-string v1, "astro-ph.CO"

    aput-object v1, v0, v3

    const-string v1, "astro-ph.EP"

    aput-object v1, v0, v5

    .line 139
    const-string v1, "astro-ph.GA"

    aput-object v1, v0, v6

    const-string v1, "astro-ph.HE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "astro-ph.IM"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "astro-ph.SR"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->asURLs:[Ljava/lang/String;

    .line 141
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Astrophysics All"

    aput-object v1, v0, v4

    .line 142
    const-string v1, "Cosm. & Ext-Gal. Astrophysics"

    aput-object v1, v0, v3

    const-string v1, "Earth & Planetary Astrophysics"

    aput-object v1, v0, v5

    .line 143
    const-string v1, "Galaxy Astrophysics"

    aput-object v1, v0, v6

    const-string v1, "HE Astrophysical Phenomena"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 144
    const-string v2, "Instrumentation and Methods for Astrophysics"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 145
    const-string v2, "Solar and Stellar Astrophysics"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->asShortItems:[Ljava/lang/String;

    .line 147
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Condensed Matter All"

    aput-object v1, v0, v4

    .line 148
    const-string v1, "Disordered Systems and Neural Networks"

    aput-object v1, v0, v3

    const-string v1, "Materials Science"

    aput-object v1, v0, v5

    .line 149
    const-string v1, "Mesoscale and Nanoscale Physics"

    aput-object v1, v0, v6

    const-string v1, "Other Condensed Matter"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 150
    const-string v2, "Quantum Gases"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Soft Condensed Matter"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Statistical Mechanics"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 151
    const-string v2, "Strongly Correlated Electrons"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Superconductivity"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->cmItems:[Ljava/lang/String;

    .line 153
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cond-mat"

    aput-object v1, v0, v4

    const-string v1, "cond-mat.dis-nn"

    aput-object v1, v0, v3

    const-string v1, "cond-mat.mtrl-sci"

    aput-object v1, v0, v5

    .line 154
    const-string v1, "cond-mat.mes-hall"

    aput-object v1, v0, v6

    const-string v1, "cond-mat.other"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cond-mat.quant-gas"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 155
    const-string v2, "cond-mat.soft"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cond-mat.stat-mech"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cond-mat.str-el"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 156
    const-string v2, "cond-mat.supr-con"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->cmURLs:[Ljava/lang/String;

    .line 158
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Cond. Matter All"

    aput-object v1, v0, v4

    .line 159
    const-string v1, "Disord. Systems & Neural Networks"

    aput-object v1, v0, v3

    const-string v1, "Materials Science"

    aput-object v1, v0, v5

    .line 160
    const-string v1, "Mesoscale and Nanoscale Physics"

    aput-object v1, v0, v6

    const-string v1, "Other Condensed Matter"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 161
    const-string v2, "Quantum Gases"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Soft Condensed Matter"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Statistical Mechanics"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 162
    const-string v2, "Strongly Correlated Electrons"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Superconductivity"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->cmShortItems:[Ljava/lang/String;

    .line 164
    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Computer Science All"

    aput-object v1, v0, v4

    const-string v1, "Architecture"

    aput-object v1, v0, v3

    .line 165
    const-string v1, "Artificial Intelligence"

    aput-object v1, v0, v5

    const-string v1, "Computation and Language"

    aput-object v1, v0, v6

    .line 166
    const-string v1, "Computational Complexity"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 167
    const-string v2, "Computational Engineering, Finance and Science"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 168
    const-string v2, "Computational Geometry"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CS and Game Theory"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 169
    const-string v2, "Computer Vision and Pattern Recognition"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Computers and Society"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 170
    const-string v2, "Cryptography and Security"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Data Structures and Algorithms"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 171
    const-string v2, "Databases"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Digital Libraries"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Discrete Mathematics"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 172
    const-string v2, "Distributed, Parallel, and Cluster Computing"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 173
    const-string v2, "Formal Languages and Automata Theory"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "General Literature"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 174
    const-string v2, "Graphics"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Human-Computer Interaction"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Information Retrieval"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 175
    const-string v2, "Information Theory"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Learning"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Logic in Computer Science"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 176
    const-string v2, "Mathematical Software"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Multiagent Systems"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Multimedia"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 177
    const-string v2, "Networking and Internet Architecture"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 178
    const-string v2, "Neural and Evolutionary Computing"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Numerical Analysis"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 179
    const-string v2, "Operating Systems"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Other Computer Science"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Performance"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 180
    const-string v2, "Programming Languages"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Robotics"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Software Engineering"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 181
    const-string v2, "Sound"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Symbolic Computation"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->csItems:[Ljava/lang/String;

    .line 183
    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cs"

    aput-object v1, v0, v4

    const-string v1, "cs.AR"

    aput-object v1, v0, v3

    const-string v1, "cs.AI"

    aput-object v1, v0, v5

    const-string v1, "cs.CL"

    aput-object v1, v0, v6

    const-string v1, "cs.CC"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cs.CE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 184
    const-string v2, "cs.CG"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cs.GT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cs.CV"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cs.CY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cs.CR"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cs.DS"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cs.DB"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 185
    const-string v2, "cs.DL"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cs.DM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "cs.DC"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "cs.FL"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cs.GL"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "cs.GR"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "cs.HC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 186
    const-string v2, "cs.IR"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "cs.IT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "cs.LG"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "cs.LO"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "cs.MS"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "cs.MA"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "cs.MM"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 187
    const-string v2, "cs.NI"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "cs.NE"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "cs.NA"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "cs.OS"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "cs.OH"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "cs.PF"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "cs.PL"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 188
    const-string v2, "cs.RO"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "cs.SE"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "cs.SD"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "cs.SC"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->csURLs:[Ljava/lang/String;

    .line 190
    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Computer Science All"

    aput-object v1, v0, v4

    const-string v1, "Architecture"

    aput-object v1, v0, v3

    .line 191
    const-string v1, "Artificial Intelligence"

    aput-object v1, v0, v5

    const-string v1, "Computation and Language"

    aput-object v1, v0, v6

    .line 192
    const-string v1, "Computational Complexity"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 193
    const-string v2, "Comp. Eng., Fin. & Science"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 194
    const-string v2, "Computational Geometry"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CS and Game Theory"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 195
    const-string v2, "Computer Vision and Pattern Recognition"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Computers and Society"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 196
    const-string v2, "Cryptography and Security"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Data Structures and Algorithms"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 197
    const-string v2, "Databases"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Digital Libraries"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Discrete Mathematics"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 198
    const-string v2, "Distributed, Parallel, and Cluster Computing"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 199
    const-string v2, "Formal Languages and Automata Theory"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "General Literature"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 200
    const-string v2, "Graphics"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Human-Computer Interaction"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Information Retrieval"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 201
    const-string v2, "Information Theory"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Learning"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Logic in Computer Science"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 202
    const-string v2, "Mathematical Software"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Multiagent Systems"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Multimedia"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 203
    const-string v2, "Networking and Internet Architecture"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 204
    const-string v2, "Neural and Evolutionary Computing"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Numerical Analysis"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 205
    const-string v2, "Operating Systems"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Other Computer Science"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Performance"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 206
    const-string v2, "Programming Languages"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Robotics"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Software Engineering"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 207
    const-string v2, "Sound"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Symbolic Computation"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->csShortItems:[Ljava/lang/String;

    .line 209
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Math All"

    aput-object v1, v0, v4

    const-string v1, "Algebraic Geometry"

    aput-object v1, v0, v3

    .line 210
    const-string v1, "Algebraic Topology"

    aput-object v1, v0, v5

    const-string v1, "Analysis of PDEs"

    aput-object v1, v0, v6

    const-string v1, "Category Theory"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 211
    const-string v2, "Classical Analysis of ODEs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Combinatorics"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 212
    const-string v2, "Commutative Algebra"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Complex Variables"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 213
    const-string v2, "Differential Geometry"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Dynamical Systems"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 214
    const-string v2, "Functional Analysis"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "General Mathematics"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "General Topology"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 215
    const-string v2, "Geometric Topology"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Group Theory"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Math History and Overview"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 216
    const-string v2, "Information Theory"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "K-Theory and Homology"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Logic"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 217
    const-string v2, "Mathematical Physics"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Metric Geometry"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Number Theory"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 218
    const-string v2, "Numerical Analysis"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Operator Algebras"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 219
    const-string v2, "Optimization and Control"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Probability"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Quantum Algebra"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 220
    const-string v2, "Representation Theory"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Rings and Algebras"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Spectral Theory"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 221
    const-string v2, "Statistics (Math)"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Symplectic Geometry"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->mtItems:[Ljava/lang/String;

    .line 223
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "math"

    aput-object v1, v0, v4

    const-string v1, "math.AG"

    aput-object v1, v0, v3

    const-string v1, "math.AT"

    aput-object v1, v0, v5

    const-string v1, "math.AP"

    aput-object v1, v0, v6

    const-string v1, "math.CT"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 224
    const-string v2, "math.CA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "math.CO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "math.AC"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "math.CV"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "math.DG"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "math.DS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 225
    const-string v2, "math.FA"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "math.GM"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "math.GN"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "math.GT"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "math.GR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "math.HO"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 226
    const-string v2, "math.IT"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "math.KT"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "math.LO"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "math.MP"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "math.MG"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "math.NT"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 227
    const-string v2, "math.NA"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "math.OA"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "math.OC"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "math.PR"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "math.QA"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "math.RT"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 228
    const-string v2, "math.RA"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "math.SP"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "math.ST"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "math.SG"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->mtURLs:[Ljava/lang/String;

    .line 230
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Math All"

    aput-object v1, v0, v4

    const-string v1, "Algebraic Geometry"

    aput-object v1, v0, v3

    .line 231
    const-string v1, "Algebraic Topology"

    aput-object v1, v0, v5

    const-string v1, "Analysis of PDEs"

    aput-object v1, v0, v6

    const-string v1, "Category Theory"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 232
    const-string v2, "Classical Analysis of ODEs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Combinatorics"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 233
    const-string v2, "Commutative Algebra"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Complex Variables"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 234
    const-string v2, "Differential Geometry"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Dynamical Systems"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 235
    const-string v2, "Functional Analysis"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "General Mathematics"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "General Topology"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 236
    const-string v2, "Geometric Topology"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Group Theory"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Math History and Overview"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 237
    const-string v2, "Information Theory"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "K-Theory and Homology"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Logic"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 238
    const-string v2, "Mathematical Physics"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Metric Geometry"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Number Theory"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 239
    const-string v2, "Numerical Analysis"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Operator Algebras"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 240
    const-string v2, "Optimization and Control"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Probability"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Quantum Algebra"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 241
    const-string v2, "Representation Theory"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Rings and Algebras"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Spectral Theory"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 242
    const-string v2, "Statistics (Math)"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Symplectic Geometry"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->mtShortItems:[Ljava/lang/String;

    .line 244
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Physics (Misc) All"

    aput-object v1, v0, v4

    const-string v1, "Accelerator Physics"

    aput-object v1, v0, v3

    .line 245
    const-string v1, "Atmospheric and Oceanic Physics"

    aput-object v1, v0, v5

    const-string v1, "Atomic Physics"

    aput-object v1, v0, v6

    .line 246
    const-string v1, "Atomic and Molecular Clusters"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Biological Physics"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 247
    const-string v2, "Chemical Physics"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Classical Physics"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Computational Physics"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 248
    const-string v2, "Data Analysis, Statistics, and Probability"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Fluid Dynamics"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 249
    const-string v2, "General Physics"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Geophysics"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "History of Physics"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 250
    const-string v2, "Instrumentation and Detectors"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Medical Physics"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Optics"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 251
    const-string v2, "Physics Education"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Physics and Society"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Plasma Physics"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 252
    const-string v2, "Popular Physics"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Space Physics"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->mpItems:[Ljava/lang/String;

    .line 254
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "physics"

    aput-object v1, v0, v4

    const-string v1, "physics.acc-ph"

    aput-object v1, v0, v3

    const-string v1, "physics.ao-ph"

    aput-object v1, v0, v5

    .line 255
    const-string v1, "physics.atom-ph"

    aput-object v1, v0, v6

    const-string v1, "physics.atm-clus"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "physics.bio-ph"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 256
    const-string v2, "physics.chem-ph"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "physics.class-ph"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "physics.comp-ph"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 257
    const-string v2, "physics.data-an"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "physics.flu-dyn"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "physics.gen-ph"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 258
    const-string v2, "physics.geo-ph"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "physics.hist-ph"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "physics.ins-det"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 259
    const-string v2, "physics.med-ph"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "physics.optics"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "physics.ed-ph"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 260
    const-string v2, "physics.soc-ph"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "physics.plasm-ph"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "physics.pop-ph"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 261
    const-string v2, "physics.space-ph"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->mpURLs:[Ljava/lang/String;

    .line 263
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Physics (Misc) All"

    aput-object v1, v0, v4

    const-string v1, "Accelerator Physics"

    aput-object v1, v0, v3

    .line 264
    const-string v1, "Atmospheric and Oceanic Physics"

    aput-object v1, v0, v5

    const-string v1, "Atomic Physics"

    aput-object v1, v0, v6

    .line 265
    const-string v1, "Atomic and Molecular Clusters"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Biological Physics"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 266
    const-string v2, "Chemical Physics"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Classical Physics"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Computational Physics"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 267
    const-string v2, "Data Analysis, Statistics, and Probability"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Fluid Dynamics"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 268
    const-string v2, "General Physics"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Geophysics"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "History of Physics"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 269
    const-string v2, "Instrumentation and Detectors"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Medical Physics"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Optics"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 270
    const-string v2, "Physics Education"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Physics and Society"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Plasma Physics"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 271
    const-string v2, "Popular Physics"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Space Physics"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->mpShortItems:[Ljava/lang/String;

    .line 273
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Nonlinear Sciences All"

    aput-object v1, v0, v4

    .line 274
    const-string v1, "Adaptation and Self-Organizing Systems"

    aput-object v1, v0, v3

    .line 275
    const-string v1, "Cellular Automata and Lattice Gases"

    aput-object v1, v0, v5

    const-string v1, "Chaotic Dynamics"

    aput-object v1, v0, v6

    .line 276
    const-string v1, "Exactly Solvable and Integrable Systems"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 277
    const-string v2, "Pattern Formation and Solitons"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->nlItems:[Ljava/lang/String;

    .line 279
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "nlin"

    aput-object v1, v0, v4

    const-string v1, "nlin.AO"

    aput-object v1, v0, v3

    const-string v1, "nlin.CG"

    aput-object v1, v0, v5

    const-string v1, "nlin.CD"

    aput-object v1, v0, v6

    const-string v1, "nlin.SI"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 280
    const-string v2, "nlin.PS"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->nlURLs:[Ljava/lang/String;

    .line 282
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Nonlinear Sciences"

    aput-object v1, v0, v4

    .line 283
    const-string v1, "Adaptation and Self-Organizing Systems"

    aput-object v1, v0, v3

    .line 284
    const-string v1, "Cellular Automata and Lattice Gases"

    aput-object v1, v0, v5

    const-string v1, "Chaotic Dynamics"

    aput-object v1, v0, v6

    .line 285
    const-string v1, "Exactly Solvable and Integrable Systems"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 286
    const-string v2, "Pattern Formation and Solitons"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->nlShortItems:[Ljava/lang/String;

    .line 288
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Quant. Biology All"

    aput-object v1, v0, v4

    const-string v1, "Biomolecules"

    aput-object v1, v0, v3

    const-string v1, "Cell Behavior"

    aput-object v1, v0, v5

    .line 289
    const-string v1, "Genomics"

    aput-object v1, v0, v6

    const-string v1, "Molecular Networks"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Neurons and Cognition"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 290
    const-string v2, "Quant. Biology Other"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Populations and Evolutions"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 291
    const-string v2, "Quantitative Methods"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Subcellular Processes"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 292
    const-string v2, "Tissues and Organs"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->qbItems:[Ljava/lang/String;

    .line 294
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "q-bio"

    aput-object v1, v0, v4

    const-string v1, "q-bio.BM"

    aput-object v1, v0, v3

    const-string v1, "q-bio.CB"

    aput-object v1, v0, v5

    const-string v1, "q-bio.GN"

    aput-object v1, v0, v6

    .line 295
    const-string v1, "q-bio.MN"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "q-bio.NC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "q-bio.OT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "q-bio.PE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "q-bio.QM"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 296
    const-string v2, "q-bio.SC"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "q-bio.TO"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->qbURLs:[Ljava/lang/String;

    .line 298
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Quant. Bio. All"

    aput-object v1, v0, v4

    const-string v1, "Biomolecules"

    aput-object v1, v0, v3

    .line 299
    const-string v1, "Cell Behavior"

    aput-object v1, v0, v5

    const-string v1, "Genomics"

    aput-object v1, v0, v6

    const-string v1, "Molecular Networks"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 300
    const-string v2, "Neurons and Cognition"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "QB Other"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Populations and Evolutions"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 301
    const-string v2, "Quantitative Methods"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Subcellular Processes"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 302
    const-string v2, "Tissues and Organs"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->qbShortItems:[Ljava/lang/String;

    .line 304
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Quant. Finance All"

    aput-object v1, v0, v4

    const-string v1, "Computational Finance"

    aput-object v1, v0, v3

    .line 305
    const-string v1, "General Finance"

    aput-object v1, v0, v5

    const-string v1, "Portfolio Management"

    aput-object v1, v0, v6

    .line 306
    const-string v1, "Pricing and Securities"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Risk Management"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Statistical Finance"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 307
    const-string v2, "Trading and Market Microstructure"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->qfItems:[Ljava/lang/String;

    .line 309
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "q-fin"

    aput-object v1, v0, v4

    const-string v1, "q-fin.CP"

    aput-object v1, v0, v3

    const-string v1, "q-fin.GN"

    aput-object v1, v0, v5

    const-string v1, "q-fin.PM"

    aput-object v1, v0, v6

    .line 310
    const-string v1, "q-fin.PR"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "q-fin.RM"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "q-fin.ST"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "q-fin.TR"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->qfURLs:[Ljava/lang/String;

    .line 312
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Quant. Fin. All"

    aput-object v1, v0, v4

    const-string v1, "Computational Finance"

    aput-object v1, v0, v3

    .line 313
    const-string v1, "General Finance"

    aput-object v1, v0, v5

    const-string v1, "Portfolio Management"

    aput-object v1, v0, v6

    .line 314
    const-string v1, "Pricing and Securities"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Risk Management"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Statistical Finance"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 315
    const-string v2, "Trading and Market Microstructure"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->qfShortItems:[Ljava/lang/String;

    .line 317
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Statistics All"

    aput-object v1, v0, v4

    const-string v1, "Stats. Applications"

    aput-object v1, v0, v3

    .line 318
    const-string v1, "Stats. Computation"

    aput-object v1, v0, v5

    const-string v1, "Machine Learning"

    aput-object v1, v0, v6

    const-string v1, "Stats. Methodology"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 319
    const-string v2, "Stats. Theory"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->stItems:[Ljava/lang/String;

    .line 321
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "stat"

    aput-object v1, v0, v4

    const-string v1, "stat.AP"

    aput-object v1, v0, v3

    const-string v1, "stat.CO"

    aput-object v1, v0, v5

    const-string v1, "stat.ML"

    aput-object v1, v0, v6

    const-string v1, "stat.ME"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 322
    const-string v2, "stat.TH"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->stURLs:[Ljava/lang/String;

    .line 324
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Statistics All"

    aput-object v1, v0, v4

    const-string v1, "Stats. Applications"

    aput-object v1, v0, v3

    .line 325
    const-string v1, "Stats. Computation"

    aput-object v1, v0, v5

    const-string v1, "Machine Learning"

    aput-object v1, v0, v6

    const-string v1, "Stats. Methodology"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 326
    const-string v2, "Stats. Theory"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->stShortItems:[Ljava/lang/String;

    .line 1030
    new-instance v0, Lcom/commonsware/android/arXiv/arXiv$1;

    invoke-direct {v0, p0}, Lcom/commonsware/android/arXiv/arXiv$1;-><init>(Lcom/commonsware/android/arXiv/arXiv;)V

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->handlerSetList:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/commonsware/android/arXiv/arXiv;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->favoritesList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/commonsware/android/arXiv/arXiv;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->unreadList:[Ljava/lang/String;

    return-object v0
.end method

.method private applyMenuChoice(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v11, -0x1

    const/16 v10, 0x10

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 329
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    move v7, v8

    .line 371
    :goto_0
    return v7

    .line 331
    :pswitch_0
    const/high16 v9, 0x7f070000

    invoke-virtual {p0, v9}, Lcom/commonsware/android/arXiv/arXiv;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 332
    .local v5, "str":Ljava/lang/String;
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 333
    .local v6, "wv":Landroid/widget/TextView;
    invoke-virtual {v6, v10, v8, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 334
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 337
    .local v4, "scwv":Landroid/widget/ScrollView;
    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 339
    new-instance v0, Lcom/commonsware/android/arXiv/arXiv$2;

    invoke-direct {v0, p0, p0}, Lcom/commonsware/android/arXiv/arXiv$2;-><init>(Lcom/commonsware/android/arXiv/arXiv;Landroid/content/Context;)V

    .line 346
    .local v0, "dialog":Landroid/app/Dialog;
    const v8, 0x7f070010

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setTitle(I)V

    .line 348
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v8}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 352
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v4    # "scwv":Landroid/widget/ScrollView;
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "wv":Landroid/widget/TextView;
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/commonsware/android/arXiv/HistoryWindow;

    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    .local v3, "myIntent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/commonsware/android/arXiv/arXiv;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 356
    .end local v3    # "myIntent":Landroid/content/Intent;
    :pswitch_2
    invoke-direct {p0}, Lcom/commonsware/android/arXiv/arXiv;->deleteFiles()V

    goto :goto_0

    .line 359
    :pswitch_3
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/commonsware/android/arXiv/EditPreferences;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Lcom/commonsware/android/arXiv/arXiv;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 362
    :pswitch_4
    const/4 v2, 0x0

    .line 363
    .local v2, "goToMarket":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "goToMarket":Landroid/content/Intent;
    const-string v9, "android.intent.action.VIEW"

    const-string v10, "market://details?id=com.jd.android.arXiv"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 365
    .restart local v2    # "goToMarket":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/commonsware/android/arXiv/arXiv;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v1

    .line 367
    .local v1, "ef":Ljava/lang/Exception;
    const-string v9, "Market Not Installed"

    invoke-static {p0, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private deleteFiles()V
    .locals 12

    .prologue
    .line 375
    new-instance v2, Ljava/io/File;

    const-string v8, "/sdcard/arXiv"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "children":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 379
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v0

    if-lt v7, v8, :cond_3

    .line 388
    .end local v7    # "i":I
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v8, "/emmc/arXiv"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v3, "dir2":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "children2":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 392
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    array-length v8, v1

    if-lt v7, v8, :cond_5

    .line 401
    .end local v7    # "i":I
    :cond_1
    new-instance v3, Ljava/io/File;

    .end local v3    # "dir2":Ljava/io/File;
    const-string v8, "/media/arXiv"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    .restart local v3    # "dir2":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 404
    if-eqz v1, :cond_2

    .line 405
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    array-length v8, v1

    if-lt v7, v8, :cond_7

    .line 414
    .end local v7    # "i":I
    :cond_2
    const-string v8, "Arx"

    const-string v9, "Opening Database 1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v8, Lcom/commonsware/android/arXiv/arXivDB;

    invoke-direct {v8, p0}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 416
    iget-object v8, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v8}, Lcom/commonsware/android/arXiv/arXivDB;->getHistory()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/commonsware/android/arXiv/arXiv;->historys:Ljava/util/List;

    .line 418
    iget-object v8, p0, Lcom/commonsware/android/arXiv/arXiv;->historys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_9

    .line 421
    iget-object v8, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v8}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 422
    const-string v8, "Arx"

    const-string v9, "Closed Database 1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v8, "Deleted PDF history"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 425
    return-void

    .line 380
    .end local v1    # "children2":[Ljava/lang/String;
    .end local v3    # "dir2":Ljava/io/File;
    .restart local v7    # "i":I
    :cond_3
    aget-object v5, v0, v7

    .line 381
    .local v5, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/sdcard/arXiv/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 383
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 379
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 393
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "filename":Ljava/lang/String;
    .restart local v1    # "children2":[Ljava/lang/String;
    .restart local v3    # "dir2":Ljava/io/File;
    :cond_5
    aget-object v5, v1, v7

    .line 394
    .restart local v5    # "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/emmc/arXiv/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    .restart local v4    # "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 396
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 392
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 406
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "filename":Ljava/lang/String;
    :cond_7
    aget-object v5, v1, v7

    .line 407
    .restart local v5    # "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/media/arXiv/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    .restart local v4    # "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 409
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 405
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 418
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v7    # "i":I
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/commonsware/android/arXiv/History;

    .line 419
    .local v6, "history":Lcom/commonsware/android/arXiv/History;
    iget-object v9, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    iget-wide v10, v6, Lcom/commonsware/android/arXiv/History;->historyId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/commonsware/android/arXiv/arXivDB;->deleteHistory(Ljava/lang/Long;)Z

    goto/16 :goto_3
.end method

.method private populateMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 846
    const/4 v0, 0x2

    const v1, 0x7f070010

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 847
    const/4 v0, 0x3

    const v1, 0x7f07000f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 848
    const/4 v0, 0x4

    const v1, 0x7f07000e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 849
    const/4 v0, 0x5

    const v1, 0x7f07001c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 850
    const/4 v0, 0x6

    const v1, 0x7f07001b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 851
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 15
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 431
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v13

    check-cast v13, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .local v13, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    const-string v0, "Arx"

    const-string v1, "Opening Database 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance v0, Lcom/commonsware/android/arXiv/arXivDB;

    invoke-direct {v0, p0}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 438
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v0}, Lcom/commonsware/android/arXiv/arXivDB;->getFeeds()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->favorites:Ljava/util/List;

    .line 440
    const/4 v12, 0x0

    .line 441
    .local v12, "icount":I
    iget v0, p0, Lcom/commonsware/android/arXiv/arXiv;->vFlag:I

    if-nez v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->favorites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    new-instance v14, Lcom/commonsware/android/arXiv/arXiv$3;

    invoke-direct {v14, p0}, Lcom/commonsware/android/arXiv/arXiv$3;-><init>(Lcom/commonsware/android/arXiv/arXiv;)V

    .line 453
    .local v14, "t9":Ljava/lang/Thread;
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 475
    .end local v14    # "t9":Ljava/lang/Thread;
    :goto_1
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v0}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 476
    const-string v0, "Arx"

    const-string v1, "Closed Database 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {p0}, Lcom/commonsware/android/arXiv/arXiv;->updateFavList()V

    .line 480
    const/4 v0, 0x1

    .end local v12    # "icount":I
    .end local v13    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :goto_2
    return v0

    .line 432
    :catch_0
    move-exception v10

    .line 433
    .local v10, "e":Ljava/lang/ClassCastException;
    const/4 v0, 0x0

    goto :goto_2

    .line 442
    .end local v10    # "e":Ljava/lang/ClassCastException;
    .restart local v12    # "icount":I
    .restart local v13    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/commonsware/android/arXiv/Feed;

    .line 443
    .local v11, "feed":Lcom/commonsware/android/arXiv/Feed;
    iget v1, v13, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-ne v12, v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    iget-wide v4, v11, Lcom/commonsware/android/arXiv/Feed;->feedId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/commonsware/android/arXiv/arXivDB;->deleteFeed(Ljava/lang/Long;)Z

    .line 446
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 455
    .end local v11    # "feed":Lcom/commonsware/android/arXiv/Feed;
    :cond_2
    iget v0, p0, Lcom/commonsware/android/arXiv/arXiv;->mySourcePref:I

    if-nez v0, :cond_3

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "search_query=cat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/commonsware/android/arXiv/arXiv;->urls:[Ljava/lang/String;

    iget v4, v13, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "tempquery":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://export.arxiv.org/api/query?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 458
    const-string v1, "&sortBy=submittedDate&sortOrder=ascending"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 459
    .local v3, "tempurl":Ljava/lang/String;
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    iget-object v1, p0, Lcom/commonsware/android/arXiv/arXiv;->shortItems:[Ljava/lang/String;

    iget v4, v13, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    aget-object v1, v1, v4

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/commonsware/android/arXiv/arXivDB;->insertFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    .line 460
    new-instance v14, Lcom/commonsware/android/arXiv/arXiv$4;

    invoke-direct {v14, p0}, Lcom/commonsware/android/arXiv/arXiv$4;-><init>(Lcom/commonsware/android/arXiv/arXiv;)V

    .line 465
    .restart local v14    # "t9":Ljava/lang/Thread;
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 467
    .end local v2    # "tempquery":Ljava/lang/String;
    .end local v3    # "tempurl":Ljava/lang/String;
    .end local v14    # "t9":Ljava/lang/Thread;
    :cond_3
    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->urls:[Ljava/lang/String;

    iget v1, v13, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    aget-object v2, v0, v1

    .line 468
    .restart local v2    # "tempquery":Ljava/lang/String;
    move-object v3, v2

    .line 469
    .restart local v3    # "tempurl":Ljava/lang/String;
    iget-object v4, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/commonsware/android/arXiv/arXiv;->shortItems:[Ljava/lang/String;

    iget v5, v13, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " (RSS)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/commonsware/android/arXiv/arXiv;->shortItems:[Ljava/lang/String;

    iget v1, v13, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    aget-object v6, v0, v1

    const/4 v8, -0x2

    const/4 v9, -0x2

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/commonsware/android/arXiv/arXivDB;->insertFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    .line 470
    const v0, 0x7f070005

    .line 471
    const/4 v1, 0x0

    .line 470
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 33
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 486
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 488
    sget v27, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 490
    .local v27, "version":I
    const/16 v29, 0x6

    move/from16 v0, v27

    move/from16 v1, v29

    if-le v0, v1, :cond_1

    .line 491
    const v29, 0x7f03000f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/commonsware/android/arXiv/arXiv;->setContentView(I)V

    .line 496
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/commonsware/android/arXiv/arXiv;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 498
    .local v19, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/commonsware/android/arXiv/arXiv;->thisActivity:Landroid/content/Context;

    .line 500
    const v29, 0x7f09000b

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/commonsware/android/arXiv/arXiv;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/commonsware/android/arXiv/arXiv;->header:Landroid/widget/TextView;

    .line 501
    const v29, 0x7f09000e

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/commonsware/android/arXiv/arXiv;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ListView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/commonsware/android/arXiv/arXiv;->catList:Landroid/widget/ListView;

    .line 502
    const v29, 0x7f09000f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/commonsware/android/arXiv/arXiv;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ListView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/commonsware/android/arXiv/arXiv;->favList:Landroid/widget/ListView;

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/arXiv;->catList:Landroid/widget/ListView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/arXiv;->favList:Landroid/widget/ListView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/commonsware/android/arXiv/arXiv;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v29

    .line 507
    const-string v30, "fonts/LiberationSans.ttf"

    .line 506
    invoke-static/range {v29 .. v30}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 508
    .local v6, "face":Landroid/graphics/Typeface;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/arXiv;->header:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 510
    const v29, 0x7f09000d

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/commonsware/android/arXiv/arXiv;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TabHost;

    .line 511
    .local v23, "tabs":Landroid/widget/TabHost;
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TabHost;->setup()V

    .line 513
    const/16 v29, 0x7

    move/from16 v0, v27

    move/from16 v1, v29

    if-le v0, v1, :cond_3

    .line 515
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v29

    const v30, 0x7f030011

    .line 516
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v31

    const/16 v32, 0x0

    .line 515
    invoke-virtual/range {v29 .. v32}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v28

    .line 518
    .local v28, "vi":Landroid/view/View;
    const v29, 0x7f090010

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    .line 519
    .local v24, "tempimg":Landroid/widget/ImageView;
    const v29, 0x7f090011

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 520
    .local v25, "temptxt":Landroid/widget/TextView;
    const v29, 0x7f020005

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 521
    const-string v29, "Categories"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    const-string v29, "tag1"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v20

    .line 524
    .local v20, "spec":Landroid/widget/TabHost$TabSpec;
    const v29, 0x7f09000e

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 525
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 526
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 528
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v29

    const v30, 0x7f030011

    .line 529
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v31

    const/16 v32, 0x0

    .line 528
    invoke-virtual/range {v29 .. v32}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v28

    .line 531
    const v29, 0x7f090010

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .end local v24    # "tempimg":Landroid/widget/ImageView;
    check-cast v24, Landroid/widget/ImageView;

    .line 532
    .restart local v24    # "tempimg":Landroid/widget/ImageView;
    const v29, 0x7f090011

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25    # "temptxt":Landroid/widget/TextView;
    check-cast v25, Landroid/widget/TextView;

    .line 533
    .restart local v25    # "temptxt":Landroid/widget/TextView;
    const v29, 0x7f020006

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 534
    const-string v29, "Favorites"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    const-string v29, "tag2"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v20

    .line 537
    const v29, 0x7f09000f

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 538
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 539
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 541
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v22

    .line 542
    .local v22, "tabWidget":Landroid/widget/TabWidget;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-lt v8, v0, :cond_2

    .line 549
    const/16 v29, 0x1

    :try_start_0
    move/from16 v0, v29

    new-array v15, v0, [Ljava/lang/Class;

    const/16 v29, 0x0

    sget-object v30, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v30, v15, v29

    .line 551
    .local v15, "mSetStripEnabledSignature":[Ljava/lang/Class;
    const-class v29, Landroid/widget/TabWidget;

    .line 552
    const-string v30, "setStripEnabled"

    .line 551
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 554
    .local v14, "mSetStripEnabled":Ljava/lang/reflect/Method;
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v4, v0, [Ljava/lang/Object;

    .line 555
    .local v4, "SEArgs":[Ljava/lang/Object;
    const/16 v29, 0x0

    sget-object v30, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v30, v4, v29

    .line 557
    move-object/from16 v0, v22

    invoke-virtual {v14, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v13, v0, [Ljava/lang/Class;

    const/16 v29, 0x0

    sget-object v30, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v30, v13, v29

    .line 561
    .local v13, "mSetRightStripDrawableSignature":[Ljava/lang/Class;
    const-class v29, Landroid/widget/TabWidget;

    .line 562
    const-string v30, "setRightStripDrawable"

    .line 561
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 565
    .local v12, "mSetRightStripDrawable":Ljava/lang/reflect/Method;
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v4, v0, [Ljava/lang/Object;

    .line 566
    const/16 v29, 0x0

    const v30, 0x7f020015

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v4, v29

    .line 568
    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-class v29, Landroid/widget/TabWidget;

    .line 571
    const-string v30, "setLeftStripDrawable"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 574
    .local v11, "mSetLeftStripDrawable":Ljava/lang/reflect/Method;
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v4, v0, [Ljava/lang/Object;

    .line 575
    const/16 v29, 0x0

    const v30, 0x7f020014

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v4, v29

    .line 577
    move-object/from16 v0, v22

    invoke-virtual {v11, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v4    # "SEArgs":[Ljava/lang/Object;
    .end local v8    # "i":I
    .end local v11    # "mSetLeftStripDrawable":Ljava/lang/reflect/Method;
    .end local v12    # "mSetRightStripDrawable":Ljava/lang/reflect/Method;
    .end local v13    # "mSetRightStripDrawableSignature":[Ljava/lang/Class;
    .end local v14    # "mSetStripEnabled":Ljava/lang/reflect/Method;
    .end local v15    # "mSetStripEnabledSignature":[Ljava/lang/Class;
    .end local v22    # "tabWidget":Landroid/widget/TabWidget;
    .end local v24    # "tempimg":Landroid/widget/ImageView;
    .end local v25    # "temptxt":Landroid/widget/TextView;
    .end local v28    # "vi":Landroid/view/View;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/arXiv;->catList:Landroid/widget/ListView;

    move-object/from16 v29, v0

    new-instance v30, Landroid/widget/ArrayAdapter;

    .line 595
    const v31, 0x1090003

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/arXiv;->items:[Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 594
    invoke-virtual/range {v29 .. v30}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/arXiv;->catList:Landroid/widget/ListView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/commonsware/android/arXiv/arXiv;->registerForContextMenu(Landroid/view/View;)V

    .line 598
    const-string v29, "Arx"

    const-string v30, "Opening Database 3"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    new-instance v29, Lcom/commonsware/android/arXiv/arXivDB;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/commonsware/android/arXiv/arXivDB;->getFeeds()Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/commonsware/android/arXiv/arXiv;->favorites:Ljava/util/List;

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 602
    const-string v29, "Arx"

    const-string v30, "Closed Database 3"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v9, "lfavorites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v10, "lunread":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/arXiv;->favorites:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_3
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-nez v30, :cond_4

    .line 623
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/commonsware/android/arXiv/arXiv;->favoritesList:[Ljava/lang/String;

    .line 624
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/commonsware/android/arXiv/arXiv;->unreadList:[Ljava/lang/String;

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/arXiv;->favoritesList:[Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/arXiv;->unreadList:[Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/arXiv;->favList:Landroid/widget/ListView;

    move-object/from16 v29, v0

    new-instance v30, Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter;-><init>(Lcom/commonsware/android/arXiv/arXiv;)V

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/arXiv;->favList:Landroid/widget/ListView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/commonsware/android/arXiv/arXiv;->registerForContextMenu(Landroid/view/View;)V

    .line 635
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/commonsware/android/arXiv/arXiv;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 636
    .local v16, "myInIntent":Landroid/content/Intent;
    const-string v29, "keywidget"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 638
    .local v17, "mytype":Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 639
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/commonsware/android/arXiv/arXiv;->vFromWidget:Ljava/lang/Boolean;

    .line 640
    const-string v29, "tag2"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 646
    .end local v16    # "myInIntent":Landroid/content/Intent;
    .end local v17    # "mytype":Ljava/lang/String;
    :cond_0
    :goto_4
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 647
    .local v18, "prefs":Landroid/content/SharedPreferences;
    const-string v29, "sourcelist"

    const-string v30, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/commonsware/android/arXiv/arXiv;->mySourcePref:I

    .line 649
    return-void

    .line 493
    .end local v6    # "face":Landroid/graphics/Typeface;
    .end local v9    # "lfavorites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "lunread":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "prefs":Landroid/content/SharedPreferences;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "spec":Landroid/widget/TabHost$TabSpec;
    .end local v23    # "tabs":Landroid/widget/TabHost;
    :cond_1
    const v29, 0x7f030010

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/commonsware/android/arXiv/arXiv;->setContentView(I)V

    goto/16 :goto_0

    .line 544
    .restart local v6    # "face":Landroid/graphics/Typeface;
    .restart local v8    # "i":I
    .restart local v19    # "res":Landroid/content/res/Resources;
    .restart local v20    # "spec":Landroid/widget/TabHost$TabSpec;
    .restart local v22    # "tabWidget":Landroid/widget/TabWidget;
    .restart local v23    # "tabs":Landroid/widget/TabHost;
    .restart local v24    # "tempimg":Landroid/widget/ImageView;
    .restart local v25    # "temptxt":Landroid/widget/TextView;
    .restart local v28    # "vi":Landroid/view/View;
    :cond_2
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 543
    check-cast v21, Landroid/widget/RelativeLayout;

    .line 546
    .local v21, "tabLayout":Landroid/widget/RelativeLayout;
    const v29, 0x7f02000c

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 545
    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 542
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 579
    .end local v21    # "tabLayout":Landroid/widget/RelativeLayout;
    :catch_0
    move-exception v5

    .line 580
    .local v5, "ef":Ljava/lang/Exception;
    const-string v29, "arXiv - "

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Strip fail: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 584
    .end local v5    # "ef":Ljava/lang/Exception;
    .end local v8    # "i":I
    .end local v20    # "spec":Landroid/widget/TabHost$TabSpec;
    .end local v22    # "tabWidget":Landroid/widget/TabWidget;
    .end local v24    # "tempimg":Landroid/widget/ImageView;
    .end local v25    # "temptxt":Landroid/widget/TextView;
    .end local v28    # "vi":Landroid/view/View;
    :cond_3
    const-string v29, "tag1"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v20

    .line 585
    .restart local v20    # "spec":Landroid/widget/TabHost$TabSpec;
    const v29, 0x7f09000e

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 586
    const-string v29, "Categories"

    const v30, 0x7f020005

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 587
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 588
    const-string v29, "tag2"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v20

    .line 589
    const v29, 0x7f09000f

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 590
    const-string v29, "Favorites"

    const v30, 0x7f020006

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 591
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_2

    .line 606
    .restart local v9    # "lfavorites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "lunread":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/commonsware/android/arXiv/Feed;

    .line 607
    .local v7, "feed":Lcom/commonsware/android/arXiv/Feed;
    const-string v26, ""

    .line 608
    .local v26, "unreadString":Ljava/lang/String;
    iget v0, v7, Lcom/commonsware/android/arXiv/Feed;->unread:I

    move/from16 v30, v0

    const/16 v31, 0x63

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_5

    .line 609
    const-string v26, "99+"

    .line 619
    :goto_5
    iget-object v0, v7, Lcom/commonsware/android/arXiv/Feed;->title:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    move-object/from16 v0, v26

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 610
    :cond_5
    iget v0, v7, Lcom/commonsware/android/arXiv/Feed;->unread:I

    move/from16 v30, v0

    const/16 v31, -0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 611
    const-string v26, "-"

    .line 612
    goto :goto_5

    :cond_6
    iget v0, v7, Lcom/commonsware/android/arXiv/Feed;->unread:I

    move/from16 v30, v0

    if-gtz v30, :cond_7

    .line 613
    const-string v26, "0"

    .line 614
    goto :goto_5

    :cond_7
    iget v0, v7, Lcom/commonsware/android/arXiv/Feed;->unread:I

    move/from16 v30, v0

    const/16 v31, 0xa

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    .line 615
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v7, Lcom/commonsware/android/arXiv/Feed;->unread:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 616
    goto :goto_5

    .line 617
    :cond_8
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v7, Lcom/commonsware/android/arXiv/Feed;->unread:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto :goto_5

    .line 642
    .end local v7    # "feed":Lcom/commonsware/android/arXiv/Feed;
    .end local v26    # "unreadString":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 643
    .restart local v5    # "ef":Ljava/lang/Exception;
    const-string v29, "arxiv"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Failed to change tab "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/16 v3, 0x3e8

    const/4 v2, 0x0

    .line 658
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09000f

    if-ne v0, v1, :cond_0

    .line 659
    const v0, 0x7f070011

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 660
    iput v2, p0, Lcom/commonsware/android/arXiv/arXiv;->vFlag:I

    .line 665
    :goto_0
    return-void

    .line 662
    :cond_0
    const v0, 0x7f070003

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 663
    const/4 v0, 0x1

    iput v0, p0, Lcom/commonsware/android/arXiv/arXiv;->vFlag:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/commonsware/android/arXiv/arXiv;->populateMenu(Landroid/view/Menu;)V

    .line 670
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 675
    .local p1, "a":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v6

    const v7, 0x7f09000f

    if-ne v6, v7, :cond_3

    .line 677
    const-string v3, ""

    .line 678
    .local v3, "tempname":Ljava/lang/String;
    const-string v5, ""

    .line 679
    .local v5, "tempurl":Ljava/lang/String;
    const-string v4, ""

    .line 681
    .local v4, "tempquery":Ljava/lang/String;
    const-string v6, "Arx"

    const-string v7, "Opening Database 4"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v6, Lcom/commonsware/android/arXiv/arXivDB;

    invoke-direct {v6, p0}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 683
    iget-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v6}, Lcom/commonsware/android/arXiv/arXivDB;->getFeeds()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->favorites:Ljava/util/List;

    .line 684
    iget-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v6}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 685
    const-string v6, "Arx"

    const-string v7, "Closed Database 4"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v1, 0x0

    .line 688
    .local v1, "icount":I
    iget-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->favorites:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 698
    const-string v6, "query"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 699
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 700
    .local v2, "myIntent":Landroid/content/Intent;
    const-string v6, "keyquery"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    const-string v6, "keyname"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    const-string v6, "keyurl"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    invoke-virtual {p0, v2}, Lcom/commonsware/android/arXiv/arXiv;->startActivity(Landroid/content/Intent;)V

    .line 783
    .end local v1    # "icount":I
    .end local v3    # "tempname":Ljava/lang/String;
    .end local v4    # "tempquery":Ljava/lang/String;
    .end local v5    # "tempurl":Ljava/lang/String;
    :goto_1
    return-void

    .line 688
    .end local v2    # "myIntent":Landroid/content/Intent;
    .restart local v1    # "icount":I
    .restart local v3    # "tempname":Ljava/lang/String;
    .restart local v4    # "tempquery":Ljava/lang/String;
    .restart local v5    # "tempurl":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/commonsware/android/arXiv/Feed;

    .line 689
    .local v0, "feed":Lcom/commonsware/android/arXiv/Feed;
    if-ne v1, p3, :cond_1

    .line 690
    iget-object v4, v0, Lcom/commonsware/android/arXiv/Feed;->title:Ljava/lang/String;

    .line 691
    iget-object v3, v0, Lcom/commonsware/android/arXiv/Feed;->shortTitle:Ljava/lang/String;

    .line 692
    iget-object v5, v0, Lcom/commonsware/android/arXiv/Feed;->url:Ljava/lang/String;

    .line 694
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 705
    .end local v0    # "feed":Lcom/commonsware/android/arXiv/Feed;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/commonsware/android/arXiv/RSSListWindow;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 706
    .restart local v2    # "myIntent":Landroid/content/Intent;
    const-string v6, "keyname"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    const-string v6, "keyurl"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    invoke-virtual {p0, v2}, Lcom/commonsware/android/arXiv/arXiv;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 712
    .end local v1    # "icount":I
    .end local v2    # "myIntent":Landroid/content/Intent;
    .end local v3    # "tempname":Ljava/lang/String;
    .end local v4    # "tempquery":Ljava/lang/String;
    .end local v5    # "tempurl":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->itemsFlag:[I

    aget v6, v6, p3

    if-nez v6, :cond_5

    .line 713
    iget v6, p0, Lcom/commonsware/android/arXiv/arXiv;->mySourcePref:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 714
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/commonsware/android/arXiv/RSSListWindow;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 715
    .restart local v2    # "myIntent":Landroid/content/Intent;
    const-string v6, "keyname"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->shortItems:[Ljava/lang/String;

    aget-object v7, v7, p3

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    const-string v6, "keyurl"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->urls:[Ljava/lang/String;

    aget-object v7, v7, p3

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    invoke-virtual {p0, v2}, Lcom/commonsware/android/arXiv/arXiv;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 719
    .end local v2    # "myIntent":Landroid/content/Intent;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 720
    .restart local v2    # "myIntent":Landroid/content/Intent;
    const-string v6, "keyname"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->shortItems:[Ljava/lang/String;

    aget-object v7, v7, p3

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "search_query=cat:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->urls:[Ljava/lang/String;

    aget-object v7, v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 722
    .restart local v4    # "tempquery":Ljava/lang/String;
    const-string v6, "keyquery"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://export.arxiv.org/api/query?"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 725
    const-string v7, "&sortBy=submittedDate&sortOrder=ascending"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 723
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 726
    .restart local v5    # "tempurl":Ljava/lang/String;
    const-string v6, "keyurl"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    invoke-virtual {p0, v2}, Lcom/commonsware/android/arXiv/arXiv;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 730
    .end local v2    # "myIntent":Landroid/content/Intent;
    .end local v4    # "tempquery":Ljava/lang/String;
    .end local v5    # "tempurl":Ljava/lang/String;
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/commonsware/android/arXiv/SubarXiv;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 731
    .restart local v2    # "myIntent":Landroid/content/Intent;
    const-string v6, "keyname"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->shortItems:[Ljava/lang/String;

    aget-object v7, v7, p3

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    iget-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->itemsFlag:[I

    aget v6, v6, p3

    packed-switch v6, :pswitch_data_0

    .line 780
    :goto_2
    invoke-virtual {p0, v2}, Lcom/commonsware/android/arXiv/arXiv;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 735
    :pswitch_0
    const-string v6, "keyitems"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->asItems:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    const-string v6, "keyurls"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->asURLs:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    const-string v6, "keyshortitems"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->asShortItems:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 740
    :pswitch_1
    const-string v6, "keyitems"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->cmItems:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    const-string v6, "keyurls"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->cmURLs:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    const-string v6, "keyshortitems"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->cmShortItems:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 745
    :pswitch_2
    const-string v6, "keyitems"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->csItems:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    const-string v6, "keyurls"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->csURLs:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    const-string v6, "keyshortitems"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->csShortItems:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 750
    :pswitch_3
    const-string v6, "keyitems"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->mtItems:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    const-string v6, "keyurls"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->mtURLs:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    const-string v6, "keyshortitems"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->mtShortItems:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 755
    :pswitch_4
    const-string v6, "keyitems"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->mpItems:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    const-string v6, "keyurls"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->mpURLs:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    const-string v6, "keyshortitems"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->mpShortItems:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 760
    :pswitch_5
    const-string v6, "keyitems"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->nlItems:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    const-string v6, "keyurls"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->nlURLs:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    const-string v6, "keyshortitems"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->nlShortItems:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 765
    :pswitch_6
    const-string v6, "keyitems"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->qbItems:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 766
    const-string v6, "keyurls"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->qbURLs:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    const-string v6, "keyshortitems"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->qbShortItems:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 770
    :pswitch_7
    const-string v6, "keyitems"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->qfItems:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    const-string v6, "keyurls"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->qfURLs:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    const-string v6, "keyshortitems"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->qfShortItems:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 775
    :pswitch_8
    const-string v6, "keyitems"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->stItems:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    const-string v6, "keyurls"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->stURLs:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    const-string v6, "keyshortitems"

    iget-object v7, p0, Lcom/commonsware/android/arXiv/arXiv;->stShortItems:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 787
    invoke-direct {p0, p1}, Lcom/commonsware/android/arXiv/arXiv;->applyMenuChoice(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 9

    .prologue
    .line 792
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 794
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 795
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "sourcelist"

    const-string v7, "0"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/commonsware/android/arXiv/arXiv;->mySourcePref:I

    .line 797
    const-string v6, "Arx"

    const-string v7, "Opening Database 5"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    new-instance v6, Lcom/commonsware/android/arXiv/arXivDB;

    invoke-direct {v6, p0}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 799
    iget-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v6}, Lcom/commonsware/android/arXiv/arXivDB;->getFeeds()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->favorites:Ljava/util/List;

    .line 800
    iget-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v6}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 801
    const-string v6, "Arx"

    const-string v7, "Closed Database 5"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->vFromWidget:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    .line 805
    new-instance v4, Lcom/commonsware/android/arXiv/arXiv$5;

    invoke-direct {v4, p0}, Lcom/commonsware/android/arXiv/arXiv$5;-><init>(Lcom/commonsware/android/arXiv/arXiv;)V

    .line 810
    .local v4, "t10":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 813
    .end local v4    # "t10":Ljava/lang/Thread;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v1, "lfavorites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 815
    .local v2, "lunread":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->favorites:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 832
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->favoritesList:[Ljava/lang/String;

    .line 833
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->unreadList:[Ljava/lang/String;

    .line 835
    iget-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->favoritesList:[Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 836
    iget-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->unreadList:[Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 840
    iget-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->favList:Landroid/widget/ListView;

    new-instance v7, Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter;

    invoke-direct {v7, p0}, Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter;-><init>(Lcom/commonsware/android/arXiv/arXiv;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 841
    iget-object v6, p0, Lcom/commonsware/android/arXiv/arXiv;->favList:Landroid/widget/ListView;

    invoke-virtual {p0, v6}, Lcom/commonsware/android/arXiv/arXiv;->registerForContextMenu(Landroid/view/View;)V

    .line 843
    return-void

    .line 815
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/commonsware/android/arXiv/Feed;

    .line 816
    .local v0, "feed":Lcom/commonsware/android/arXiv/Feed;
    const-string v5, ""

    .line 817
    .local v5, "unreadString":Ljava/lang/String;
    iget v7, v0, Lcom/commonsware/android/arXiv/Feed;->unread:I

    const/16 v8, 0x63

    if-le v7, v8, :cond_2

    .line 818
    const-string v5, "99+"

    .line 828
    :goto_1
    iget-object v7, v0, Lcom/commonsware/android/arXiv/Feed;->title:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 819
    :cond_2
    iget v7, v0, Lcom/commonsware/android/arXiv/Feed;->unread:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_3

    .line 820
    const-string v5, "-"

    .line 821
    goto :goto_1

    :cond_3
    iget v7, v0, Lcom/commonsware/android/arXiv/Feed;->unread:I

    if-gtz v7, :cond_4

    .line 822
    const-string v5, "0"

    .line 823
    goto :goto_1

    :cond_4
    iget v7, v0, Lcom/commonsware/android/arXiv/Feed;->unread:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_5

    .line 824
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v0, Lcom/commonsware/android/arXiv/Feed;->unread:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 825
    goto :goto_1

    .line 826
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v0, Lcom/commonsware/android/arXiv/Feed;->unread:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public searchPressed(Landroid/view/View;)V
    .locals 2
    .param p1, "buttoncover"    # Landroid/view/View;

    .prologue
    .line 854
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/commonsware/android/arXiv/SearchWindow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 855
    .local v0, "myIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/commonsware/android/arXiv/arXiv;->startActivity(Landroid/content/Intent;)V

    .line 856
    return-void
.end method

.method public updateFavList()V
    .locals 7

    .prologue
    .line 860
    const-string v4, "Arx"

    const-string v5, "Opening Database 6"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    new-instance v4, Lcom/commonsware/android/arXiv/arXivDB;

    invoke-direct {v4, p0}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 862
    iget-object v4, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v4}, Lcom/commonsware/android/arXiv/arXivDB;->getFeeds()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/commonsware/android/arXiv/arXiv;->favorites:Ljava/util/List;

    .line 863
    iget-object v4, p0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v4}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 864
    const-string v4, "Arx"

    const-string v5, "Closed Database 6"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 867
    .local v1, "lfavorites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 868
    .local v2, "lunread":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/commonsware/android/arXiv/arXiv;->favorites:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 885
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/commonsware/android/arXiv/arXiv;->favoritesList:[Ljava/lang/String;

    .line 886
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/commonsware/android/arXiv/arXiv;->unreadList:[Ljava/lang/String;

    .line 888
    iget-object v4, p0, Lcom/commonsware/android/arXiv/arXiv;->favoritesList:[Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 889
    iget-object v4, p0, Lcom/commonsware/android/arXiv/arXiv;->unreadList:[Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 893
    iget-object v4, p0, Lcom/commonsware/android/arXiv/arXiv;->favList:Landroid/widget/ListView;

    new-instance v5, Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter;

    invoke-direct {v5, p0}, Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter;-><init>(Lcom/commonsware/android/arXiv/arXiv;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 894
    iget-object v4, p0, Lcom/commonsware/android/arXiv/arXiv;->favList:Landroid/widget/ListView;

    invoke-virtual {p0, v4}, Lcom/commonsware/android/arXiv/arXiv;->registerForContextMenu(Landroid/view/View;)V

    .line 896
    return-void

    .line 868
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/commonsware/android/arXiv/Feed;

    .line 869
    .local v0, "feed":Lcom/commonsware/android/arXiv/Feed;
    const-string v3, ""

    .line 870
    .local v3, "unreadString":Ljava/lang/String;
    iget v5, v0, Lcom/commonsware/android/arXiv/Feed;->unread:I

    const/16 v6, 0x63

    if-le v5, v6, :cond_1

    .line 871
    const-string v3, "99+"

    .line 881
    :goto_1
    iget-object v5, v0, Lcom/commonsware/android/arXiv/Feed;->title:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 872
    :cond_1
    iget v5, v0, Lcom/commonsware/android/arXiv/Feed;->unread:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_2

    .line 873
    const-string v3, "-"

    .line 874
    goto :goto_1

    :cond_2
    iget v5, v0, Lcom/commonsware/android/arXiv/Feed;->unread:I

    if-gtz v5, :cond_3

    .line 875
    const-string v3, "0"

    .line 876
    goto :goto_1

    :cond_3
    iget v5, v0, Lcom/commonsware/android/arXiv/Feed;->unread:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_4

    .line 877
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lcom/commonsware/android/arXiv/Feed;->unread:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 878
    goto :goto_1

    .line 879
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lcom/commonsware/android/arXiv/Feed;->unread:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public updateWidget()V
    .locals 30

    .prologue
    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/commonsware/android/arXiv/arXiv;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 901
    .local v9, "context":Landroid/content/Context;
    new-instance v27, Landroid/widget/RemoteViews;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x7f030000

    move-object/from16 v0, v27

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 903
    .local v27, "views":Landroid/widget/RemoteViews;
    new-instance v14, Landroid/content/Intent;

    const-class v3, Lcom/commonsware/android/arXiv/arXiv;

    invoke-direct {v14, v9, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 904
    .local v14, "intent":Landroid/content/Intent;
    const-string v23, "widget"

    .line 905
    .local v23, "typestring":Ljava/lang/String;
    const-string v3, "keywidget"

    move-object/from16 v0, v23

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 906
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "foobar://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 907
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v9, v3, v14, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    .line 909
    .local v18, "pendingIntent":Landroid/app/PendingIntent;
    const v3, 0x7f090002

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 911
    const-string v3, "Arx"

    const-string v4, "Opening Database 7"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    new-instance v3, Lcom/commonsware/android/arXiv/arXivDB;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/arXiv;->thisActivity:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v3}, Lcom/commonsware/android/arXiv/arXivDB;->getFeeds()Ljava/util/List;

    move-result-object v12

    .line 914
    .local v12, "favorites":Ljava/util/List;, "Ljava/util/List<Lcom/commonsware/android/arXiv/Feed;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/arXiv;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v3}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 915
    const-string v3, "Arx"

    const-string v4, "Closed Database 7"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-string v11, ""

    .line 919
    .local v11, "favText":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 920
    const/16 v26, 0x0

    .line 922
    .local v26, "vUnreadChanged":Z
    :try_start_0
    const-class v3, Landroid/widget/RemoteViews;

    const-string v4, "removeAllViews"

    .line 923
    sget-object v5, Lcom/commonsware/android/arXiv/arXiv;->mRemoveAllViewsSignature:[Ljava/lang/Class;

    .line 922
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/commonsware/android/arXiv/arXiv;->mRemoveAllViews:Ljava/lang/reflect/Method;

    .line 924
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/arXiv;->mRemoveAllViewsArgs:[Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f090002

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 925
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/arXiv;->mRemoveAllViews:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/arXiv;->mRemoveAllViewsArgs:[Ljava/lang/Object;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 931
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_1
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 988
    if-eqz v26, :cond_0

    .line 989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/arXiv;->handlerSetList:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 994
    .end local v26    # "vUnreadChanged":Z
    :cond_0
    return-void

    .line 931
    .restart local v26    # "vUnreadChanged":Z
    :cond_1
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/commonsware/android/arXiv/Feed;

    .line 933
    .local v13, "feed":Lcom/commonsware/android/arXiv/Feed;
    iget-object v3, v13, Lcom/commonsware/android/arXiv/Feed;->url:Ljava/lang/String;

    const-string v4, "query"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 935
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://export.arxiv.org/api/query?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v13, Lcom/commonsware/android/arXiv/Feed;->shortTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 936
    const-string v4, "&sortBy=lastUpdatedDate&sortOrder=descending&start=0&max_results=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 935
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 938
    .local v25, "urlAddressTemp":Ljava/lang/String;
    const/16 v17, 0x0

    .line 940
    .local v17, "numberOfTotalResults":I
    :try_start_1
    new-instance v24, Ljava/net/URL;

    invoke-direct/range {v24 .. v25}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 941
    .local v24, "url":Ljava/net/URL;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v20

    .line 942
    .local v20, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual/range {v20 .. v20}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v19

    .line 943
    .local v19, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual/range {v19 .. v19}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v28

    .line 944
    .local v28, "xr":Lorg/xml/sax/XMLReader;
    new-instance v16, Lcom/commonsware/android/arXiv/XMLHandlerSearch;

    invoke-direct/range {v16 .. v16}, Lcom/commonsware/android/arXiv/XMLHandlerSearch;-><init>()V

    .line 945
    .local v16, "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerSearch;
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 946
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 947
    move-object/from16 v0, v16

    iget v0, v0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->numTotalItems:I

    move/from16 v17, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 951
    .end local v16    # "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerSearch;
    .end local v19    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v20    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v24    # "url":Ljava/net/URL;
    .end local v28    # "xr":Lorg/xml/sax/XMLReader;
    :goto_2
    new-instance v21, Landroid/widget/RemoteViews;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030001

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 952
    .local v21, "tempViews":Landroid/widget/RemoteViews;
    iget-object v11, v13, Lcom/commonsware/android/arXiv/Feed;->title:Ljava/lang/String;

    .line 953
    iget v3, v13, Lcom/commonsware/android/arXiv/Feed;->count:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_5

    .line 954
    iget v3, v13, Lcom/commonsware/android/arXiv/Feed;->count:I

    sub-int v8, v17, v3

    .line 955
    .local v8, "newArticles":I
    if-ltz v8, :cond_4

    .line 956
    const v3, 0x7f090003

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 960
    :goto_3
    iget v3, v13, Lcom/commonsware/android/arXiv/Feed;->unread:I

    if-eq v8, v3, :cond_2

    .line 961
    const/16 v26, 0x1

    .line 962
    new-instance v2, Lcom/commonsware/android/arXiv/arXivDB;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/arXiv;->thisActivity:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    .line 963
    .local v2, "dDB":Lcom/commonsware/android/arXiv/arXivDB;
    iget-wide v3, v13, Lcom/commonsware/android/arXiv/Feed;->feedId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v13, Lcom/commonsware/android/arXiv/Feed;->title:Ljava/lang/String;

    iget-object v5, v13, Lcom/commonsware/android/arXiv/Feed;->shortTitle:Ljava/lang/String;

    iget-object v6, v13, Lcom/commonsware/android/arXiv/Feed;->url:Ljava/lang/String;

    iget v7, v13, Lcom/commonsware/android/arXiv/Feed;->count:I

    invoke-virtual/range {v2 .. v8}, Lcom/commonsware/android/arXiv/arXivDB;->updateFeed(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    .line 964
    invoke-virtual {v2}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 969
    .end local v2    # "dDB":Lcom/commonsware/android/arXiv/arXivDB;
    .end local v8    # "newArticles":I
    :cond_2
    :goto_4
    const v3, 0x7f090004

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 972
    :try_start_2
    const-class v3, Landroid/widget/RemoteViews;

    const-string v4, "addView"

    .line 973
    sget-object v5, Lcom/commonsware/android/arXiv/arXiv;->mAddViewSignature:[Ljava/lang/Class;

    .line 972
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/commonsware/android/arXiv/arXiv;->mAddView:Ljava/lang/reflect/Method;

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/arXiv;->mAddViewArgs:[Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f090002

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/arXiv;->mAddViewArgs:[Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v21, v3, v4

    .line 976
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/arXiv;->mAddView:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/arXiv;->mAddViewArgs:[Ljava/lang/Object;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 982
    .end local v17    # "numberOfTotalResults":I
    .end local v21    # "tempViews":Landroid/widget/RemoteViews;
    .end local v25    # "urlAddressTemp":Ljava/lang/String;
    :cond_3
    :goto_5
    new-instance v22, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/arXiv;->thisActivity:Landroid/content/Context;

    const-class v4, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 983
    .local v22, "thisWidget":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/arXiv;->thisActivity:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v15

    .line 984
    .local v15, "manager":Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto/16 :goto_1

    .line 958
    .end local v15    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v22    # "thisWidget":Landroid/content/ComponentName;
    .restart local v8    # "newArticles":I
    .restart local v17    # "numberOfTotalResults":I
    .restart local v21    # "tempViews":Landroid/widget/RemoteViews;
    .restart local v25    # "urlAddressTemp":Ljava/lang/String;
    :cond_4
    const v3, 0x7f090003

    const-string v4, "0"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 967
    .end local v8    # "newArticles":I
    :cond_5
    const v3, 0x7f090003

    const-string v4, "0"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_4

    .line 978
    :catch_0
    move-exception v10

    .line 979
    .local v10, "ef":Ljava/lang/Exception;
    const v3, 0x7f090001

    const-string v4, "Widget only supported on Android 2.1+"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_5

    .line 948
    .end local v10    # "ef":Ljava/lang/Exception;
    .end local v21    # "tempViews":Landroid/widget/RemoteViews;
    :catch_1
    move-exception v3

    goto/16 :goto_2

    .line 929
    .end local v13    # "feed":Lcom/commonsware/android/arXiv/Feed;
    .end local v17    # "numberOfTotalResults":I
    .end local v25    # "urlAddressTemp":Ljava/lang/String;
    :catch_2
    move-exception v3

    goto/16 :goto_0
.end method
